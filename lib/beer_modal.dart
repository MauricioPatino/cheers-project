// import 'package:flutter/material.dart';
// import 'package:cheers/entities/beers.dart';
// import 'package:cheers/isar_service.dart';
//
// class BeerModal extends StatefulWidget {
//   final IsarService service;
//   const BeerModal(this.service, {Key? key}) : super(key: key);
//
//   @override
//   State<BeerModal> createState() => _BeerModalState();
// }
//
// class _BeerModalState extends State<BeerModal> {
//   final _formKey = GlobalKey<FormState>();
//   final _textController = TextEditingController();
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
//             Text("What beer are ya getting?",
//                 style: Theme.of(context).textTheme.headlineSmall),
//             TextFormField(
//               controller: _textController,
//               autofocus: true,
//               validator: (value) {
//                 if (value == null || value.isEmpty) {
//                   return "We don't do that type of nonsense!";
//                 }
//                 return null;
//               },
//             ),
//             ElevatedButton(
//                 onPressed: () async {
//                   if (_formKey.currentState!.validate()) {
//                     widget.service.saveBeer(Beers()..drink = _textController.text);
//                     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                         content: Text(
//                             "New beer '${_textController.text}' saved in DB")));
//
//                     Navigator.pop(context);
//                   }
//                 },
//                 child: const Text("Add a new beer"))
//           ],
//         ),
//       ),
//     );
//   }
// }