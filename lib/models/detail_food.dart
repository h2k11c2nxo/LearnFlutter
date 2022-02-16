import 'package:flutter/material.dart';
import 'package:food_app/models/food.dart';

class DetailFood extends StatelessWidget{
  static const String routeName = '/DetailFood';
  // Food food;
  // DetailFood(this.food, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments as Map<String,Food>;
    // TODO: implement build
   return Scaffold(
     appBar: AppBar(
       title: const Text('This is detail Food',
       style: TextStyle(fontSize: 30, fontFamily: 'Redressed'),) ,
     ),
     body: Column(
       children: <Widget>[
         Center(
           child: FadeInImage.assetNetwork(
               placeholder: 'assets/images/Ajux_loader.gif',
               image: arguments['food']!.urlName),
         ),
         Container(
           padding: const EdgeInsets.symmetric(vertical: 20),
           child:  const Text('Ingredients', style: TextStyle(color: Colors.black,
               fontSize: 30),),
         ),
        Expanded(
          child:  ListView.builder(
            itemCount: arguments['food']!.ingredients.length,
            itemBuilder: (context,index){
              String ingredient = arguments['food']!.ingredients[index];
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