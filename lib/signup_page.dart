import 'package:firstproject/login_page.dart';
import 'package:flutter/material.dart';
class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController _namecont=TextEditingController();
  TextEditingController _passcont=TextEditingController();
  TextEditingController _mailcont=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            Container(margin: EdgeInsets.fromLTRB(50,50,50,0),
                child: Text("Welcome, \nSign Up!",
                  style: TextStyle(fontWeight: FontWeight.w500,
                    fontSize:22,
                  ),
                ),
            ),
            Container(
              child:Image.asset("assets/images/undraw_Sign_in_re_o58h.png"),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: _namecont,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_circle_sharp,color: Colors.pink[900],),
                  hintText: "Username",
                  border:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                  )
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller:_mailcont,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.mail,color: Colors.pink[900],),
                    hintText: "Email ID",
                    suffixText: "@mail.com",
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: _passcont,
                obscuringCharacter: "*",
                obscureText: false,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password,color: Colors.pink[900],),
                    hintText: "Password",
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                    )
                ),
              ),
            ),
             Padding(
               padding: const EdgeInsets.all(20),
               child: ElevatedButton(style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.pink[900],
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(35)),
                   minimumSize: Size(300, 50)),
                   onPressed: (){

                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));

                   }, child:Text("SIGN UP")),
             )




          ],),
      ),


      

    );
  }
}
