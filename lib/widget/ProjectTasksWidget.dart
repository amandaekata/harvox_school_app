import 'package:flutter/src/widgets/framework.dart';

import 'package:harvoxx/model/ProjectTasksModel.dart';
import 'package:flutter/material.dart';

class ProjectTasksWidget extends StatefulWidget {
  const ProjectTasksWidget({super.key, required this.projectList});
final ProjectTasksModel projectList;
  @override
  State<ProjectTasksWidget> createState() => _ProjectTasksWidgetState();
}

class _ProjectTasksWidgetState extends State<ProjectTasksWidget> {
   bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 351,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 238, 237, 237),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Column( crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(widget.projectList.main, style: const TextStyle(fontSize: 14,),),
                   
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
        SizedBox(height: 4,)
      ],
    );
  }
}