import 'package:flutter/material.dart';


class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
     child:ListView(
       children: [
         UserAccountsDrawerHeader(
           accountName:Text("XYZ",style: TextStyle(fontWeight: FontWeight.bold),),
           accountEmail:Text("xyz@gmail.com"),
         currentAccountPicture: CircleAvatar(
           child: ClipOval(child:Image.asset("assets/images/bird2.jpg",
             width: 90,height: 90,fit: BoxFit.cover,)
         ),
         ),
           decoration: BoxDecoration(

             image: DecorationImage(
               image: AssetImage("assets/images/abc_04.jpg"),fit: BoxFit.fill
             ),

           ),

         ),
         ListTile(
           leading: Icon(Icons.favorite),
           title: Text("Favorites",style: TextStyle(fontSize:15),
           ),
           onTap: ()=>null,
         ),
         ListTile(
           leading: Icon(Icons.share),
           title: Text("Share",style: TextStyle(fontSize:15),),
           onTap: ()=>null,),
         ListTile(
           leading: Icon(Icons.notifications),
           title: Text("Notifications",style: TextStyle(fontSize:15),),
           onTap: ()=>null,),
         Divider(),
         ListTile(
           leading: Icon(Icons.settings),
           title: Text("Setting",style: TextStyle(fontSize:15),),
           onTap: ()=>null,),
         ListTile(
           leading: Icon(Icons.privacy_tip),
           title: Text("Privacy",style: TextStyle(fontSize:15),),
           onTap: ()=>null,),
         Divider(),
         ListTile(
           leading: Icon(Icons.exit_to_app),
           title: Text("Exit",style: TextStyle(fontSize:15),),
           onTap: ()=>null,),



       ],
     ),
    );
  }
}
