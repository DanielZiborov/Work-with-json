import 'package:work_with_json/adress.dart';

class Human {
  String name;
  String surname;
  int age;
  List<Address> addresses;

  Human({
    required this.name,
    required this.surname,
    required this.age,
    required this.addresses,
  });

  factory Human.fromJson(Map<String, dynamic> json) {
    return Human(
      name: json['name'] as String,
      surname: json['surname'] as String,
      age: json['age'] as int,
      addresses: (json["addresses"] as List<dynamic>)
          .map(
            (dynamic e) => Address.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'surname': surname,
      'age': age,
      'addresses': addresses.map((e) => e.toJson()).toList(),
    };
  }
}

String jsonString = "";
