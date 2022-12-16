import 'dart:async';
import 'package:firstproject/forget_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5),()=>Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>ForgetPassword())));
  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.pink[900],
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(radius:80,backgroundImage:
            AssetImage("assets/images/bird.jpg"),

            ),
            SizedBox(height: 50,),
            SpinKitRipple(color: Colors.white,size:100),

            Text("LOADING.....",style: TextStyle(fontWeight:FontWeight.bold,
                fontSize: 20,color: Colors.white
            ),),


        ],),
      ),
    );

  }
}
