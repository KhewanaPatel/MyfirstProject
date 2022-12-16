import 'package:firstproject/login_page.dart';
import 'package:firstproject/recorver_rpass.dart';
import 'package:firstproject/sharedprf/class.dart';

import 'package:firstproject/signup_page.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController _numberController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Forget Password"),
        backgroundColor: Colors.pink[900],
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset("assets/images/undraw_Forgot_password_re_hxwm.png"),
              SizedBox(height: 10,),
              Text("Enter Your Number ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
              SizedBox(height:40,),
              TextFormField(
                controller: _numberController,
                keyboardType:TextInputType.number,

                decoration: InputDecoration(
                  hintText: "Enter your number",
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Colors.pink[900],
                    ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                    )),),
        SizedBox(height: 20,),
        ElevatedButton(style: ElevatedButton.styleFrom(
          backgroundColor: Colors.pink[900],minimumSize: Size(300,50)
        ),
            onPressed: (){

          Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>RecoverPassword()));
            }, child:Text("SEND"))
            ],
          ),
        ),
      ),

    );
  }
}
