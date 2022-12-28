import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petinfo/entities/Type.dart';

class CreatePetPage extends StatefulWidget {
  const CreatePetPage({super.key});

  @override
  State<CreatePetPage> createState() => _CreatePetPageState();
}

class _CreatePetPageState extends State<CreatePetPage> {
  final TextEditingController petNameController = TextEditingController();
  Type type = Type.Turtle;

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
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: <Widget>[
          DropdownButton(
            value: type,
            items: Type.values
                .map((type) => DropdownMenuItem(
              value: type,
              child: Text(
                type.name,
                style: const TextStyle(
                  color: Colors.teal,
                ),
              ),
            ))
                .toList(),
            borderRadius: BorderRadius.circular(20),
            onChanged: (Type? newType) {
              setState(() {
                type = newType!;
              });
            },
          ),
          Card(
            child: TextField(
              controller: petNameController,
              style: const TextStyle(
                  backgroundColor: Colors.white,
                  color: Colors.black,
                  fontSize: 16),
              decoration: const InputDecoration(
                border: InputBorder.none,
                labelText: 'Pet Name',
              ),
            ),
          ),
          const Card(
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
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
