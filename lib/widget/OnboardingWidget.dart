import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';


class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget({super.key, 
  required this.picture, required this.title,
  required this.subtitle,});
  final String picture;
  final String title;
  final String subtitle;
 
 

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(20),
      child: Column( crossAxisAlignment: CrossAxisAlignment.start,
         children: [
                   
                     Center(child: Image.asset(picture, width: 299, height: 340,),),
                     SizedBox(height: 65,),
                     Text(title,
                      style: TextStyle( color:
                       Colors.black, fontWeight: FontWeight.bold, fontSize: 26, ),),
                     Text(subtitle, style: TextStyle( color:
                       Colors.black, fontSize: 18, ), ),
                    
                     SizedBox( height: 80,),
                     


              
                         
                     //to do: 
                  ],
    
      ),
    );
  }
}