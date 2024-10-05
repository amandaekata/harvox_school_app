import 'package:flutter/src/widgets/framework.dart';

import 'package:harvoxx/model/Submit_Model.dart';
import 'package:flutter/material.dart';

class SubmitWidget extends StatelessWidget {
   final bool istapped;
  const SubmitWidget({super.key, required this.istapped, required this.submitList, required this.pressed, });
  final SubmitModel submitList;
  final Function() pressed;
   

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      child: Row(
        children: [
          GestureDetector(
              onTap: 
               pressed,
              child: Container(width: 75, height: 32,
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration( 
                  border: Border.all(color: Color.fromARGB(255, 7, 52, 75)),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)
                    
                    ),
                    color: istapped
                        ? const Color.fromARGB(255, 7, 52, 75)
                        : const Color.fromARGB(255, 255, 255, 255)),
                child: Center(
                  child: Text(submitList.text,
                  style: TextStyle(
                            fontSize: 10,
                            color: istapped ? Colors.white : Color.fromARGB(255, 7, 52, 75)),
                  ),
                )
              ),
              
              
           ),
           SizedBox(width: 25,)
        ],
      ),
    ) ;
  }
}