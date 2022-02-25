import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/create-new-account.dart';
import 'screens/forget-password.dart';
import 'screens/login-page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter LoginPage',
      theme: ThemeData(
         textTheme: GoogleFonts.josefinSansTextTheme(
           Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
      ),
      //home: LoginPage(),
      initialRoute: '/',
      routes: {
        '/':(context) => LoginPage(),
        'ForgotPassword':(context) => ForgotPassword(),
        'CreateNewAccount':(context) => CreateNewAccount(),

      },
    );
  }
}
