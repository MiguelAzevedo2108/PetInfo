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
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    petNameController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
            Card(
              child: TextField(
                style: TextStyle(
                  backgroundColor: Colors.white,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Race',
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Pet pet = Pet(name: petNameController.text, type: Type.cat, race: "test");
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
