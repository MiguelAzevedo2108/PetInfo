import 'package:petinfo/entities/User.dart';
import 'Pet.dart';

class User{
  String id;
  String username;
  String password;
  List<Pet> pets = [];

  User(this.id, this.username, this.password);

}