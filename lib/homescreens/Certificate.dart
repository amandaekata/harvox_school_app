import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:harvoxx/homescreens/DownloadCertificate.dart';
import 'package:harvoxx/homescreens/Notifications.dart';
import 'package:harvoxx/homescreens/Profile.dart';

class Certificate extends StatefulWidget {
  const Certificate({super.key});

  @override
  State<Certificate> createState() => _CertificateState();
}

class _CertificateState extends State<Certificate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column( mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Profile()));
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
              height: 25,
            ),
            Container(height: 50, width: 352,
            decoration: BoxDecoration(color: Color.fromARGB(255, 199, 197, 197), borderRadius: BorderRadius.circular(10)),
            child: 
             Padding(
               padding: const EdgeInsets.all(5),
               child: Center(
                 child: Row(mainAxisAlignment: MainAxisAlignment.start,
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                  Icon(Icons.verified_outlined),
                  SizedBox(width: 10,),
                  Text('Acceptance Certificate', style: TextStyle(fontSize: 14),),
                  Spacer(),
                  IconButton(onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=> DownloadCertificate()));
                  }, icon: Icon(Icons.arrow_forward_ios_sharp)),
                  
                            
                           ],
                            
                           ),
               ),
             ),

            ),
            SizedBox(height: 10,),
              Container(height: 50, width: 352,
            decoration: BoxDecoration(color: Color.fromARGB(255, 199, 197, 197), borderRadius: BorderRadius.circular(10)),
            child: 
             Padding(
               padding: const EdgeInsets.all(5),
               child: Center(
                 child: Row(mainAxisAlignment: MainAxisAlignment.start,
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                  Icon(Icons.book_outlined),
                  SizedBox(width: 10,),
                  Text('Graduation Certificate', style: TextStyle(fontSize: 14),),
                  Spacer(),
                  IconButton(onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=> DownloadCertificate()));
                  }, icon: Icon(Icons.arrow_forward_ios_sharp)),
                  
                            
                           ],
                            
                           ),
               ),
             ),

            ),



          ],
        ),
      ),
    );
  }
}