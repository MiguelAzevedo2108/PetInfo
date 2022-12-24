import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Pet.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Image.asset("assets/images/homePage.jpeg"),
        ),
        TextButton(
          style: TextButton.styleFrom(
            primary: Colors.blue,
          ),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyPet()));
          },
          child: Text("Click Me"),
        ),
      ],
    );
  }
}


