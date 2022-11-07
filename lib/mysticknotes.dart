import 'package:finalproject/stickynotes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mynotes extends StatefulWidget {
  const mynotes({Key? key}) : super(key: key);

  @override
  State<mynotes> createState() => _mynotesState();
}

class _mynotesState extends State<mynotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(

        foregroundColor: Colors.white,
        onPressed: () {
          // Respond to button press
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const stckynotes()),
          );
        },
        icon: Icon(Icons.add),
        label: Text('MAKE NOTE'),
      ),
      body:Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              ("blogs"),
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 5,
            ),
            Text(("headings"),
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 30,
            ),
           // Flexible(
               // child: buildStreamBuilder()),

          ],

        ),
      ),

    );
  }

}
