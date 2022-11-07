import 'package:finalproject/dashbored.dart';
import 'package:finalproject/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final TextEditingController _namecontroller = TextEditingController();
  final TextEditingController _passcontroller = TextEditingController();
  String? error;
  @override
  Widget build(BuildContext context) {
    return
    Scaffold(
        appBar: AppBar(
          title: Text("LOGIN"),
          centerTitle:true,
        ),

      body:Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
          image: DecorationImage(
          image: AssetImage("assets/images/b.jpg"), fit: BoxFit.cover)),child:Center(

       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           const Text(
             "Easy Notes",
             style: TextStyle(fontStyle: FontStyle.italic,fontSize: 32,height: 5,
                 color: Colors.blue),

           ),
           Image.asset(
               'assets/images/download.png',
               width: 300,
               height: 150,
               fit:BoxFit.fill

           ),
           SizedBox(
             height:20,
           ),
           mycontainer(_namecontroller, "NAME"),
           SizedBox(
             height:20,
           ),
           passwordcontainer(_passcontroller, 'PASSWORD'),
           SizedBox(
             height:20,
           ),
       ElevatedButton(onPressed: (){
         if(_namecontroller.text.isEmpty)
         {
           setState(() {
             error='NAME IS EMPTY';
           });
           return ;
         }

         else if(_passcontroller.text.length!=8)
         {
           setState(() {
             error='PASSSWORD NOT MATCH!!';
           });
           return ;
         }
         Navigator.push(context, MaterialPageRoute(builder:(context)=> dashbored()));

       }, child: Text("LOGIN")),
           TextButton(
             onPressed: () {
               //forgot password screen
             },
             child: const Text('Forgot Password',),
           ),
           SizedBox(
             height:20,
           ),


           Text('New User? Create Account'),
         ElevatedButton(onPressed: (){
           Navigator.push(context, MaterialPageRoute(builder:(context)=> signup()));
         }, child: Text("SIGN UP")),

         ],
       ),
      )
      ),
    );

  }

  Container mycontainer(TextEditingController T,String s)=> Container(
      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          TextField(

              controller:T ,
              cursorColor: Colors.white,
              decoration: InputDecoration(
                filled: true, //<-- SEE HERE
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.people),
                label: Text(s),
                border: OutlineInputBorder(),
                hintText: 'Enter the NAME',
                focusedBorder: OutlineInputBorder(
                  borderSide: new BorderSide(color: Colors.black),
                  borderRadius: new BorderRadius.circular(25.7),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: new BorderSide(color: Colors.black),
                  borderRadius: new BorderRadius.circular(25.7),
                ),
              )
          ),
        ],
      )
  );
  Container passwordcontainer(TextEditingController T,String s)=> Container(
      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[


          TextField(
              obscureText: true,
              controller:T ,
              cursorColor: Colors.white,
              decoration: InputDecoration(
                filled: true, //<-- SEE HERE
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.lock),
                label: Text(s),

                focusedBorder: OutlineInputBorder(
                  borderSide: new BorderSide(color: Colors.black),
                  borderRadius: new BorderRadius.circular(25.7),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: new BorderSide(color: Colors.black),
                  borderRadius: new BorderRadius.circular(25.7),
                ),
              )
          ),
        ],
      )

  );
}
