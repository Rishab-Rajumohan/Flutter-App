import 'package:flutter/material.dart';
import './data.dart';
import './category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(padding: EdgeInsets.all(10),
      children: Dummy_Category.map((catData) => CategoryItem(
            catData.id,
            catData.title,
            catData.color,
          )).toList(),
          
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 150,
        childAspectRatio: 1 / 1,
        crossAxisSpacing: 20,
        mainAxisSpacing: 40,
      ),
      
    );
  }
}
