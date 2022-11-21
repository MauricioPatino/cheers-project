import 'dart:convert';


class BeerModel {
  final int? id;
  final String? item;
  final double? price;
  final List<String?> images;
  //int? quantity;

  BeerModel({required this.id, required this.item, required this.price, required this.images});

  // BeerItems(this.item, this.price, this.quantity);

}

List<BeerModel> beerProducts= [
  BeerModel(id: 1, item: 'Modelo', price: 7.99, images: ['assets/modelo.png']),
  BeerModel(id: 2, item: 'Corona', price: 8.99, images: ['assets/corona.png']),
  BeerModel(id: 3, item: 'Heineken', price: 8.99, images: ['assets/heineken.png']),
  BeerModel(id: 4, item: 'IPA Spencer', price: 5.99, images: ['assets/ipaspencer.png']),
  BeerModel(id: 5, item: 'Miller Light', price: 7.99, images: ['assets/miller.png']),
  BeerModel(id: 6, item: 'Budlight', price: 8.99, images: ['assets/budlight.png'])
];

