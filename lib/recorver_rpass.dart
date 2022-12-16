import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class RecoverPassword extends StatelessWidget {
  const RecoverPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      body:SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 60,300, 0),
              child: IconButton(onPressed: (){}, icon:Icon(Icons.arrow_back_ios_new,color: Colors.black,size:30,)),
            ),
            SizedBox(height: 30,),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Text("Verify Your Number",style:TextStyle(color: Colors.black,fontSize: 40,fontWeight: FontWeight.bold),),
            ),
            Text("Enter your number",style: TextStyle(color: Colors.black,fontSize: 18),),

            SizedBox(height:60),
             Row(
               children: [
                 Container(margin: EdgeInsets.fromLTRB(60, 0, 0, 0),
                  height: 60,width: 60,
                  child: TextFormField(
                    onChanged: (value){
                      if (value.length==1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    inputFormatters: [LengthLimitingTextInputFormatter(1)],style: TextStyle(fontSize: 30),
                    obscureText: false,
                    decoration:InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2,color: Colors.pinkAccent),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder:OutlineInputBorder(
                        borderSide: BorderSide(width: 2,color: Colors.pinkAccent),
                        borderRadius:BorderRadius.circular(20),
                      ),

                    ),
                  ),
            ),
                 Container(margin:EdgeInsets.symmetric(horizontal:10),
                   height: 60,width: 60,
                   child: TextFormField(
                     onChanged: (value){
                       if (value.length==1){
                         FocusScope.of(context).nextFocus();
                       }
                     },
                     textAlign: TextAlign.center,
                     inputFormatters: [LengthLimitingTextInputFormatter(1)],style: TextStyle(fontSize: 30),
                     keyboardType: TextInputType.number,
                     obscureText: false,
                     decoration:InputDecoration(
                       enabledBorder: OutlineInputBorder(
                         borderSide: BorderSide(width: 2,color: Colors.pinkAccent),
                         borderRadius: BorderRadius.circular(20),
                       ),
                         focusedBorder:OutlineInputBorder(
                         borderSide: BorderSide(width: 2,color: Colors.pinkAccent),
                             borderRadius:BorderRadius.circular(20),
                       ),
                     ),
                   ),
                 ),
                 Container(
                   height: 60,width: 60,
                   child: TextFormField(
                     onChanged:(value){
                       if (value.length==1){
                         FocusScope.of(context).nextFocus();
                       }
                     },
                     textAlign: TextAlign.center,
                     inputFormatters: [LengthLimitingTextInputFormatter(1)],style: TextStyle(fontSize: 30),
                     keyboardType: TextInputType.number,
                     obscureText: false,
                     decoration:InputDecoration(
                       enabledBorder: OutlineInputBorder(
                         borderSide: BorderSide(width: 2,color: Colors.pinkAccent),
                         borderRadius: BorderRadius.circular(20),
                       ),
                       focusedBorder:OutlineInputBorder(
                         borderSide: BorderSide(width: 2,color: Colors.pinkAccent),
                         borderRadius:BorderRadius.circular(20),
                       ),
                     ),
                   ),
                 ),
                 Container(margin:EdgeInsets.symmetric(horizontal: 10),
                   height: 60,width: 60,
                   child: TextFormField(
                     onChanged :(value){
                       if(value.length==1){
                         FocusScope.of(context).nextFocus();
                       }
                     },
                     textAlign: TextAlign.center,
                     inputFormatters: [LengthLimitingTextInputFormatter(1)],style:TextStyle(fontSize: 30),
                     keyboardType: TextInputType.number,
                     obscureText: false,
                     decoration:InputDecoration(
                       enabledBorder: OutlineInputBorder(
                         borderSide: BorderSide(width: 2,color: Colors.pinkAccent),
                         borderRadius: BorderRadius.circular(20),
                       ),
                       focusedBorder:OutlineInputBorder(
                         borderSide: BorderSide(width: 2,color: Colors.pinkAccent),
                         borderRadius:BorderRadius.circular(20),
                       ),
                     ),
                   ),
                 ),


               ],
             ),
            SizedBox(height: 10,),
            Column(mainAxisAlignment: MainAxisAlignment.end,
              children: [
              Text("Resend Otp",style:TextStyle(fontSize:18,color: Colors.pink[900]),)

            ],),
            SizedBox(height: 50,),

            Container(
              child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.pink[900],minimumSize:Size(300,50)),

                  onPressed: (){}, child:Text("Verify")),
            )
          ],
        ),
      ),

    );
  }
}
