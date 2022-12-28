import 'package:petinfo/entities/Type.dart';
import 'User.dart';

class Pet {
  User user;
  String name;
  Type type;
  String race;

  Pet(this.user, this.name, this.type, this.race);
}
