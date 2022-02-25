

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loginsignupui/palatte.dart';
import 'package:loginsignupui/widgets/widgets.dart';

class ForgotPassword extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        BackgroundImage(image: 'assets/bg.jpeg'),
        Scaffold(
          backgroundColor: Colors.transparent,
          
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            title: Text('Forgot Password',
            style:kBodyText ,),
            ),
            body: Column(
              children: [
                Center(
                  child: Column(
                    children: [
                      SizedBox(height: size.height *0.2,),
                      Container(
                        width: size.width *0.8,
                        child: Text('Enter your email we will send you instruction to reset password',
                        style: kBodyText,),
                      ),
                   
                    ],
                  ),
                  
                ),       
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 36,vertical: 25),
                        child: TextInput(
                           hint: 'Email',
                  icon: FontAwesomeIcons.solidEnvelope,
                  obscureText: false,
                  inputType: TextInputType.emailAddress, ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 36),
                        child: RoundedButton(buttonName: 'Send'),
                      )
              ],
            ),
        )
      ],
    );
  }
}