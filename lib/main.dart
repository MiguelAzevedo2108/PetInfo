import 'package:flutter/material.dart';
import 'package:petinfo/pages/MyPet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("PetInfo"),
        ),
        body: const MyHomePage(),
      ),
    );
  }
}

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


