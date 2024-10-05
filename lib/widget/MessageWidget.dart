import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:harvoxx/model/MessageModel.dart';


class MessageWidget extends StatefulWidget {
  const MessageWidget({
    super.key,
    required this.Messages,
  });
  final MessageModel Messages;

  @override
  State<MessageWidget> createState() => _MessageWidgetState();
}

class _MessageWidgetState extends State<MessageWidget> {


  @override
  Widget build(BuildContext context) {
    return widget.Messages.isSentByMe? 
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: 
             Alignment.centerRight,
         
         padding: EdgeInsets.symmetric(vertical: 5),
        // width: 200,
        decoration: BoxDecoration(
            color:
               Color.fromARGB(255, 4, 31, 53),
        
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column( mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.Messages.name,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.amber ),
              ),
              SizedBox(
                height: 1,
              ),
              Text(
                widget.Messages.text,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 10,),
              Row( mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '7:30 Am',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  SizedBox(
                    width: 1,
                  ),
                  Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ) : 

    
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5),
        alignment: 
           Alignment.centerLeft,
           
        
        width: 200,
        decoration: BoxDecoration(
            color:
               Color.fromARGB(255, 63, 64, 65),
        
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column( mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.Messages.name,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.purple ),
              ),
              SizedBox(
                height: 1,
              ),
              Text(
                widget.Messages.text,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
             SizedBox(height: 10,),
              Row( mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '7:30 Am',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  SizedBox(
                    width: 1,
                  ),
                  Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
