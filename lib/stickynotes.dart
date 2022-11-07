import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class stckynotes extends StatefulWidget {
  const stckynotes({Key? key}) : super(key: key);

  @override
  State<stckynotes> createState() => _stckynotesState();
}

class _stckynotesState extends State<stckynotes> {
  final TextEditingController _titlecontroller = TextEditingController();
  final TextEditingController _descritionontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Sticky Notes'),
        centerTitle:true,
      ),body:Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assets/images/b.jpg"), fit: BoxFit.cover)),


        child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[


              TextField(
            controller:_titlecontroller ,
            cursorColor: Colors.white,

            decoration: InputDecoration(

              label: Text("Title"),
              prefixIcon: Icon(Icons.people),

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
        SizedBox(
          height:20,
        ),


            TextField(

                controller:_descritionontroller ,


                decoration: InputDecoration(
                  label: Text("Description"),
               hintText:"Enter Description..!!!!!",
                  prefixIcon: Icon(Icons.description),

                  focusedBorder: OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.black),
                    borderRadius: new BorderRadius.circular(25.7),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: new BorderSide(color: Colors.black),
                    borderRadius: new BorderRadius.circular(25.7),

                  ),

                ),
              style: TextStyle(fontSize: 10.0, height: 20.0, color: Colors.black),
            ),
        SizedBox(
          height:20,
        ),
              FloatingActionButton(

                foregroundColor: Colors.pink,
                  onPressed: () {

              },

                  child:  Icon(Icons.save),
                backgroundColor: Colors.blue,
              ),
      ]
    ),
      ),


    );
  }




}
