import 'package:isar/isar.dart';
import 'package:cheers/entities/beers.dart';
import 'package:cheers/entities/customer.dart';

class IsarService {
  late Future<Isar> db;

  IsarService() {
    db = openDB();
  }

  Future <void> addPerson(Customer customer) async{
    final isar = await db;
    isar.writeTxnSync<int>(() => isar.customers.putSync(customer));
  }

  Future<void> addBeer(Beers newBeer) async {
    final isar = await db;
    isar.writeTxnSync<int>(() => isar.beers.putSync(newBeer));
  }
  // Future<void> saveCustomer(Customer newCustomer) async {
  //   final isar = await db;
  //   isar.writeTxnSync<int>(() => isar.customers.putSync(newCustomer));
  // }

  Future<List<Beers>> getAllBeers() async {
    final isar = await db;
    return await isar.beers.where().findAll();
  }

  Stream<List<Beers>> listenToBeers() async* {
    final isar = await db;
    yield* isar.beers.where().watch(fireImmediately: true);
  }

  Future<void> cleanDb() async {
    final isar = await db;
    await isar.writeTxn(() => isar.clear());
  }




  // Future<List<Customer>> getCustomerFor(Beers beers) async {
  //   final isar = await db;
  //   return await isar.customers
  //       .filter()
  //       .beers((q) => q.idEqualTo(beers.id))
  //       .findAll();
  // }

  static Future<Isar> openDB() async {
    if(Isar.instanceNames.isEmpty){
      return await Isar.open([BeersSchema], inspector: true,);
    }
    //final isar = await Isar.open([BeersSchema]);
    return await Future.value(Isar.getInstance());
  }

  // static Future<Isar> openDB() async {
  //
  //   if (Isar.instanceNames.isEmpty) {
  //     return await Isar.open(
  //       [BeersSchema],
  //       inspector: true,
  //     );
  //   }
  //
  //   return Future.value(Isar.getInstance());
  // }
}
