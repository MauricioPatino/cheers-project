// import 'package:cheers/entities/customers.dart';
// import 'package:flutter/material.dart';
// import 'package:cheers/entities/beers.dart';
// import 'package:cheers/isar_service.dart';
// import 'package:multi_select_flutter/multi_select_flutter.dart';
//
// import 'entities/beers.dart';
// import 'entities/customers.dart';
//
// class CustomerModal extends StatefulWidget {
//   final IsarService service;
//
//   const CustomerModal(this.service, {Key? key}) : super(key: key);
//
//   @override
//   State<CustomerModal> createState() => _CustomerModalState();
// }
//
// class _CustomerModalState extends State<CustomerModal> {
//   final _formKey = GlobalKey<FormState>();
//   final _textController = TextEditingController();
//   List<Beer> selectedBeers = [];
//
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text("Give your new customer a name",
//                 style: Theme.of(context).textTheme.headlineSmall),
//             TextFormField(
//               controller: _textController,
//               autofocus: true,
//               validator: (value) {
//                 if (value == null || value.isEmpty) {
//                   return "Cmon there needs to be a name";
//                 }
//                 return null;
//               },
//             ),
//             FutureBuilder<List<Beers>>(
//               future: widget.service.getAllBeers(),
//               builder: (context, AsyncSnapshot<List<Beers>> snapshot) {
//                 if (snapshot.hasData) {
//                   final beers = snapshot.data!.map((beer) {
//                     return MultiSelectItem<Beers>(beer, beer.drink);
//                   }).toList();
//
//                   return MultiSelectDialogField<Beers>(
//                       items: beers,
//                       onConfirm: (value) {
//                         selectedBeers = value;
//                       });
//                 }
//                 return const Center(child: CircularProgressIndicator());
//               },
//             ),
//             ElevatedButton(
//                 onPressed: () async {
//                   if (_formKey.currentState!.validate()) {
//                     widget.service.saveCustomer(
//                       Customer()
//                         ..name = _textController.text
//                         ..beers.addAll(selectedBeers),
//                     );
//
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       SnackBar(
//                           content: Text(
//                               "New customer '${_textController.text}' saved in DB")),
//                     );
//
//                     Navigator.pop(context);
//                   }
//                 },
//                 child: const Text("Add a new customer"))
//           ],
//         ),
//       ),
//     );
//   }
// }