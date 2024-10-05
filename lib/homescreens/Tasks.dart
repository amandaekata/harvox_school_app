import 'package:flutter/material.dart';

import 'package:harvoxx/model/Tasks_Model.dart';

import 'package:harvoxx/widget/AllTasksWidget.dart';

import 'Notifications.dart';

class TasksWidget extends StatefulWidget {
  TasksWidget({super.key});

  @override
  State<TasksWidget> createState() => _TasksWidgetState();
}

class _TasksWidgetState extends State<TasksWidget> {
  List<TasksModel> AllTasksList = const [
    TasksModel(nameOfTasks: 'High Fidelity', subclass: 'Fooders Redesign'),
    TasksModel(nameOfTasks: 'High Fidelity', subclass: 'Fooders Redesign'),
    TasksModel(nameOfTasks: 'Jumia', subclass: 'Jumia Web Redesign'),
    TasksModel(nameOfTasks: 'High Fidelity', subclass: 'Fooders Redesign'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.person_outline_rounded),
                const SizedBox(
                  width: 10,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome Back,',
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      'Racheal Obereni',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
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
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Recent Activities',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Spacer(),
                Text(
                  'See More',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: 63,
                      width: 155,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30)),
                          color: Color.fromARGB(255, 100, 98, 98)),
                      child: const Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Tasks Project',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              '06/10',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    Container(
                      height: 169,
                      width: 155,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 21, 41, 58),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              'Group task',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            const Text(
                              'Jumia\nWeb Redesign',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            const Text(
                              'One More Week',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                    
                            Stack(
                              children: [
                                Container(
                                  height: 30,
                                  width: 78,
                                ),
                                Positioned(
                                    child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset(
                                    'assets/y.png',
                                    height: 30,
                                    width: 30,
                                  ),
                                )),
                                Positioned(
                                    left: 20,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset(
                                        'assets/food.jpg',
                                        height: 30,
                                        width: 30,
                                      ),
                                    )),
                                Positioned(
                                    left: 40,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset(
                                        'assets/food.jpg',
                                        height: 30,
                                        width: 30,
                                      ),
                                    ))
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: 5,
                                      width: 84,
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(5),
                                            bottomRight: Radius.circular(5), 
                                          topRight:  Radius.circular(5),
                                              topLeft: Radius.circular(5),
                                             )),
                                    ),
                                    Positioned(
                                      left: 67,
                                      child: Container(
                                        height: 5,
                                        width: 17,
                                        decoration: const BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius: BorderRadius.only(
                                              
                                               
                                                bottomRight: Radius.circular(5),
                                             
                                                topRight: Radius.circular(5))),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 6,),
                                const Text('90%', style: TextStyle(color: Colors.white, fontSize: 9),)
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Container(
                      height: 116,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 206, 51, 40),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              'Fooders\nWeb Redesign',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            const Text(
                              'Mon 27 Feb 2024',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            ),
                            const SizedBox(height: 15,),
                              Row(
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: 5,
                                      width: 84,
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(5),
                                            bottomRight: Radius.circular(5), 
                                          topRight:  Radius.circular(5),
                                              topLeft: Radius.circular(5),
                                             )),
                                    ),
                                    Positioned(
                                      left: 67,
                                      child: Container(
                                        height: 5,
                                        width: 50,
                                        decoration: const BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius: BorderRadius.only(
                                              
                                               
                                                bottomRight: Radius.circular(5),
                                             
                                                topRight: Radius.circular(5))),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 6,),
                                const Text('60%', style: TextStyle(color: Colors.white, fontSize: 9),)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    Container(
                      height: 116,
                      width: 155,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:  [
                            const Text(
                              'Fooders\nWeb Redesign',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 6, 24, 39)),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            const Text(
                              'Fri 22 Feb 2024',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromARGB(255, 6, 24, 39)),
                            ),
                            const SizedBox(height: 15,),
                              Row(
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: 5,
                                      width: 84,
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(5),
                                            bottomRight: Radius.circular(5), 
                                          topRight:  Radius.circular(5),
                                              topLeft: Radius.circular(5),
                                             )),
                                    ),
                                    Positioned(
                                      left: 67,
                                      child: Container(
                                        height: 5,
                                        width: 22,
                                        decoration: const BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius: BorderRadius.only(
                                              
                                               
                                                bottomRight: Radius.circular(5),
                                             
                                                topRight: Radius.circular(5))),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 6,),
                                const Text('80%', style: TextStyle(color: Color.fromARGB(255, 26, 47, 58), fontSize: 9),)
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'All Task',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  'See More',
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
            const SizedBox(
              height: 1,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: AllTasksList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return AllTasks(AllTasksList: AllTasksList[index]);

                    /*return Card(
                      child: ListTile(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: 
                          (context) => TasksDetails()));
                        },

                      ),
                     );*/
                  }),
            )
          ],
        ),
      ),
    );
  }

  /* Widget buildExpandedBox({
    required List<Widget> children,
    
  })=>
  Expanded(child: Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: children,
    ),
  ));

  Widget buildStackedImages({
    TextDirection direction= TextDirection.ltr,
  }) {
    final double size =30;
    final double xshift= 5;
    final Images = [
     'assets/y.png',
     'assets/p2.png',
     'assets/food.jpg',


    ];
    final items = Images.map((Images) => buildImage(Images)).toList();
    return StackedWidgets(direction: direction, items: items,
    size: size, xshift: xshift,
    
    );
  }
  Widget buildImage(String Images) {
   
    return ClipOval(
      child: Container(
        child: ClipOval(
          child: Image.asset(Images,
          fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }*/
}
