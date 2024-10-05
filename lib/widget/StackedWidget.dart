import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class StackedWidgets extends StatelessWidget {
  final List<Widget> items;
  final TextDirection direction;
  final double size;
  final double xshift;
  const StackedWidgets({Key? key, required this.items, 
   this.direction = TextDirection.ltr, this.size =30,  this.xshift = 20}): super(key: key);
   

  @override
  Widget build(BuildContext context) {
    final allItems = items.asMap().map((index, item) {
      final right =size-xshift;

      final value = Container(
        width: size,
        height: size,
        child: item,
        margin: EdgeInsets.only(right: right*index),
      );
      return MapEntry(index, value);
    })
    .values.toList();
    return Stack(
      children: direction== TextDirection.ltr? allItems.reversed.toList()
      : allItems,
    );
    }

   
  }
