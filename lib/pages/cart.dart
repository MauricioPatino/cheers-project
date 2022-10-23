import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(width: 1,),
                ),
                child: Image.asset(
                  'assets/modelo.png',
                  width: 42,
                  height: 90,
                  fit: BoxFit.fill,
                ),
              ),
               //const Text('Jason'),
               IconButton(onPressed: () {ref.read(valueStateProvider.notifier).state--;}, icon: const Icon(Icons.remove)),
               Text('$value'),
               IconButton(onPressed: () {ref.read(valueStateProvider.notifier).state++;}, icon: const Icon(Icons.add)),
               ],
            ),
        ],
      ),
    );
  }
}
