
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loginsignupui/palatte.dart';

import '../widgets/widgets.dart';

class CreateNewAccount extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
           children: [
             BackgroundImage(image:'assets/bg.jpeg'),
           Scaffold(
             backgroundColor: Colors.transparent,
            // appBar: AppBar(
            //   title: Text("Create New Account",
            //   style: kBodyText,),
            //   elevation: 0.0,
            //   backgroundColor: Colors.transparent,),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: size.width * 0.2,
                    ),
                    Stack(
                      children: [
                        Center(
                          child: ClipOval(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 4,sigmaY: 4),
                              child: CircleAvatar(
                                radius: size.width * 0.16,
                                backgroundColor: Colors.grey[600]?.withOpacity(0.9),
                                child: Icon(FontAwesomeIcons.user,
                                color: Colors.white,
                                size: size.width*0.15,),),
                            ),
                          ),
                        ),
                        Positioned(
                          top: size.width * 0.17,
                          left: size.width * 0.54,
                          child: Container(
                            height: size.width*0.13,
                            width: size.width*0.2,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                              border: Border.all(
                                color: Colors.white,
                                width: 1
                              ),
                            ),
                            child: Icon(
                              FontAwesomeIcons.arrowUp,color: Colors.white,),
                          ),
                        )
                      ],
                    ),
                      SizedBox(
                      height: size.width * 0.18,
                    ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 32),
                     child: Column(
                       children: [
                          TextInput(
                        icon:FontAwesomeIcons.user , 
                        hint: 'User', 
                        obscureText: false,
                        inputAction: TextInputAction.next,
                        inputType: TextInputType.name,),
                      
                          TextInput(
                        icon:FontAwesomeIcons.user , 
                        hint: 'Email', 
                        obscureText: false,
                        inputAction: TextInputAction.next,
                        inputType: TextInputType.emailAddress,),
                        
                          TextInput(
                        icon:FontAwesomeIcons.user , 
                        hint: 'Password', 
                        obscureText: true,
                        inputAction: TextInputAction.next,
                        ),
                        
                        
                          TextInput(
                        icon:FontAwesomeIcons.user , 
                        hint: 'Comfirm Password', 
                        obscureText: true,
                        inputAction: TextInputAction.done,
                        inputType: TextInputType.name,),
                        SizedBox(height: 10,),
                        RoundedButton(buttonName: 'Register'),
                        SizedBox(height: 24,),
                      
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have an account?",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.bold),),
                            SizedBox(width: 5,),
                             GestureDetector(
                               onTap: () => Navigator.pop(context),
                               child: Text("Login",
                                                         style:TextStyle (color:Colors.blue,fontSize: 18),),
                             ),
                          ],
                          
                        ),
                       
                         SizedBox(width: 20,),
                        
                        
                       ],
                       
                     ),
                   )
              
                  ],
                ),
              ),
           )  
           ],
    );
  }
}