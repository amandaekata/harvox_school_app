import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';


import 'package:harvoxx/homescreens/TasksDetails.dart';

import 'Notifications.dart';

class SubmitTask extends StatefulWidget {
  const SubmitTask({super.key});

  @override
  State<SubmitTask> createState() => _SubmitTaskState();
}

class _SubmitTaskState extends State<SubmitTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Padding(
        padding: const EdgeInsets.all(20),
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
                              builder: (context) => TasksDetails()));
                    },
                    icon: Icon(Icons.arrow_back)),
                    SizedBox(width: 74,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Submit Task',
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
            SizedBox(height: 30,),
             Text('Title', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
            SizedBox(height: 6,),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(5))),
            ),

            SizedBox(height: 10,),
             Text('Group', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
            SizedBox(height: 6,),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(5))),
            ),

            SizedBox(height: 10,),
             Text('Link', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            SizedBox(height: 6,),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(5))),
            ),

            SizedBox(height: 10,),
             Text('Description', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
            SizedBox(height: 6,),
            TextFormField( minLines: 4,
            maxLines: 5,
              decoration: InputDecoration(  
              
                
                //bigger form field
                border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(5))),
            ),

            SizedBox(height: 10,),
            Center(
              child: Container(height: 120, width: 120,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 236, 235, 235),
                border: Border.all( color: Color.fromARGB(255, 35, 49, 56))
                
              ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Icon(Icons.cloud_upload_outlined),
                  SizedBox(height: 10,),
                  Text('Upload file', style: TextStyle(fontSize: 5.88, fontWeight: FontWeight.bold),),
                   SizedBox(height: 5,),
                   Text('JPG, PNG or PDF, file size no more than 10MB', style: TextStyle(fontSize: 4.7),),
                   SizedBox(height: 5,),
                    Center(
              child: Container(height: 10.77, width: 28.36,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(0.99),
                  border: Border.all(color: Colors.amber),
               
              ),
              child: Text('SELECT FILE')),
             ),
                ],
              ),
            )
              ),
            ),
            SizedBox(height: 30,),
             Center(
              child: ElevatedButton( style: ElevatedButton.styleFrom(
                fixedSize: Size(600, 40),
                backgroundColor: Colors.amber
              ),
                onPressed: (){
                 
                }, child: Text('Submit Task')),
             ),

          ],
        ),
      ),
    );
  }
}