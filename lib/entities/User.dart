import 'package:petinfo/entities/User.dart';
import 'Pet.dart';

class User{
  String id;
  String username;
  String password;
  List<Pet> _pets = [];

  User(this.id, this.username, this.password);

  List<Pet> get pets => _pets;

  set pets(List<Pet> value) {
    _pets = value;
  }

}