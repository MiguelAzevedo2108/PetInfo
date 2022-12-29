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
  final TextEditingController petRaceController = TextEditingController();

  Type type = Type.Turtle;

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    petNameController.dispose();
    petRaceController.dispose();
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
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: petNameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Pet Name',
              ),
            ),
          ),
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
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: petNameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
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
