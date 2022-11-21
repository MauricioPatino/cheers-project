import 'package:cheers/widgets/size_configuration.dart';
import 'package:flutter/material.dart';
import '../models/beerModel.dart';
import '../pages/cart.dart';
import 'cardBody.dart';
import 'constants.dart';
import 'package:cheers/beer_modal.dart';

class Products extends StatelessWidget {
  const Products({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: SizeConfiguration.getScreenProportionHeight(300),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CardBody(
            width: SizeConfiguration.getScreenProportionWidth(298),
            height: SizeConfiguration.getScreenProportionHeight(300),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Cart(
                    product: beerProducts[index],
                  ),
                ),
              );
            },
            index: index,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 19,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Row(
                    children:[
                      Text(
                      beerProducts[index].item!,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: kTextColor,
                      ),
                    ),
                      SizedBox(width: 10,),
                      Text(
                       beerProducts[index].price.toString(),
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: kTextColor,
                        ),
                      ),
                    ]
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Center(
                          child: Hero(
                            tag: beerProducts[index].id!,
                            child: Image.asset(
                              beerProducts[index].images[0]!,
                              width: SizeConfiguration.getScreenProportionWidth(100),
                              height: SizeConfiguration.getScreenProportionHeight(200),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: beerProducts.length,
      ),
    );
  }
}
