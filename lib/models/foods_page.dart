
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/models/category.dart';
import 'package:food_app/models/category_item.dart';
import 'package:food_app/models/fake_data.dart';

class FoodsPage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    Category category;
    return  Scaffold(
        appBar: AppBar(
          title: const Text('Food from category',
            style: TextStyle(
                fontSize: 30,
                fontFamily: 'Redressed'
            ) ,
          ),
        ),
      body: const Center(
        child: Text('This show Foods\'s list',
        style: TextStyle(fontSize: 25, color: Colors.deepPurple),
        ),
      )
    );
  }
}