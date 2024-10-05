import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:harvoxx/model/Notifications_Model.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    super.key,
    
    required this.NotificationsList,
  });
  final NotificationsModel NotificationsList;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
                height: 98,
                width: 393,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 243, 242, 242),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row( crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(width: 33, height: 33,
                            decoration: BoxDecoration( 
                               image: DecorationImage(image:  AssetImage(NotificationsList.picture),),
                                borderRadius: BorderRadius.circular(20)),
                          
                          ),
                          SizedBox(width: 8,),
                          Text( NotificationsList.title  ,style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
                          
                        ],
                      ),
                      SizedBox( height: 4,),
                      Row(mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text( NotificationsList.context,style: TextStyle(fontSize: 14),),
                        ],
                      ),
                      SizedBox(height: 15,),
                      
                      Row( mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text( NotificationsList.Ndate, style: TextStyle(color: Colors.grey, fontSize: 12),),
                        ],
                      ),
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }
}
