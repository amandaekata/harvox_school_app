import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:harvoxx/model/Assign_Model.dart';

class AssignWidget extends StatelessWidget {
  const AssignWidget({super.key, required this.containerList});
 final AssignModel containerList;
  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        Container(width: 25, height: 25,
                            decoration: BoxDecoration( 
                               image: DecorationImage(image:  AssetImage(containerList.pictureC),),
                                borderRadius: BorderRadius.circular(20)),
                          
                          ),
                          SizedBox(width: 5,),
                          Text(containerList.nameA, style: TextStyle(fontSize: 12),),
                          SizedBox(width:10 ,)

      ],
      
    );
  }
}