import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:harvoxx/homescreens/DashBoardScreen.dart';

import 'package:harvoxx/homescreens/Notifications.dart';
import 'package:harvoxx/model/ChatRoomModel.dart';
import 'package:harvoxx/widget/ChatRoomWidget.dart';

class ChatPreview extends StatefulWidget {
  const ChatPreview({super.key});

  @override
  State<ChatPreview> createState() => _ChatPreviewState();
}

class _ChatPreviewState extends State<ChatPreview> {
  List <ChatModel> chatList = [
  ChatModel(profile:'assets/food.jpg' , taskName: 'Web Developmemt(Frontend)', contentOf: 'what is the update?', date: '07:30am', much: '4'),
  ChatModel(profile: 'assets/food.jpg', taskName: 'Group Task 1', contentOf: 'See You in Harvoxx', date: '07:30am', much: '7'),
  ChatModel(profile: 'assets/food.jpg', taskName: 'Group Task 2', contentOf: 'Are you guys don with your part', date: '07:30am', much: '9'),
  ChatModel(profile:'assets/image 3.png' , taskName: 'Group Task 1', contentOf: 'Good to know', date: '07:30am', much: '4'),
  ChatModel(profile: 'assets/image 3.png', taskName: 'Group Task 8', contentOf: 'fially', date: '07:30am', much: '5'),
  ChatModel(profile: 'assets/image 3.png', taskName: 'Group Task 4', contentOf: 'okay', date: '07:30am', much: '1'),
  ChatModel(profile: 'assets/image 3.png', taskName: 'Group Task 5', contentOf: 'English Language is not my first language', date: '07:31am', much: '5')
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
                SizedBox(width: 50,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Group Chat Room', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                   
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
            Expanded(child: ListView.builder(
              itemCount: chatList.length,
              itemBuilder:(BuildContext context, int index,) {
                return ChatRoomWidget(chatList: chatList[index]);
              }
               ))
          ],
        ),
      ),
    );
  }
}