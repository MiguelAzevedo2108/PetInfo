import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../entities/Pet.dart';

class PetPage extends StatelessWidget {

  final List<Pet> myPets;

  const PetPage(this.myPets, {super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My pets"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(
          myPets.length,
          (index) => Card(
            color: Colors.green,
          ),
        ),
      ),
    );
}
}
