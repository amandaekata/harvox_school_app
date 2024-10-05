import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:harvoxx/homescreens/ChatPreview.dart';
import 'package:harvoxx/homescreens/Home1.dart';
import 'package:harvoxx/homescreens/Profile.dart';
import 'package:harvoxx/homescreens/Tasks.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  late PageController _controller;
  int index = 0;
  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  List pages = [
    const Home1(),
    TasksWidget(),
    const ChatPreview(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        backgroundColor: Colors.grey,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.grey,
        currentIndex: index,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.list_alt_outlined), label: 'Tasks'),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_outlined), label: 'Room'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded), label: 'Profile'),
        ],
      ),
      body: pages[index],
    );
  }
}
