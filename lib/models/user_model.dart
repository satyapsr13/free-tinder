import 'dart:convert';

import 'package:flutter/material.dart';

class UserModel {
  String name;
  bool gender; //true for male false for female
  String phoneno;
  List<String> intrests;
  int age;
  String image;
  String email;
  UserModel({
    required this.name,
    required this.gender,
    required this.phoneno,
    required this.intrests,
    required this.age,
    required this.image,
    required this.email,
  });
}
