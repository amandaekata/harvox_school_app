import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:harvoxx/homescreens/Certificate.dart';
import 'package:harvoxx/homescreens/DashBoardScreen.dart';
import 'package:harvoxx/homescreens/Feedback.dart';
import 'package:harvoxx/homescreens/HelpAndSupport.dart';

import 'package:harvoxx/homescreens/Notifications.dart';
import 'package:harvoxx/homescreens/Store.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => DashBoardScreen()));
                    },
                    icon: Icon(Icons.arrow_back)),
                    SizedBox(width: 80,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Profile',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Spacer(),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Notifications()));
                    },
                    icon: Icon(Icons.notifications_outlined)),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Center(
              child: Container(
                height: 62,
                width: 62,
                decoration: BoxDecoration(color: Color.fromARGB(255, 28, 58, 73), borderRadius: BorderRadius.circular(45),),
                child: Center(child: Icon(Icons.person_outline_rounded),),
              ),
            ),
            Center(child: Text('Rachael Oboreni', style: TextStyle(fontSize: 16),)),
            SizedBox(height: 20,),
            Container(height: 68,width: 352,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(255, 197, 195, 195)),
child: Padding(
  padding: const EdgeInsets.all(5),
  child:   Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
  
  crossAxisAlignment: CrossAxisAlignment.start,
  
    children: [
  
      Column(mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
  
        children: [ 
  Text('DsP -300 C3', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
  SizedBox(height: 3,),
  Text('Program', style: TextStyle(fontSize: 10),),
  
  
        ],
  
      ),
       Column(mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
  
        children: [ 
  Text('Jan. 2024 - April 2024', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
  SizedBox(height: 3,),
  Text('Duration', style: TextStyle(fontSize: 10),),
  
  
        ],
  
      ),

 Column(mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
  
        children: [ 
  Text('600', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
  SizedBox(height: 3,),
  Text('Rating points', style: TextStyle(fontSize: 10),),
  
  
        ],
  
      )
  
    ],
    
  
  ),
),
            ),
            SizedBox(height: 30,),
            Row(mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.book_outlined),
              SizedBox(width: 10,),
              Text('Get Certificate', style: TextStyle(fontSize: 15),),
              Spacer(),
              IconButton(onPressed: (){
                  Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Certificate()));
                
              }, icon: Icon(Icons.arrow_forward_ios_sharp)),
              

            ],

            ),
            SizedBox(height: 40,),
             Row(mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.headset_mic),
              SizedBox(width: 10,),
              Text('Help & Support', style: TextStyle(fontSize: 15),),
              Spacer(),
              IconButton(onPressed: (){
                 Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HelpAndSupport()));
              }, icon: Icon(Icons.arrow_forward_ios_sharp)),
              

            ],

            ),
            SizedBox(height: 40,),
             Row(mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.feedback_outlined),
              SizedBox(width: 10,),
              Text('Feedback', style: TextStyle(fontSize: 15),),
              Spacer(),
              IconButton(onPressed: (){
                 Navigator.push(context,
                          MaterialPageRoute(builder: (context) => FeedbackWidget()));
              }, icon: Icon(Icons.arrow_forward_ios_sharp)),
              

            ],

            ),
            SizedBox(height: 40,),
             Row(mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.shopping_bag_outlined),
              SizedBox(width: 10,),
              Text('Store', style: TextStyle(fontSize: 15),),
              Spacer(),
              IconButton(onPressed: (){
                 Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Store()));
              }, icon: Icon(Icons.arrow_forward_ios_sharp)),
              

            ],

            ),
            SizedBox(height: 40,),
             Row(mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.logout),
              SizedBox(width: 10,),
              Text('Logout', style: TextStyle(fontSize: 15),),
              Spacer(),
              IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_sharp)),
              

            ],

            ),
            



          ],
        ),
      ),
    );
  }
}
