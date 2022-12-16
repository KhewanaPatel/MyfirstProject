import 'package:firstproject/login_page.dart';
import 'package:firstproject/sharedprf/class.dart';
import 'package:flutter/material.dart';
import 'package:firstproject/drawer.dart';

class ChattingScreen extends StatefulWidget {
  const ChattingScreen({Key? key}) : super(key: key);

  @override
  State<ChattingScreen> createState() => _ChattingScreenState();
}

class _ChattingScreenState extends State<ChattingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          InfoPage.pass(true);
          InfoPage.pass(true);
          Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginPage()));
        },
      child: Icon(Icons.arrow_back,color: Colors.white,),),
      appBar: AppBar(
        backgroundColor: Colors.pink[900],
        title: Text(
          "Chatting Screen",
          style: TextStyle(
            fontSize: 20,
          ),),),
      drawer:DrawerPage(),
      body: GestureDetector(
        onTap:() {FocusScope.of(context).requestFocus(FocusNode()
        );
          },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.pink[900],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Container(

                          child: Icon(
                        Icons.search_sharp,
                        size: 30,
                      ),
                        margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      ),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search"
                          ),
                        ),

                      ),
                    ],
                  ),
                ),
              Container(margin: EdgeInsets.fromLTRB(0,5, 5, 0),
                child: Stack(children: [
                  Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(radius:30,backgroundImage: AssetImage("assets/images/boys.jpg"),),
                  ),
                  SizedBox(width: 10,),
                  Positioned(
                    top: 0,bottom:50,left: 100,right: 20,
                    child: Row(children: [
                      Text("Patham Patel",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
                      SizedBox(width: 100,),
                      Text("8:15")
                    ],),
                  ),
                  Positioned(
                    top: 0,bottom:0,left: 100,right: 20,
                    child: Row(children: [
                      Text("hello there",style: TextStyle(fontSize:15),),
                    ],),
                  ),



                ],),
              ),
                Container(margin: EdgeInsets.fromLTRB(0,5, 5, 0),
                  child: Stack(children: [
                    Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(radius:30,backgroundImage: AssetImage("assets/images/bird2.jpg"),),
                    ),
                    SizedBox(width: 10,),
                    Positioned(
                      top: 0,bottom:50,left: 100,right: 20,
                      child: Row(children: [
                        Text("Kaira ",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
                        SizedBox(width: 170,),
                        Text("9:35")
                      ],),
                    ),
                    Positioned(
                      top: 0,bottom:0,left: 100,right: 20,
                      child: Row(children: [
                        Text("hello there",style: TextStyle(fontSize:15),),
                      ],),
                    ),



                  ],),
                ),
                Container(margin: EdgeInsets.fromLTRB(0,5, 5, 0),
                  child: Stack(children: [
                    Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(radius:30,backgroundImage: AssetImage("assets/images/girls12.jpg"),),
                    ),
                    SizedBox(width: 10,),
                    Positioned(
                      top: 0,bottom:50,left:100,right: 20,
                      child: Row(children: [
                        Text("Kaira",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
                        SizedBox(width: 170,),
                        Text("1:00")
                      ],),
                    ),
                    Positioned(
                      top: 0,bottom:0,left: 100,right: 20,
                      child: Row(children: [
                        Text("hello there",style: TextStyle(fontSize:15),),
                      ],),
                    ),
                  ],),
                ),
                Container(margin: EdgeInsets.fromLTRB(0,5, 5, 0),
                  child: Stack(children: [
                    Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(radius:30,backgroundColor:Colors.yellow,backgroundImage: AssetImage("assets/images/happyv2.png"),),
                    ),
                    SizedBox(width: 10,),
                    Positioned(
                      top: 0,bottom:50,left: 100,right: 20,
                      child: Row(children: [
                        Text("Nimesh",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
                        SizedBox(width: 150,),
                        Text("9:35")
                      ],),
                    ),
                    Positioned(
                      top: 0,bottom:0,left: 100,right: 20,
                      child: Row(children: [
                        Text("hello there",style: TextStyle(fontSize:15),),
                      ],),
                    ),
                  ],),
                ),




              ],
            ),
          ),
        ),
      ),
    );
  }
}
