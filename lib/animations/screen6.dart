import 'dart:math';

import 'package:flutter/material.dart';

class Screen6 extends StatefulWidget {
  const Screen6({Key? key}) : super(key: key);

  @override
  State<Screen6> createState() => _Screen6State();
}

class _Screen6State extends State<Screen6>{
double padding2 =10;
void toogle(){
  setState(() {
    padding2 = padding2 == 10 ?50:10;
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animations 2"),),
      body: Column(
        children: [
          AnimatedPadding(
            duration: Duration(seconds: 2), padding: EdgeInsets.all(padding2),
            child: Container(
              width: 150,
              height: 200,
              color: Colors.green,
            ),


          ),
          ElevatedButton(onPressed: (){
            toogle();
          }, child: Text("Animate"))
        ],
      )

    );

  }
}
