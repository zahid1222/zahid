import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_builder.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  final TextEditingController _namecontroller = TextEditingController();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passcontroller = TextEditingController();
  final TextEditingController _confirmcontroller = TextEditingController();
  String nameerror="";
  String passerror="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('SIGN UP'),
        centerTitle:true,
      ),
        body:Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assets/images/b.jpg"), fit: BoxFit.cover)),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            mycontainer(_namecontroller, 'NAME'),
            SizedBox(
              height:20,
            ),
            mycontainer(_emailcontroller, 'EMAIL'),
            SizedBox(
              height:20,
            ),
            passwordcontainer(_passcontroller, 'PASSWORD'),
            SizedBox(
              height:20,
            ),
            passwordcontainer(_confirmcontroller, 'CONFIRM PASSWORD'),
            SizedBox(
              height:20,
            ),
            ElevatedButton(onPressed: (){

              if(_namecontroller.text.isEmpty)
              {
                setState(() {
                  nameerror='NAME IS EMPTY';
                });
                return ;
              }
              else if(_passcontroller.text!=_confirmcontroller.text)
              {
                setState(() {
                  passerror='PASSSWORD NOT MATCH!!';
                });
                return ;
              }
              else if(!_emailcontroller.text.contains('@') && !_emailcontroller.text.contains('.')) {
                setState(() {
                  passerror='INVALID EMAIL';
                });
                return ;
              }


              showAlertDialog(context);


            }, child:Text("Create Account"),
            ),
            SizedBox(
              height:20,
            ),
            SignInButtonBuilder(
              text: 'Sign in with Email',
              icon: Icons.facebook,
              onPressed: () {},
              backgroundColor: Colors.blueGrey[700]!,
            ),
            SizedBox(
              height:10,
            ),
            SignInButton(
              Buttons.LinkedIn,
              text: 'Sign in with linkedin',
              onPressed: () {},
            ),
            SizedBox(
              height:10,
            ),
            SignInButtonBuilder(
              text: 'Sign in with Email',
              icon: Icons.email,
              onPressed: () {},
              backgroundColor: Colors.blueGrey[700]!,
            )
          ],
        ),
      ),

    );

  }
  showAlertDialog(BuildContext context) {

    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text("Cancel"),
      onPressed:  () {
        Navigator.pop(context);
      },
    );
    Widget continueButton = TextButton(
      child: Text("Continue"),
      onPressed:  () {
        //Navigator.push(context, MaterialPageRoute(builder:(context)=> dashboard(text:"zahid")));
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("AlertDialog"),
      content: Text("Would you like to Move on Dashobared Screen?"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
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
                label: Text(s),
                  prefixIcon: Icon(Icons.people),
                errorText:nameerror,
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
                  errorText:passerror,
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

