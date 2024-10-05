import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:harvoxx/homescreens/TasksDetails.dart';
import 'package:harvoxx/model/Tasks_Model.dart';


class AllTasks extends StatefulWidget {
  const AllTasks({super.key,
  required this.AllTasksList,
  });
final TasksModel AllTasksList;

  @override
  State<AllTasks> createState() => _AllTasksState();
}

class _AllTasksState extends State<AllTasks> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
         Navigator.push(context, MaterialPageRoute(builder: 
                          (context) => TasksDetails()));
      },
      child: Column(
        children: [
          Container(
            height: 70.64,
            width: 351,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 238, 237, 237),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Column( crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(widget.AllTasksList.nameOfTasks, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                      SizedBox(height: 5,),
                      Text(widget.AllTasksList.subclass,style: TextStyle(fontSize: 12),),
                    ],
                  ),
                  Spacer(),
                  Checkbox(value: isChecked,
                 
               
                  
                   onChanged: (newBool) {
                    setState(() {
                       isChecked= newBool;
                    });
                   
                   }
                   )
                ],
              ),
            ),
            
          ),
          SizedBox(height: 8,)
        ],
      ),
    );
  }
}