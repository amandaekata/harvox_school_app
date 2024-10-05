import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:harvoxx/homescreens/Notifications.dart';
import 'package:harvoxx/homescreens/Profile.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Profile()));
                    },
                    icon: Icon(Icons.arrow_back)),
                    SizedBox(width: 83,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Store',
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
              height: 35,
            ),
            Container(
              height: 162,
              width: 352,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 207, 207, 207),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(child: Text('Videos')),

            ),
            SizedBox(height: 20,), Container(
              height: 162,
              width: 352,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 207, 207, 207),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(child: Text('Books')),

            ),

          ],
        ),
      ),
    );
  }
}
