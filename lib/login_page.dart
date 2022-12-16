import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:firstproject/chattingScreen.dart';
import 'package:firstproject/loading_screen.dart';
import 'package:firstproject/sharedprf/class.dart';

import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernamecontroller=TextEditingController();
  TextEditingController _passcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
              child: Container(
                margin: EdgeInsets.fromLTRB(60,20, 0, 20),
                width: MediaQuery.of(context).size.width / 1.4,
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Welcome Back,\n Log In!",
                        style: TextStyle(fontSize: 22,fontWeight:FontWeight.w500),
                      ),
                      Container(
                        child: Image.asset("assets/images/undraw_Authentication_re_svpt.png"
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller:_usernamecontroller,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.account_circle,
                              color: Colors.pink[900],
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(35),
                            )),
                      ),
                      SizedBox(
                        height: 28,
                      ),
                      TextField(
                        controller: _passcontroller,
                        obscureText: true,
                        obscuringCharacter: '*',
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.pink[900],
                            ),
                            suffixIcon: Icon(
                              Icons.remove_red_eye,
                              color: Colors.pink[900],
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(35),
                            )),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              children: [

                                Text("Remember me!",style: TextStyle(color: Colors.pink[900]),),
                                Expanded(child: Container()),
                                InkWell(child: Text("Forget Password?",style: TextStyle(color: Colors.pink[900]),),
                                onTap: ( ) {
                                  Navigator.pushReplacement(context, (MaterialPageRoute(builder: (context)=>LoadingPage())));
                                },)

                              ],
                            ),


                          ],),
                      ),

                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.pink[900],
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(35)),
                                minimumSize: Size(300, 50)),
                            onPressed: () {
                              InfoPage.pass(false);
                              InfoPage.user(false);
                              Navigator.pushReplacement
                                (context, MaterialPageRoute(builder: (context)=>ChattingScreen()));
                              },
                            child: Text("LOGIN")),
                      ),



                    ]),
              )),
        )
    );
  }
}
