import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:harvoxx/homescreens/Certificate.dart';
import 'package:harvoxx/homescreens/Notifications.dart';

class DownloadCertificate extends StatefulWidget {
  const DownloadCertificate({super.key});

  @override
  State<DownloadCertificate> createState() => _DownloadCertificateState();
}

class _DownloadCertificateState extends State<DownloadCertificate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column( mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
      Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Certificate()));
                    },
                    icon: Icon(Icons.arrow_back)),
                    SizedBox(width: 80,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Certificate',
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
              height: 600,
            ),
            Center(
              child: Row( mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(style: ElevatedButton.styleFrom(
                          fixedSize: Size(123, 40),
                          backgroundColor: Colors.amber
                        ),
                          onPressed: (){
                           
                          }, child: Text('Download')),
                          SizedBox(width: 10,),
            
                           ElevatedButton(style: ElevatedButton.styleFrom( 
                            side: BorderSide(color: Colors.amber),
                          fixedSize: Size(123, 40),
                          backgroundColor: Colors.white
                          
                        ),
                          onPressed: (){
                           
                          }, child: Text('Share', style: TextStyle(color: Colors.amber),)),
            
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}