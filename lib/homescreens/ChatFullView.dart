import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:harvoxx/homescreens/ChatPreview.dart';
import 'package:harvoxx/model/MessageModel.dart';
import 'package:harvoxx/widget/MessageWidget.dart';

class ChatFull extends StatefulWidget {
  const ChatFull({super.key});
  @override
  State<ChatFull> createState() => _ChatFullState();
}

class _ChatFullState extends State<ChatFull> {
  
  
  List<MessageModel> Messages = const [
    MessageModel(
        name: 'George lye',
        text: 'That is perfect. There is a new place i want to try',
        isSentByMe: true),
    MessageModel(
        name: 'Hanny Ben',
        text: 'Let us do it. i am in a meeting till noon',
        isSentByMe: false),
    MessageModel(
        name: 'George lye',
        text: 'That is perfect. I will send you the location',
        isSentByMe: true),
    MessageModel(
        name: 'Hanny Ben', text: 'Okay, i will be there', isSentByMe: false),
    MessageModel(name: 'George lye', text: 'See you soon.', isSentByMe: true),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChatPreview()));
                      },
                      icon: Icon(Icons.arrow_back)),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    '18',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/food.jpg'),
                        ),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Web Development',
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'John, Mercy, Jonny, Eva, Blessing....',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Text('05, Feb 2024'),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: Messages.length,
                shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return MessageWidget(Messages: Messages[index]);
                  }),
            ),
            SizedBox(
              height: 25,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.add),
                  SizedBox(
                    width: 3,
                  ),
                  Container(
                      height: 50,
                      width: 241,
                     decoration: BoxDecoration( borderRadius: BorderRadius.circular(20),    color: Color.fromARGB(255, 231, 229, 229),),
                      child: TextField(
                        decoration:
                            InputDecoration(contentPadding: EdgeInsets.all(12),
                            hintText: 'Type Here...', hintStyle: TextStyle(color: Colors.grey, fontSize: 14)),
                            
                      )),
                      Spacer(),
                      Icon(Icons.camera_alt_outlined),
                      SizedBox(width: 1,),
                      Icon(Icons.mic_outlined),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
