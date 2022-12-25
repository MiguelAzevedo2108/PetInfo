import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreatePetPage extends StatefulWidget{
  @override
  State<CreatePetPage> createState() => _CreatePetPageState();
}

class _CreatePetPageState extends State<CreatePetPage>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            leading: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon:Icon(Icons.arrow_back_ios),
              //replace with our own icon data.
            ),
          title: Text("Pet Information"),
        ),
        body: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                Card(
                  child: TextField(
                    style: TextStyle(
                      backgroundColor: Colors.white,
                      color: Colors.black,
                      fontSize: 16
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