
import 'package:flutter/material.dart';


import 'package:harvoxx/homescreens/DashBoardScreen.dart';
import 'package:harvoxx/login/SignUp.dart';

import '../passwords/ForgotPassword.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool ishide = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column( crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text('Welcome Back', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w100, color: Color.fromARGB(255, 92, 102, 107)),),
            const Text('Sign in', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
            const SizedBox(height: 60,),

            const Text('Email', style: TextStyle(fontSize: 16),),
            const SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration( hintText: 'mhizrachy@gmail.com', hintStyle: const TextStyle(fontSize: 14),
                border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(5))),
            ),

            const SizedBox(height: 20,),
            const Text('Password', style: TextStyle(fontSize: 16),),
            const SizedBox(height: 10,),
            TextFormField(
              obscureText: ishide,

             // keyboardType: TextInputType.visiblePassword,  
              decoration: InputDecoration( contentPadding: const EdgeInsets.only(left: 12, bottom: 13,top: 8),
                suffix: IconButton(onPressed: (){
                  setState(() {
                    ishide = !ishide;
                  });
                }, icon:ishide?  const Icon(Icons.visibility_off_outlined) :  const Icon(Icons.visibility_outlined)),
                hintText: '*********', hintStyle: const TextStyle(fontSize: 14),
                border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(5))),
          
            ),
            Row( mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextButton(onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> const ForgotPaaword()));
                },
                 child: const Text('forgot password?',  textAlign: TextAlign.end,
                 style: TextStyle(  color: Color.fromARGB(255, 76, 83, 87), fontSize: 12) ,)),
              ],
            ),
            const SizedBox(height: 150,),
             Center(
              child: Column(
                children: [
                  ElevatedButton( style: ElevatedButton.styleFrom(
                    fixedSize: const Size(600, 40),
                    backgroundColor: Colors.amber
                  ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const DashBoardScreen()));
                    }, child: const Text('Sign In')),
                    Row( mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text('Don`t have an account?', style: TextStyle(fontSize: 12),),
                         const Text(' Sign', style: TextStyle(fontSize: 12),),
                        TextButton(
                        onPressed: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUP()));

                        }, child: 
                         const Text('up', style: TextStyle(fontSize: 12 ,color: Color.fromARGB(255, 53, 57, 59)),),),
                        
                      ],
                    )
                ],
              )
                
            )
          ],
        ),
      ),
    );
  }
}