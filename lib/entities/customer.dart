import 'package:isar/isar.dart';
// import 'package:cheers/entities/customers.dart';

part 'customer.g.dart';

@collection
class Customer {
  Id id = Isar.autoIncrement;
  String? customer;

// @Backlink(to: "beers")
// final customer = IsarLink<Customer>();

}