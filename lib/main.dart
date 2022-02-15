import 'package:flutter/material.dart';
import 'package:food_app/models/categories_page.dart';
import 'package:food_app/models/foods_page.dart';
import 'models/category.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Food app',
      initialRoute: '/',
      routes: {
        '/CategoryPage': (context) => CategoriesPage(),
        '/FoodsPage': (context) => FoodsPage()
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Redressed',
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: const TextStyle(
            color: Color.fromARGB(20,52, 52, 1)
          ),
            bodyText2: const TextStyle(
                color: Color.fromARGB(20,52, 52, 1)
            ),
        )
      ),
      home:  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: const Text('Food Categories',
          style: TextStyle(
              fontFamily: 'Redressed',
              fontSize: 30,
              color: Colors.white
            ),
          ),
        ),
        body: CategoriesPage()
        ),
      );
  }
}


