import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_app/models/category_item.dart';
import 'package:food_app/models/fake_data.dart';
class CategoriesPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return GridView(
      padding: EdgeInsets.all(10),
      children: FAKE_CATEGORIES.map((item) => CategoryItem(category : item)).toList(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300,
        childAspectRatio: 3/2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}