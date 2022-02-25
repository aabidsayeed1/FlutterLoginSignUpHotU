// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:loginsignupui/palatte.dart';

import '../widgets/widgets.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  
    return Stack(
      children: [
        BackgroundImage(image: 'assets/bg.jpeg',),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children :[
                  Container(
                    height: 150,
                    child: Center(
                      child: Text('MazXha YUP',
                      style: kHeading,),
                    ),
                  ),
                  SizedBox(height: 100,),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                       
                        TextInput(
                          obscureText: false,
                          icon: FontAwesomeIcons.solidEnvelope,
                          hint: 'Email',
                          inputType: TextInputType.emailAddress,
                          inputAction: TextInputAction.next,
                        ),
                         TextInput(
                          obscureText: true,
                          icon: FontAwesomeIcons.lock,
                          hint: 'Password',
                          inputAction: TextInputAction.done,
                        ),
                        GestureDetector(
                          onTap: (() => Navigator.pushNamed(context, 'ForgotPassword')),
                          child: Text('Forget Password?',
                          style: kBodyText,),
                        ),
                        SizedBox(height: 100,),
                        RoundedButton(buttonName: 'Login',),
                        SizedBox(height: 100,),
                        Center(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(
                                color: Colors.white,
                                width: 1,
                              ))
                            ),
                            child: GestureDetector(
                              onTap: (() => Navigator.pushNamed(context, 'CreateNewAccount')),
                              child: Text('Create New Account',
                              style: kBodyText,
                              ),
                            ),
                          ),
                        )
                  
                      ],
                    ),
                  )
                ]
              ),
            ),
          ),
        )
      ],
    );
  }
}




