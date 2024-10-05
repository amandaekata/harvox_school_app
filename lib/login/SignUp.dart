import 'package:flutter/material.dart';

import 'package:harvoxx/login/SignIn.dart';


class SignUP extends StatefulWidget {
  const SignUP({super.key});

  @override
  State<SignUP> createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  
  bool ishide=true;
  @override
  Widget build(BuildContext context) {
    
    return  Scaffold( 
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column( crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
          children: [
          
                  const Text('You`re welcome!', style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w100, color: Color.fromARGB(255, 92, 102, 107)),),
                const Text('Sign up', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                const SizedBox(height: 50,),
               const  Text('Full name', style: TextStyle(fontSize: 16),),
                const SizedBox(height: 5,),
                TextFormField(
                  decoration: InputDecoration( hintText: 'Rachael Obereni', hintStyle: const TextStyle(fontSize: 14),
                    border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(5))),
                ),
          
                const SizedBox(height: 10,),
                 const Text('Email', style: TextStyle(fontSize: 16),),
                const SizedBox(height: 5,),
                TextFormField(
                  decoration: InputDecoration( hintText: 'mhizrachy@gmail.com', hintStyle: const TextStyle(fontSize: 14),
                    border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(5))),
                ),
          
                const SizedBox(height: 10,), const Text('Admission Number', style: TextStyle(fontSize: 16),),
                const SizedBox(height: 5,),
                TextFormField(
                  decoration: InputDecoration( hintText: 'Hax/Dsp300-C3/0001', hintStyle: const TextStyle(fontSize: 14),
                    border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(5))),
                ),
          
                const SizedBox(height: 10,), const Text('Password', style: TextStyle(fontSize: 16),),
                const SizedBox(height: 5,),
                TextFormField(
                  obscureText: ishide,
                  keyboardType: TextInputType.visiblePassword,  
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
          
                const SizedBox(height: 10,), const Text('Confirm Password', style: TextStyle(fontSize: 16),),
                const SizedBox(height: 5,),
                TextFormField(
                  decoration: InputDecoration( hintText: '*********', hintStyle: const TextStyle(fontSize: 14),
                    border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(5))),
                ),
               
                const SizedBox(height: 30,),
                Center(
                  child: Column(
                    children: [
                      ElevatedButton( style: ElevatedButton.styleFrom(
                        fixedSize: const Size(600, 30),
                        backgroundColor: Colors.amber
                      ),
                        onPressed: (){
                          
                        }, child: const Text('Sign Up')),
                        Row( mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text('Already have an account?', style: TextStyle(fontSize: 12),),
                             const Text(' Sign', style: TextStyle(fontSize: 12),),
                            TextButton(
                            onPressed: (){
                               Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignIn()));
          
                            }, child: 
                             const Text('In', style: TextStyle(fontSize: 12 ,color: Colors.amber),),),
                            
                          ],
                        )
                    ],
                  )
                    
                ),
                
              ],
            ),
          
        ),
      );
    
  }
}