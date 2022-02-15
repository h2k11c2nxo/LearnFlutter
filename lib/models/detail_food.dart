import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/models/food.dart';

class DetailFood extends StatelessWidget{
  Food food;
  DetailFood(this.food, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     appBar: AppBar(
       title: const Text('This is detail Food',
       style: TextStyle(fontSize: 30, fontFamily: 'Redressed'),) ,
     ),
     body: Column(
       children: <Widget>[
         Center(
           child: Container(
             child: FadeInImage.assetNetwork(
                 placeholder: 'assets/images/Ajux_loader.gif',
                 image: food.urlName),
           ),
         ),
         Container(
           padding: EdgeInsets.symmetric(vertical: 20),
           child:  const Text('Ingredients', style: TextStyle(color: Colors.black,
               fontSize: 30),),
         ),
        Expanded(
          child:  ListView.builder(
            itemCount: food.ingredients.length,
            itemBuilder: (context,index){
              String ingredient = food.ingredients[index];
              return ListTile(
                leading: CircleAvatar(
                  child: Text('${index+1}'),
                ),
                title: Text(ingredient, style: const TextStyle(fontSize: 25,
                    color: Colors.black,
                    fontFamily: 'Redressed'),),
              );
            },
          ),
        )
       ],
     )

   );
  }
}