import 'package:cheers/customer_modal.dart';
import 'package:cheers/pages/cart.dart';
import 'package:cheers/pages/checkout.dart';
import 'package:cheers/pages/contacts.dart';
import 'package:cheers/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:cheers/entities/beers.dart';
import 'package:cheers/beer_detail_page.dart';
import 'package:cheers/isar_service.dart';
import 'package:cheers/beer_modal.dart';

// Future<void> main() async{

main() async{
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Beer Database',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home:  MyHomePage(),
    );
  }
}

final valueStateProvider = StateProvider<int>((ref) => 0);

class MyHomePage extends ConsumerWidget {
   MyHomePage({Key? key}) : super(key: key);
  final isarService = IsarService();

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final value = ref.watch(valueStateProvider);


    return Scaffold(
      appBar: AppBar(title: const Text('Select your beer'), backgroundColor: Colors.orangeAccent, actions:  [
        IconButton(
          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Contacts()));},
          icon: const Icon(Icons.person_add_alt_1),
        )
      ]),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Cart()));
                    },
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/modelo.png',
                          width: 42,
                          height: 90,
                          fit: BoxFit.fill,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            CustomText(text: "Modelo", size: 15, color: Colors.black, weight: FontWeight.bold),
                            CustomText(text: "\$7.99", size: 15, color: Colors.black, weight: FontWeight.bold),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Cart()));
                    },
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/corona.png',
                          width: 42,
                          height: 90,
                          fit: BoxFit.fill,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            CustomText(text: "Corona", size: 15, color: Colors.black, weight: FontWeight.bold),
                            CustomText(text: "\$8.99", size: 15, color: Colors.black, weight: FontWeight.bold),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // Column(
                  //   children: [
                  //     IconButton(
                  //       icon: Image.asset('assets/corona.png'),
                  //       iconSize: 105,
                  //       onPressed: () {},
                  //     ),
                  //     Row(
                  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //       children: const [
                  //         CustomText(text: "Corona", size: 15, color: Colors.black, weight: FontWeight.bold),
                  //         CustomText(text: "\$7.99", size: 15, color: Colors.black, weight: FontWeight.bold),
                  //       ],
                  //     ),
                  //
                  //   ],
                  // ),
                  // Column(
                  //   children: [
                  //     IconButton(
                  //       icon: Image.asset('assets/heineken.png'),
                  //       iconSize: 105,
                  //       onPressed: () {},
                  //     ),
                  //     Row(
                  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //       children: const [
                  //         CustomText(text: "Heineken", size: 15, color: Colors.black, weight: FontWeight.bold),
                  //         CustomText(text: "\$8.99", size: 15, color: Colors.black, weight: FontWeight.bold),
                  //       ],
                  //     ),
                  //
                  //   ],
                  // ),
                  // Column(
                  //   children: [
                  //     IconButton(
                  //       icon: Image.asset('assets/ipaspencer.png'),
                  //       iconSize: 105,
                  //       onPressed: () {},
                  //     ),
                  //     Row(
                  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //       children: const [
                  //         CustomText(text: "IPA Spencer", size: 15, color: Colors.black, weight: FontWeight.bold),
                  //         CustomText(text: "\$5.99", size: 15, color: Colors.black, weight: FontWeight.bold),
                  //       ],
                  //     ),
                  //
                  //   ],
                  // ),
                  // Column(
                  //   children: [
                  //     IconButton(
                  //       icon: Image.asset('assets/miller.png'),
                  //       iconSize: 105,
                  //       onPressed: () {},
                  //     ),
                  //     Row(
                  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //       children: const [
                  //         CustomText(text: "Miller Light", size: 15, color: Colors.black, weight: FontWeight.bold),
                  //         CustomText(text: "\$7.99", size: 15, color: Colors.black, weight: FontWeight.bold),
                  //       ],
                  //     ),
                  //
                  //   ],
                  // ),
                  // Column(
                  //   children: [
                  //     IconButton(
                  //       icon: Image.asset('assets/budlight.png'),
                  //       iconSize: 105,
                  //       onPressed: () {},
                  //     ),
                  //     Row(
                  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //       children: const [
                  //         CustomText(text: "Budlight", size: 15, color: Colors.black, weight: FontWeight.bold),
                  //         CustomText(text: "\$8.99", size: 15, color: Colors.black, weight: FontWeight.bold),
                  //       ],
                  //     ),
                  //
                  //   ],
                  // ),
                ],
              ),
            ),
          ),
          // Expanded(
          //   child: Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: StreamBuilder<List<Beers>>(
          //       stream: service.listenToBeers(),
          //       builder: (context, snapshot) => GridView.count(
          //         crossAxisCount: 2,
          //         crossAxisSpacing: 8,
          //         mainAxisSpacing: 8,
          //         scrollDirection: Axis.horizontal,
          //         children: snapshot.hasData
          //             ? snapshot.data!.map((beer) {
          //           return ElevatedButton(
          //             onPressed: () {
          //               beerDetailPage.navigate(context, beer, service);
          //             },
          //             child: Text(beer.drink),
          //           );
          //         }).toList()
          //             : [],
          //       ),
          //     ),
          //   ),
          // ),
          ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: ElevatedButton(
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Checkout()));
                // showModalBottomSheet(
                //     context: context,
                //     builder: (context) {
                //       return BeerModal(service);
                //     });
              },
              child:  Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:  const [
                      Icon(
                        Icons.shopping_cart,
                        size: 25,
                      ),
                       CustomText(text: "Checkout", size: 15, color: Colors.black, weight: FontWeight.bold),
                       CustomText(text: "\$8.99", size: 15, color: Colors.black, weight: FontWeight.bold),
                    ],
                  ),

                ],
              ),
            ),
          ),
          // ElevatedButton(
          //   onPressed: () {
          //     showModalBottomSheet(
          //         context: context,
          //         builder: (context) {
          //           return BeerModal(service);
          //         });
          //   },
          //   child: const Text("Contacts"),
          // ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
// showDialog(
//   context: context,
//     builder:(context) => AlertDialog(
//       title: const Text('Beer Cart'),
//       content: StatefulBuilder(
//         builder: (BuildContext context, StateSetter setState){
//           return Row(
//             children: [
//               const Text('Jason'),
//               //ElevatedButton(onPressed: () {ref.read(valueStateProvider.notifier).state--;}, child: const Icon(Icons.remove, size: 10,)),
//               IconButton(onPressed: () {ref.read(valueStateProvider.notifier).state--;}, icon: Icon(Icons.remove)),
//               Text('$value'),
//               IconButton(onPressed: () {ref.read(valueStateProvider.notifier).state++;}, icon: Icon(Icons.add)),
//             ],
//           );
//         },
//       ),
//           actions: [
//             TextButton(
//               child: const Text('Cancel'),
//               onPressed: () => Navigator.pop(context),
//             ),
//             TextButton(
//               child: const Text('OK'),
//               onPressed: () => Navigator.pop(context),
//             ),
//           ],
//
//     ),
// );