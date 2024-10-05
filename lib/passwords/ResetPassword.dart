import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';


import '../homescreens/Home1.dart';
import 'MoveOn.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  bool ishide = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 120),
      child: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'New password',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            TextFormField(
              obscureText: ishide,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 12, bottom: 13, top: 8),
                  suffix: IconButton(
                      onPressed: () {
                        setState(() {
                          ishide = !ishide;
                        });
                      },
                      icon: ishide
                          ? Icon(Icons.visibility_off_outlined)
                          : Icon(Icons.visibility_outlined)),
                  hintText: '*********',
                  hintStyle: TextStyle(fontSize: 14),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
            SizedBox(
              height: 30,
            ),
            Row( mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [ 
                const Text(
                  ' New password confirmation:',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            TextFormField(
              obscureText: ishide,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 12, bottom: 13, top: 8),
                  suffix: IconButton(
                      onPressed: () {
                        setState(() {
                          ishide = !ishide;
                        });
                      },
                      icon: ishide
                          ? Icon(Icons.visibility_off_outlined)
                          : Icon(Icons.visibility_outlined)),
                  hintText: '*********',
                  hintStyle: TextStyle(fontSize: 14),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
            SizedBox(
              height: 100,
            ),
            Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(600, 40),
                      backgroundColor: Colors.amber),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: MoveOn(),
                          actions: [ 
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                   
                                    backgroundColor: Colors.amber),
                                onPressed: () {
                                   Navigator.push(context, MaterialPageRoute(builder: (context)=> Home1()));
                                },
                                child: Text('Ok')),
                          ],
                        );
                      },
                    );
                  },
                  child: Text('Reset Password')),
            ),
          ],
        ),
      ),
    );
  }
}
