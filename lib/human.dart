import 'package:work_with_json/adress.dart';

class Human {
  String name;
  String surname;
  int age;
  List<Adress> addreses;

  Human({
    required this.name,
    required this.surname,
    required this.age,
    required this.addreses,
  });
}
