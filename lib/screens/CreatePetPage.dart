import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petinfo/entities/Pet.dart';
import 'package:petinfo/entities/Type.dart';

class CreatePetPage extends StatefulWidget {
  @override
  State<CreatePetPage> createState() => _CreatePetPageState();
}

class _CreatePetPageState extends State<CreatePetPage> {
  final TextEditingController petNameController = TextEditingController();
  final List<Type> petTypes = [
    Type.dog,
    Type.cat,
    Type.turtle,
    Type.bunny
  ];

  Type? petType;

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    petNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pet Information"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Card(
            child: TextField(
              controller: petNameController,
              style: TextStyle(
                  backgroundColor: Colors.white,
                  color: Colors.black,
                  fontSize: 16),
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'Pet Name',
              ),
            ),
          ),
          DropdownButton(
            hint: const Text(
              'Select Type'
            ),
            items: petTypes
                .map((type) => DropdownMenuItem<Type>(
              value: type,
              child: Text(
                type.name.toUpperCase(),
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            )).toList(),
            value: petType,
            onChanged: (value){
              setState(() {
                petType = value as Type;
              });
            },
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Pet pet =
              Pet(name: petNameController.text, type: Type.cat, race: "test");

          Navigator.pop(context);
        },
      ),
    );
  }
}
