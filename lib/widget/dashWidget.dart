import 'package:flutter/material.dart';

class DashWidget extends StatelessWidget {
  const DashWidget
({super.key, required this.index, required this.length,  });
final int index;
final int length;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for(int i=0; i<length; i++)
        Container(
          height: 5, width: i==index? 75 :10,
          decoration: BoxDecoration(
            color: i==index? Colors.black: Colors.grey ,
             borderRadius: BorderRadius.circular(5)),
        )
      ],
    );
  }
}