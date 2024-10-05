import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';


import 'OTPform.dart';
import 'ResetPassword.dart';


class ForgotPaaword extends StatefulWidget {
  const ForgotPaaword({super.key});

  @override
  State<ForgotPaaword> createState() => _ForgotPaawordState();
}

class _ForgotPaawordState extends State<ForgotPaaword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 60),
        child: Column(
          children: [
            Text(
              'Forgot password?',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 90,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Input your email address',
                  hintStyle: TextStyle(fontSize: 14),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
            SizedBox(
              height: 60,
            ),
            Center(
              child: Column(
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(600, 40),
                          backgroundColor: Colors.amber),
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=> NextPage()));

                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('Enter the OTP'),
                              content: OtpForm(),
                              actions: [ 
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                       
                                        backgroundColor: Colors.amber),
                                    onPressed: () {
                                       Navigator.push(context, MaterialPageRoute(builder: (context)=> ResetPassword()));
                                    },
                                    child: Text('Next')),
                              ],
                            );
                          },
                        );
                      },
                      child: Text('Next')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
