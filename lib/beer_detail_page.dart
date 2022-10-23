// import 'package:flutter/material.dart';
// import 'package:cheers/entities/beers.dart';
// import 'package:cheers/isar_service.dart';
//
// import 'package:cheers/entities/customers.dart';
//
// class beerDetailPage extends StatelessWidget {
//   final Beers beer;
//   final IsarService service;
//
//   static void navigate(context, Beers beer, IsarService service) {
//     Navigator.push(context, MaterialPageRoute(builder: (context) {
//       return beerDetailPage(beer: beer, service: service);
//     }));
//   }
//
//   const beerDetailPage(
//       {Key? key, required this.beer, required this.service})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(beer.drink)),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: const [
//             // FutureBuilder<Teacher?>(
//             //   future: service.getTeacherFor(beer),
//             //   builder: (context, snapshot) {
//             //     return Row(children: [
//             //       const Text("Teacher: "),
//             //       Text(snapshot.hasData
//             //           ? snapshot.data!.name
//             //           : "No teacher yet for this beer.")
//             //     ]);
//             //   },
//             // ),
//             // const SizedBox(height: 8),
//             Text("List of Customers:"),
//             // Expanded(
//             //   child: FutureBuilder<List<Customer>>(
//             //     future: service.getCustomerFor(beer),
//             //     builder: (context, snapshot) {
//             //       if (snapshot.hasError) return Text(snapshot.error.toString());
//             //       if (snapshot.hasData) {
//             //         final customers = snapshot.data!;
//             //         if (customers.isEmpty) {
//             //           return const Text("No customers for this particular beer. Guess it's bad!");
//             //         }
//             //
//             //         List<Text> customersWidget = [];
//             //
//             //
//             //         for (int i = 0; i < customers.length; i++) {
//             //           final customer = customers[i];
//             //           customersWidget.add(Text("$i. ${customer.name}"));
//             //         }
//             //
//             //         return Padding(
//             //           padding: const EdgeInsets.all(8.0),
//             //           child: Column(
//             //             crossAxisAlignment: CrossAxisAlignment.start,
//             //             children: [...customersWidget],
//             //           ),
//             //         );
//             //       }
//             //
//             //       return const Center(child: CircularProgressIndicator());
//             //     },
//             //   ),
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }