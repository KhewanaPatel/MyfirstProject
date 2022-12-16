import 'package:firstproject/chattingScreen.dart';
import 'package:firstproject/forget_password.dart';
import 'package:firstproject/front_Page.dart';
import 'package:firstproject/loading_screen.dart';
import 'package:firstproject/login_page.dart';
import 'package:firstproject/recorver_rpass.dart';
import 'package:firstproject/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:firstproject/drawer.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      debugShowCheckedModeBanner:false,
      home:ChattingScreen(),
    );
  }
}

