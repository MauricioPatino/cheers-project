import 'package:cheers/pages/contacts.dart';
import 'package:cheers/widgets/size_configuration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cheers/isar_service.dart';

import '../components/cartButton.dart';
import '../components/constants.dart';
import '../components/mainBody.dart';
import '../components/productImages.dart';
import '../entities/beers.dart';
import '../main.dart';
import '../models/beerModel.dart';
import 'home_page.dart';


final isarService = Provider((ref) => IsarService());

class Cart extends ConsumerWidget {
  const Cart({Key? key, required this.product}) : super(key: key);

  final BeerModel product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(valueStateProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: Container(
        width: double.infinity,
        height: SizeConfiguration.screenHeight,
        child: Column(
          children: [
            Hero(
              tag: product.id!,
              child: Image.asset(
                product.images[0]!,
                width: SizeConfiguration.getScreenProportionWidth(250),
                height: SizeConfiguration.getScreenProportionHeight(250),
              ),
            ),
            Expanded(
              child: MainBody(
                padding: EdgeInsets.only(
                  left: 50,
                  top: 43,
                  right: 37,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$${product.price}',
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          CartButton(
                            onTap: () {},
                          )
                        ],
                      ),
                      SizedBox(height: 30,),

                      Text(
                        'Photos',
                        style: TextStyle(
                          color: kTextLightColor,
                          fontSize: 22.0,
                        ),
                      ),
                      SizedBox(height: 10,),

                      ProductImages(product: product),

                      SizedBox(height: 10,),

                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

      //   Column(
      //   crossAxisAlignment: CrossAxisAlignment.stretch,
      //   children: [
      //     const SizedBox(height: 25,),
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: [
      //          Image.asset(
      //             'assets/modelo.png',
      //             width: 42,
      //             height: 90,
      //             fit: BoxFit.fill,
      //           ),
      //          //const Text('Jason'),
      //          Column(
      //            children: [
      //              RichText(text: const TextSpan(text: "Modelo", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)), textScaleFactor: 2,),
      //              const SizedBox(height: 10,),
      //              RichText(text: const TextSpan(text: "\$7.99", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)), textScaleFactor: 2,),
      //            ],
      //          ),
      //          ],
      //       ),
      //     SizedBox(height: 20,),
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       children: [
      //         Text("Jason"),
      //         IconButton(onPressed: () {ref.read(valueStateProvider.notifier).state--;}, icon: const Icon(Icons.remove)),
      //         Text('$value'),
      //         IconButton(onPressed: () {ref.read(valueStateProvider.notifier).state++;}, icon: const Icon(Icons.add)),
      //       ],
      //     ),
      //     Expanded(
      //       child: Align(
      //         alignment: FractionalOffset.bottomCenter,
      //         child: ElevatedButton(onPressed: () async{
      //           final service = ref.read(isarService);
      //           service.addBeer(Beers()..drink = "Modelo");
      //           ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      //               content: Text("Beer added to cart")));
      //           Navigator.pop(context, MaterialPageRoute(builder: (context) => MyHomePage()));
      //         }, child: const Text("Add to Cart")),
      //
      //       ),
      //     ),
      //     Divider(),
      //   ],
      // ),

// final test = Beers()
//   ..drink = "Modelo";

