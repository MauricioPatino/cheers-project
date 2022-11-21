
import 'package:cheers/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cheers/widgets/size_configuration.dart';

// Future<void> main() async{

void main() async{
  //final isar = await Isar.open(schemas: [BeersSchema, CustomerSchema]);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {  //This is to get screen mad width and height constraint
        SizeConfiguration().init(constraints);

      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Beer Database',
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        home:  MyHomePage(),
      );
    });
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