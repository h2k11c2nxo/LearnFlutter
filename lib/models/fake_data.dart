import 'package:flutter/material.dart';
import 'category.dart';
import 'food.dart';
 final FAKE_CATEGORIES = [
  Category(id: 1, content: 'Japanese\'s Foods', color: Colors.blue),
  Category(id: 2, content: 'Italy\'s Foods', color: Colors.green),
  Category(id: 3, content: 'Pasta', color: Colors.pink),
  Category(id: 4, content: 'VietNam\'s Food', color: Colors.brown),
  Category(id: 5, content: 'Panacota', color: Colors.purple),
  Category(id: 6, content: 'Gogi Steak', color: Colors.redAccent),
];

 final FAKE_FOOD = [
  Food(name: 'sushi',
      urlName: 'https://haisanxanh.com/uploads/images/sashimi-ca-ngu-dai-duong.jpg',
      duration: Duration(minutes: 25),
      ingredients: ['sashimi','Halo'],
      complexity: Complexity.Hard,
      categoryId: 1),
  Food(name: 'Pizza',
      urlName: 'https://nycpizzahanoi.com/wp-content/uploads/2020/03/NYC-Pizza-Hanoi-NYC-Pizza-Hanoi-1-1024x1024.jpeg',
      duration: Duration(minutes: 25),
      ingredients: ['sashimi','Halo'],
      complexity: Complexity.Hard,
      categoryId: 2),
  Food(name: 'Pasta',
      urlName: 'https://d28xm5pzin6uvj.cloudfront.net/media/catalog/product/t/h/thumbnail_12_44.jpg',
      duration: Duration(minutes: 25),
      ingredients: ['sashimi','Halo'],
      complexity: Complexity.Medium,
      categoryId: 1),
  Food(name: 'sushi',
      urlName: 'GG',
      duration: Duration(minutes: 25),
      ingredients: ['sashimi','Halo'],
      complexity: Complexity.Hard,
      categoryId: 5),
  Food(name: 'sushi',
      urlName: 'GG',
      duration: Duration(minutes: 25),
      ingredients: ['sashimi','Halo'],
      complexity: Complexity.Hard,
      categoryId: 6),
  Food(name: 'sushi',
      urlName: 'GG',
      duration: Duration(minutes: 25),
      ingredients: ['sashimi','Halo'],
      complexity: Complexity.Hard,
      categoryId: 3),
  Food(name: 'sushi',
      urlName: 'GG',
      duration: Duration(minutes: 25),
      ingredients: ['sashimi','Halo'],
      complexity: Complexity.Hard,
      categoryId: 3)
 ];