import 'package:petinfo/entities/Type.dart';

class Pet {
  String username = "";
  String name;
  Type type;
  String race;
  String owner="";

  Pet({required this.name, required this.type, required this.race});
}
