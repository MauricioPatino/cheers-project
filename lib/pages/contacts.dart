import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:uuid/uuid.dart';

import '../main.dart';

@immutable
class Person {
  final String name;
  final String uuid;

  Person ({
    required this.name, //this is necessary/required
    String? uuid //this is optional
}) : uuid = uuid ?? const Uuid().v4(); //uuid i provide or uuid i get from package that is randomly generated


Person updated([String? name]) => Person(name: name ?? this.name, uuid: uuid);

String get displayName => '$name';

@override
  bool operator ==(covariant Person other) => uuid == other.uuid;

@override
  int get hashCode => uuid.hashCode;

@override
  String toString() => 'Person(name: $name, uuid: $uuid)';

}

class DataModel extends ChangeNotifier{
  final List<Person> _people = [];

  int get count => _people.length;

  UnmodifiableListView<Person> get people => UnmodifiableListView(_people);

  void add(Person person){
    _people.add(person);
    notifyListeners();
  }

  void remove(Person person){
    _people.remove(person);
    notifyListeners();
  }

  void update(Person updatedPerson) {
    final index = _people.indexOf(updatedPerson); //Finding the index of a person using uuid.
    final oldPerson = _people[index]; //Person that was already in our array. If the name has been updated then call the updated function
    if(oldPerson.name != updatedPerson.name){ //we found the person. Is the old person different from the person our UI gives.
      _people[index] = oldPerson.updated( //this updates the person and places it back into the array.
        updatedPerson.name,
      );
      notifyListeners();
    }
  }
}

final peopleProvider = ChangeNotifierProvider((_) => DataModel()); //GETS THE REFERENCES FROM THE DATAMODEL

class Contacts extends ConsumerWidget {
  const Contacts({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold( 
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: Consumer(builder: (context,ref,child){
        final dataModel = ref.watch(peopleProvider);
        return ListView.builder(itemCount: dataModel.count,
        itemBuilder: (context,index) {
          final person = dataModel.people[index];
          return ListTile(
            title: GestureDetector(
              onTap: () async {
                final updatedPerson = await createOrUpdatePersonDialog(context, person);
                if(updatedPerson != null) {
                  dataModel.update(updatedPerson);
                }
              },
                child: Text(person.displayName)),
          );
        },
        );
      },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          final person = await createOrUpdatePersonDialog(context);
          if(person != null) {
            final dataModel = ref.read(peopleProvider);
            dataModel.add(person);
          }
        },
      ),
    );
  }
}


final nameController = TextEditingController();

Future<Person?> createOrUpdatePersonDialog(
BuildContext context,[
  Person? existingPerson, //optional existing person
]
) {
  String? name = existingPerson?.name;

  nameController.text = name ?? ''; // it's the existing controller's person's name or empty text.

  return showDialog(context: context, builder: (context) {
    return AlertDialog(
      title: const Text('Create a contact'),
      content: Column(
        children: [
           TextField(
             controller: nameController,
             decoration: const InputDecoration(
               labelText: 'Enter your name',
             ),
             onChanged: (value) => name = value,
           ),

        ],
      ),
      actions: [
        TextButton(onPressed: () => Navigator.of(context).pop(), child: const Text('Cancel')),
        TextButton(onPressed: ()  {
          if (name != null) {
              if (existingPerson != null) {
                final newPerson = existingPerson.updated(name);
                Navigator.of(context).pop(newPerson);
              } else {
                Navigator.of(context).pop(Person(name: name!));
              }  {
                Navigator.of(context).pop();
              }
          }
        },
          child: const Text('Save')
         ),
      ],
    );
  },
  );
}