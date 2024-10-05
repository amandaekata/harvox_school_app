import 'package:flutter/material.dart';

import 'package:harvoxx/homescreens/Notifications.dart';
import 'package:harvoxx/homescreens/SubmitTask.dart';
import 'package:harvoxx/homescreens/Tasks.dart';
import 'package:harvoxx/model/Assign_Model.dart';
import 'package:harvoxx/model/ProjectTasksModel.dart';
import 'package:harvoxx/model/Submit_Model.dart';
import 'package:harvoxx/widget/AssignWidget.dart';
import 'package:harvoxx/widget/SubmitWidget.dart';


import '../widget/ProjectTasksWidget.dart';

class TasksDetails extends StatefulWidget {
  const TasksDetails({super.key});

  @override
  State<TasksDetails> createState() => _TasksDetailsState();
}

class _TasksDetailsState extends State<TasksDetails> {
 
  List<AssignModel> containerList = const [
    AssignModel(nameA: 'Rsada isi', pictureC: 'assets/y.png'),
    AssignModel(nameA: 'Sally Kim', pictureC: 'assets/food.jpg'),
    AssignModel(nameA: 'John Doe', pictureC: 'assets/p3.png'),
  ];
    List<SubmitModel> submitList =  [
      SubmitModel(text: 'In progress'),
    SubmitModel(text: 'Submit Task')

          
];
List<ProjectTasksModel> projectList = [
 const ProjectTasksModel(main: 'High Fidelity'),
  const ProjectTasksModel(main: 'Wireframe'),
   const ProjectTasksModel(main: 'System Design'),
    const ProjectTasksModel(main: 'Design Principle'),
];
 int selectedItem = 0;
   final bool istapped = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(17),
        child: Column( mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TasksWidget()));
                    },
                    icon: const Icon(Icons.arrow_back)),
                    const SizedBox(width: 83,),

                    
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Jumia',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                   
                  ],
                ),
                 const Spacer(),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Notifications()));
                        },
                        icon: const Icon(Icons.notifications_outlined)),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              'Jumia - Web Redesign',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),

            ),
            const SizedBox(height: 23 ,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Assign',
                  style: TextStyle(fontSize: 12),
                ),
                const SizedBox(
                  width: 15,
                ),
                SizedBox(
                  height: 25,
                  child: ListView.builder( scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                      itemCount: containerList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return AssignWidget(
                            containerList: containerList[index]);
                      }),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Date',
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Monday, 10 Feb 2024 - Thursday 21 Feb 2024',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Platform',
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Figma, Github',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
               Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Status',
                  style: TextStyle(fontSize: 12),
                ),
                const SizedBox(
                  width: 15,
                ),
                SizedBox( height: 32,
                  child: ListView.builder( scrollDirection: Axis.horizontal,
                              
                               shrinkWrap: true,
                  itemCount: submitList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return SubmitWidget(submitList: submitList[index],
                     istapped: index==selectedItem,
                     pressed: () {
                       setState(() {
                         selectedItem = index;
                       });
                        Navigator.push(context, MaterialPageRoute(builder: 
                          (context) => const SubmitTask()));
                     },
                     );
                  },
                              ),
                )


          ],
        ),
       
        const SizedBox(height: 30,),
        const Text('Description', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
        const SizedBox(height:3, ),
        const Text('This Jumia project will help you buils skills in dart and flutter,\n that you have never come across before.\n You will be opportuned to use alot of Lists views and stack.\nBe sure to follow the figma prototype to the T\nIf you have any questions,\nI am a text away. ', style: TextStyle(fontSize: 14),),
        const SizedBox(height: 20,),
        const Text('Project Task', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
        const SizedBox(height: 5,),
        Expanded(
              child: ListView.builder(
                  itemCount: projectList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ProjectTasksWidget(projectList:  projectList[index]);
                  }),
            )
          ],
      ),
      ),
    );
  }
}
