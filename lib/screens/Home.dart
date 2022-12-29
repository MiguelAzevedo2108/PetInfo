import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../entities/Pet.dart';
import '../entities/Type.dart';

import 'CreatePetPage.dart';
import 'PetPage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PetInfo"),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Center(
              child: Image.asset("assets/images/homePage.jpeg"),
            ),
            TextButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: const BorderSide(color: Colors.blueAccent)),
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CreatePetPage()));
              },
              child: const Text("Add Pet"),
            ),
            TextButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.blueAccent)),
                ),
              ),
              onPressed: () {
                List<Pet> list = [];
                Pet p = Pet("princess", Type.Cat,"europium");
                Pet p1 = Pet("fred", Type.Dog,"husky");

                list.add(p);
                list.add(p1);
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => PetPage(list)));
              },
              child: Text("View Pets"),
            ),
          ],
        ),
      ),
    );
  }
}
