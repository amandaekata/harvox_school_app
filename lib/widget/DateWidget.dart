import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';


import '../model/date_model.dart';

class DateWidget extends StatelessWidget {
  final bool istapped;
  const DateWidget(
      {super.key,
      required this.dates,
      required this.istapped,
      required this.pressed});
  final DateModel dates;
  final Function() pressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(11),
      child: GestureDetector(
        onTap: pressed,
        child: Container(  height: 40, width: 40,
          padding: const EdgeInsets.all(9),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(190),
              color: istapped
                  ? const Color.fromARGB(255, 7, 52, 75)
                  : const Color.fromARGB(255, 238, 236, 236)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                dates.dateNumer.toString(),
                style: TextStyle(
                    fontSize: 10,
                    color: istapped ? Colors.white : Colors.black),
              ),
              Text(
                dates.day,
                style: TextStyle(
                    fontSize: 8, color: istapped ? Colors.white : Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
