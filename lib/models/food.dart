import 'dart:math';
import 'package:flutter/cupertino.dart';

class Food{
  late int foodId;
  String name;
  String urlName;
  Duration duration;
 late Complexity complexity;
  List<String> ingredients = <String>[];
  late int categoryId;
  //constructor
  Food(
    {
      required this.name,
      required this.urlName,
      required this.duration,
      required this.ingredients,
      required this.complexity,
      required this.categoryId
  }
  )
    {
      foodId = Random().nextInt(1000);
    }

}

enum Complexity{
  Simple,
  Medium,
  Hard
}