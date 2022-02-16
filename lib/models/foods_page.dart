import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/models/category.dart';
import 'package:food_app/models/detail_food.dart';
import 'package:food_app/models/fake_data.dart';
import 'package:food_app/models/food.dart';


class FoodsPage extends StatelessWidget {
  static const String routeName = '/FoodsPage';
  // FoodsPage(this.category, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final  arguments = ModalRoute.of(context)?.settings.arguments as Map<String, Category>;
    List<Food> foods =
        FAKE_FOOD.where((food) => food.categoryId == arguments['category']?.id).toList();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text(
            'Food from ${arguments['category']?.content}',
            style: const TextStyle(fontSize: 30, fontFamily: 'Redressed'),
          ),
        ),
        body: Center(
            child: Center(
          child: foods.length > 0 ? ListView.builder(
            itemCount: foods.length,
            itemBuilder: (context, index) {
              Food food = foods[index];
              return InkWell(
                onTap: (){
                  Navigator.pushNamed(context, DetailFood.routeName, arguments: {'food':food});
                },
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        clipBehavior: Clip.hardEdge,
                        child: Center(
                          child: FadeInImage.assetNetwork(
                              placeholder: 'assets/images/Ajux_loader.gif',
                              image: foods[index].urlName),
                        ),
                      ),
                    ),
                    Positioned(
                        top: 30,
                        left: 30,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.white, width: 2)),
                          child: Row(
                            children: <Widget>[
                              const Icon(
                                Icons.timer,
                                color: Colors.white,
                                size: 25,
                              ),
                              Text(
                                '${food.duration.inMinutes} minutes',
                                style:
                                const TextStyle(fontSize: 20, color: Colors.white),
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              );
            },
          ) :
              const Text('No Food Found',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: 'Redressed'
              ),)
        )));
  }
}
