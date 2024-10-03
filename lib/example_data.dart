import 'package:work_with_json/adress.dart';
import 'package:work_with_json/human.dart';

final humans = [
  Human(
    name: 'Иван',
    surname: 'Иванов',
    age: 17,
    addresses: [
      Address(city: 'Пермь', street: 'Знания', house: '50', flat: 44),
      Address(city: 'Москва', street: 'Справедливости', house: '4', flat: 33),
      Address(city: 'Владивосток', street: 'Энгельса', house: '20', flat: 9),
    ],
  ),
  Human(
    name: 'Петр',
    surname: 'Петров',
    age: 20,
    addresses: [
      Address(city: 'Петербург', street: 'Мира', house: '54', flat: 67),
      Address(city: 'Казань', street: 'Ленина', house: '23', flat: 56),
      Address(city: 'Пенза', street: 'Карла Маркса', house: '136', flat: 12),
    ],
  ),
];
