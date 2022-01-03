

import 'package:flutter/material.dart';
import 'package:project/Main/options.dart';
import 'package:project/Main/screen1.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  void selectCategory(BuildContext context) {
    if (this.title =='Leave Balance') {
    Navigator.of(context).pushNamed('/screen2', arguments: {'id': id, 'title': title});
  }
  else if (this.title == 'Employee Detail Profile') {
    Navigator.of(context).pushNamed('/screen1', arguments: {'id': id, 'title': title});
  }
  else if (this.title == 'Leave Apply') {
    Navigator.of(context).pushNamed('/screen3', arguments: {'id': id, 'title': title});
  }
  else if (this.title == 'Leave History') {
    Navigator.of(context).pushNamed('/screen4', arguments: {'id': id, 'title': title});
  }
  }

  CategoryItem(this.id, this.title, this.color);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            title,
            textAlign: TextAlign.center,
          ),
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              color.withOpacity(0.7),
              color,
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
                    BoxShadow(
                      color: Colors.grey[400],
                      offset: const Offset(
                        5.0,
                        5.0,
                      ),
            ),
            ],
        ), 
      ),
    );
  }

  void screen1() {}
}
