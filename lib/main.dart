
import 'package:finalproject/startpage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'login.dart';
void main()    {
 // WidgetsFlutterBinding.ensureInitialized();
 // await Firebase.initializeApp(
  //  name: 'Viewo - Test Sunny',
  //);
  runApp(const MyApp());

}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
    MaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(
        //fontFamily: 'Schyler',
        primarySwatch: Colors.blue,

      ),
     home: login(),
        );

  }
}
