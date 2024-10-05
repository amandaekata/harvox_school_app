import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:harvoxx/homescreens/ChatFullView.dart';
import 'package:harvoxx/model/ChatRoomModel.dart';

class ChatRoomWidget extends StatelessWidget {
  const ChatRoomWidget({super.key, required this.chatList});

final ChatModel chatList;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: 
                          (context) => ChatFull()));
      },
      child: Column(
        children: [
          Row( mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Container(width: 40, height: 40,
                                  decoration: BoxDecoration( 
                                     image: DecorationImage(image:  AssetImage(chatList.profile),),
                                      borderRadius: BorderRadius.circular(30)),
                                
                                ),
                                SizedBox( width: 10,),
                                Column( mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(chatList.taskName, style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold),),
                                    SizedBox(height: 4,),
                                    Text(chatList.contentOf,style: TextStyle(fontSize: 10)),
                                  ],
      
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    Text(chatList.date, style: TextStyle(fontSize: 11),),
                                    SizedBox(height: 4,),
                                    Container( height: 9, width: 5,
                                      decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(6)),
                                      child: Text(chatList.much,style: TextStyle(fontSize: 8, color: Colors.white),),
                                    )
                                  ],
                                )
            ],
          ),
          SizedBox(height: 25,),
          const Divider(
            color: Colors.black,
            height: 0,
            thickness: 0,
           

    
          ),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}