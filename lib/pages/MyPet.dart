import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyPet extends StatefulWidget{
  @override
  State<MyPet> createState() => _MyPetState();
}

class _MyPetState extends State<MyPet>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Pet Information"),
        ),
        body: Container(
            color: Colors.grey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                Card(
                  child: TextField(
                    style: TextStyle(
                      backgroundColor: Colors.white,
                      color: Colors.black,
                    ),
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
          ),
        ),
    );
  }
}