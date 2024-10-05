import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:harvoxx/homescreens/Tasks.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({super.key});

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int _currentIndex = 0;
  List<Widget> body = const[
   Icon(Icons.home_outlined),
   Icon(Icons.list_alt_outlined),
   Icon(Icons.chat_outlined),
   Icon(Icons.person_outline_rounded),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
      
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
      onTap: (int newIndex ) {
        setState(() {
          _currentIndex = newIndex;
          if (newIndex==0)  Navigator.push(context, MaterialPageRoute(builder: (context)=> TasksWidget()));
        });
      },
      items:const [
        BottomNavigationBarItem(
          label:'Home',
          icon: Icon(Icons.home_outlined),
         ),
         BottomNavigationBarItem(
          label: 'Tasks',
          icon: Icon(Icons.list_alt_outlined) ),
          BottomNavigationBarItem(
          label:'Room',
          icon: Icon(Icons.chat_outlined),
         ),
         BottomNavigationBarItem(
          label:'Profile',
          icon: Icon(Icons.person_outline_rounded),
         ),

      ],
      ),
      
    );
  }
}