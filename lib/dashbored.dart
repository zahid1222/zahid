import 'package:finalproject/stickynotes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'gallery.dart';
import 'mysticknotes.dart';

class dashbored extends StatefulWidget {
  const dashbored({Key? key}) : super(key: key);

  @override
  State<dashbored> createState() => _dashboredState();
}

class _dashboredState extends State<dashbored> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title:const Text("DASHBORED"),
    centerTitle:true,
    ),
    drawer: Drawer(
      child: Column(
          children: <Widget>[

      UserAccountsDrawerHeader(
      accountEmail: Text('Chzahid77777@gmail.com'),
      accountName: Text('MUHAMMAD ZAHID'),
      currentAccountPicture: CircleAvatar(
        backgroundImage: AssetImage("assets/images/zahid.jpg"),

      ),
    ),
    ListTile(
      leading: Icon(Icons.notes),
    title: Text("Sticky Notes"),
    onTap: () {
    Navigator.push(context, MaterialPageRoute(builder:(context)=> mynotes()));
    },
    ),
    ListTile(
        leading: Icon(Icons.browse_gallery),
    title: Text("GALLERY"),
    onTap: () {
    Navigator.push(context, MaterialPageRoute(builder:(context)=> gallerypage()));
    },

    ),
    ListTile(
      leading: Icon(Icons.account_box),
    title: Text("ACCOUNT"),
    onTap: () {
    //Navigator.push(context, MaterialPageRoute(builder:(context)=> logoutpage()));
    },
    ),
    ListTile(
      leading: Icon(Icons.logout),
    title: Text("LOGOUT"),
    onTap: () {
    //Navigator.push(context, MaterialPageRoute(builder:(context)=> listview()));
    },
    ),


    ],
    )
    ),
    );

  }
}
