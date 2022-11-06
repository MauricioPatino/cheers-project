import 'package:cheers/pages/contacts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cheers/isar_service.dart';

import '../entities/beers.dart';
import '../main.dart';


class Cart extends ConsumerWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(valueStateProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
               Image.asset(
                  'assets/modelo.png',
                  width: 42,
                  height: 90,
                  fit: BoxFit.fill,
                ),
               //const Text('Jason'),
               Column(
                 children: [
                   RichText(text: const TextSpan(text: "Modelo", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)), textScaleFactor: 2,),
                   const SizedBox(height: 10,),
                   RichText(text: const TextSpan(text: "\$7.99", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)), textScaleFactor: 2,),
                 ],
               ),
               ],
            ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Jason"),
              IconButton(onPressed: () {ref.read(valueStateProvider.notifier).state--;}, icon: const Icon(Icons.remove)),
              Text('$value'),
              IconButton(onPressed: () {ref.read(valueStateProvider.notifier).state++;}, icon: const Icon(Icons.add)),
            ],
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: ElevatedButton(onPressed: (){
                  // var submittedData = ['Modelo'];
                  // IsarService.addBeer(Beers(''));
              }
              , child: const Text('Add to Order')),
            ),
          ),
          //Divider(),
        ],
      ),
    );
  }
}
