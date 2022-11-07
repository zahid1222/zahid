import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'dart:async';
class gallerypage extends StatefulWidget {
  const gallerypage({Key? key}) : super(key: key);


  @override
  State<gallerypage> createState() => _gallerypageState();
}

class _gallerypageState extends State<gallerypage> {
  File ? file;
  ImagePicker image=ImagePicker();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("GALLERY"),
        ),
        body: Center(
            child: Column(
              children: [
                Container(

                  child:file==null ? Icon(
                    Icons.image,
                    size:50,
                  )
                      :Image.file(file!,
                      fit:BoxFit.fill),

                ),
                MaterialButton(onPressed: (){
                  getgall();
                }
                    ,color: Colors.cyan
                    ,child:Text("GALLERY PHOTO")),
                SizedBox(
                  height:20,
                ),

                MaterialButton(onPressed: (){


                  gecam();
                },color: Colors.cyan

                    ,child:Text("TAKE PHOTO"))
              ],

            )
        )


    );

  }
  getgall() async
  {
    //List<XFile>? p=await image.pickMultiImage(imageQuality: 10);
    var img = await image.pickImage(source: ImageSource.gallery);
    setState(() {
      file=File(img!.path);
    });

  }
  gecam() async
  {
    var img= await image.getImage(source: ImageSource.camera);
    setState(() {
      file=File(img!.path);
    });
  }

}