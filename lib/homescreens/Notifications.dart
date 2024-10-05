import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:harvoxx/homescreens/DashBoardScreen.dart';

import 'package:harvoxx/model/Notifications_Model.dart';

import '../widget/NotificationWidget.dart';

class Notifications extends StatelessWidget {
   Notifications({super.key});
  List<NotificationsModel> NotificationsList = [
const NotificationsModel(Ndate: '15, Feb 2024',
 context: 'Hey! wanna study today?', picture: 'assets/food.jpg', title: 'Tunde'),
 const NotificationsModel(Ndate: '15, Feb 2024',
 context: 'Are you done yet?', picture: 'assets/p2.png', title: 'Mr victor'),
 const NotificationsModel(Ndate: '15, Feb 2024',
 context: 'Hand In your project tommorow', picture: 'assets/y.png', title: 'Miss Sally'),
 const NotificationsModel(Ndate: '15, Feb 2024',
 context: 'hey', picture: 'assets/image 3.png', title: 'sonia'),
 const NotificationsModel(Ndate: '15, Feb 2024',
 context: 'okay', picture: 'assets/food.jpg', title: 'Mr ye'),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> DashBoardScreen()));
                }, icon: Icon(Icons.arrow_back)),
                SizedBox(width: 82,),

                Row(mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Notifications', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  ],
                )
              ],
            ),
            SizedBox(height: 30,),
            Expanded(
              child: ListView.builder( itemCount: NotificationsList.length,
                itemBuilder: (BuildContext context, int index) { 
                return NotificationWidget(NotificationsList: NotificationsList[index],);
               },
                
              ),
            )
           
          ],
        ),
      ),
    );
  }
}