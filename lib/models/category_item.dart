import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'category.dart';
import 'foods_page.dart';

class CategoryItem extends StatelessWidget{
  Category category;
  CategoryItem({required this.category});
  @override
  Widget build(BuildContext context){
    Color _color = category.color;
    return InkWell(
      onTap: (){
        print('ABC: ${category.content}');
        //Navigation page
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) =>FoodsPage()
          )
        );
      },
      splashColor: Colors.deepPurpleAccent,
      child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(category.content,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Redressed'
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
              color: _color,
              gradient: LinearGradient(
                colors:[
                  _color.withOpacity(0.6),
                  _color
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
              borderRadius:  BorderRadius.circular(20)
          )
      ),
    );
  }
}