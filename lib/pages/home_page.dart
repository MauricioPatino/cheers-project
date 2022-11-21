import 'package:cheers/components/cardBody.dart';
import 'package:cheers/components/constants.dart';
import 'package:cheers/customer_modal.dart';
import 'package:cheers/entities/customer.dart';
import 'package:cheers/pages/cart.dart';
import 'package:cheers/pages/checkout.dart';
import 'package:cheers/pages/contacts.dart';
import 'package:cheers/pages/home_page.dart';
import 'package:cheers/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:cheers/entities/beers.dart';
import 'package:cheers/beer_detail_page.dart';
import 'package:cheers/isar_service.dart';
import 'package:cheers/beer_modal.dart';
import 'package:cheers/widgets/size_configuration.dart';

import '../components/mainBody.dart';
import '../components/products.dart';

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
      body: SizedBox(
        width: double.infinity,
        height: SizeConfiguration.screenHeight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             const SizedBox(height: 7,),
             Expanded(
                    child: MainBody(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SizedBox(height: 100,),
                            Products(),
                          ],
                        ),
                      ),
                    ),
                ),
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
          ],
        ),
      ),
    );
  }
}
                            // Expanded(
                            //   child: MainBody(
                            //     child: SingleChildScrollView(
                            //       child: Column(
                            //           crossAxisAlignment: CrossAxisAlignment.start,
                            //           children: const [
                            //             SizedBox(height: 30,),
                            //             Padding(
                            //               padding: EdgeInsets.only(left: 42),
                            //               child: Text(
                            //                 'Best Selling',
                            //                 style: TextStyle(
                            //                   color: kPrimaryColor,
                            //                   fontSize: 16,
                            //                   fontWeight: FontWeight.bold,
                            //                 ),
                            //               ),
                            //             ),
                            //           ]
                            //       ),
                            //     ),
                            //   ),
                            // ),

                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.push(context, MaterialPageRoute(builder: (context) => const Cart()));
                  //   },
                  //   style: ElevatedButton.styleFrom(primary: Colors.white),
                  //   child: Column(
                  //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //     crossAxisAlignment: CrossAxisAlignment.center,
                  //     children: [
                  //       Image.asset(
                  //         'assets/modelo.png',
                  //         width: 42,
                  //         height: 90,
                  //         fit: BoxFit.fill,
                  //       ),
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //         children: const [
                  //           CustomText(text: "Modelo", size: 15, color: Colors.black, weight: FontWeight.bold),
                  //           CustomText(text: "\$7.99", size: 15, color: Colors.black, weight: FontWeight.bold),
                  //         ],
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.push(context, MaterialPageRoute(builder: (context) => const Cart()));
                  //   },
                  //   style: ElevatedButton.styleFrom(primary: Colors.white),
                  //   child: Column(
                  //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //     crossAxisAlignment: CrossAxisAlignment.center,
                  //     children: [
                  //       Image.asset(
                  //         'assets/corona.png',
                  //         width: 42,
                  //         height: 90,
                  //         fit: BoxFit.fill,
                  //       ),
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //         children: const [
                  //           CustomText(text: "Corona", size: 15, color: Colors.black, weight: FontWeight.bold),
                  //           CustomText(text: "\$8.99", size: 15, color: Colors.black, weight: FontWeight.bold),
                  //         ],
                  //       ),
                  //     ],
                  //   ),


                                // ListView.builder(
                                //     scrollDirection: Axis.vertical,
                                //     itemBuilder: (context,index){
                                //   return CardBody(
                                //       child: Column(
                                //         crossAxisAlignment: CrossAxisAlignment.start,
                                //         children: [
                                //           Padding(padding: EdgeInsets.only(left: 16.0),
                                //           child: Text(
                                //             //fill this in
                                //             style: TextStyle(
                                //               fontSize: 14,
                                //               fontWeight: FontWeight.bold,
                                //               color: kTextColor,
                                //             ),
                                //            ),
                                //           ),
                                //         ],
                                //       ),
                                //       onTap: () {},
                                //       index: index,
                                //       width: width,
                                //       height: height
                                //   );
                                // }),
                              //),

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
          //const SizedBox(height: 5),

