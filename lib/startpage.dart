import 'package:finalproject/login.dart';
import 'package:finalproject/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_builder.dart';

class startpage extends StatefulWidget {
  const startpage({Key? key}) : super(key: key);

  @override
  State<startpage> createState() => _startpageState();
}

class _startpageState extends State<startpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
        constraints: const BoxConstraints.expand(),
    decoration: const BoxDecoration(
    image: DecorationImage(
    image: AssetImage("assets/images/s.jpg"), fit: BoxFit.cover)),

      child:Center(

      child:Column(

        children: [

          const  Text(
              style: TextStyle(fontStyle: FontStyle.italic,fontSize: 40,height: 5,
                  color: Colors.blue),"EasyNotes"),
          Image.asset(
              'assets/images/start.jpg',
              width: 700,
              height: 300,
              fit:BoxFit.fill

          ),
          SizedBox(
            height:20,
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=> login()));
          },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // B
              ),
              child: Text("Login Page")),
          SizedBox(
            height:10,
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=> signup()));
          },
            style: ElevatedButton.styleFrom(
                primary: Colors.black, // B
            ),
              child: Text("Create Account")

          ),
          SizedBox(
            height:5,
          ),
          SignInButtonBuilder(

            text: 'Sign in with Facebook',
            icon: Icons.facebook,
            onPressed: () {},
            backgroundColor: Colors.blueGrey[700]!,
          ),
          SizedBox(
            height:5,
          ),
          SignInButtonBuilder(


            text: 'Sign in with Apple',
            icon: Icons.apple,
            onPressed: () {},
            backgroundColor: Colors.blueGrey[700]!,
          ),
          SizedBox(
            height:5,
          ),
          SignInButtonBuilder(


            text: 'Sign in with Apple',
            icon: Icons.mail,
            onPressed: () {},
            backgroundColor: Colors.blueGrey[700]!,
          ),
      ],
    )

      )
        )
    );
  }
}
