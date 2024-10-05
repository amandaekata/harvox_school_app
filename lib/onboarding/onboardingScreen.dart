// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:harvoxx/widget/dashWidget.dart';

import '../widget/OnboardingWidget.dart';
import '../login/SignUp.dart';
 

class onboardingScreen extends StatefulWidget {
  const onboardingScreen({super.key});

  @override
  State<onboardingScreen> createState() => onboardingScreenState();
}

class onboardingScreenState extends State<onboardingScreen> {
 PageController _controller =PageController();
 int index =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Column(      crossAxisAlignment: CrossAxisAlignment.start,
       children:  [
         Expanded(
           child: PageView(
            onPageChanged:(value){
              setState(() {
                index = value;
              });
            },
            controller: _controller,
             children:  const [   OnboardingWidget( picture: 'assets/y.png', title: 'Welcome to harvoxx-school',
            subtitle: 'Empowering your journey in tech\neducation.', ),
             OnboardingWidget( picture: 'assets/p2.png', title: 'Discover your path', subtitle: 'Explore a wide range of courses\ntailored to your interest and career goals.',),
               OnboardingWidget( picture: 'assets/p3.png',title: 'Join our community', subtitle: 'Connect with fellow learners,\ninstructors, and industry profesionals.', ),
            
            
           
             ],
           ),
         ),
      
           Padding(
              padding: const EdgeInsets.only(left:20, right: 20, bottom: 35),
              child: Row( 
                    children: [
                     DashWidget(index: index, length: 3),
                      const Spacer(),
                    
                      ElevatedButton(onPressed: (){ 
                        index>=2? Navigator.push(context, MaterialPageRoute(builder: 
                        (context) => SignUP())) :
                        _controller.nextPage(duration: Duration(seconds: 1), curve: Curves.easeIn);
                        
                      },
                       child: const Text('Next',style: TextStyle(color: Colors.black),),
                       style:ElevatedButton.styleFrom(
                         backgroundColor: Colors.amber,
                         shape: RoundedRectangleBorder(borderRadius:
                          BorderRadius.circular(20)),
                        fixedSize: const Size(100, 49),
                       )
                       ,)
                    ],
                  ),
            ),
          
        
       ], 
            ),
          
            




    );
  
  }

 
}
