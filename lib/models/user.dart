import 'package:flutter/widgets.dart';

class User {
  final String fullName;
  final DateTime birthDate;
  final String imageSrc;

  User({
    @required this.fullName,
    @required this.birthDate,
    @required this.imageSrc,
  });
}
