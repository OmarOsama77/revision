import 'dart:math';

import 'package:flutter/material.dart';

class Screen4 extends StatefulWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  bool big = false;
  double op=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 180),
        child: Center(
          child: Column(
            children: [
              TweenAnimationBuilder(
                curve: Curves.easeInQuint,
                onEnd: (){
                  setState(() {
                    op=1;
                  });
                },
                  tween: Tween<double>(begin: 180,end: 2*pi),
                  duration: Duration(seconds: 2),
                  builder: (_,dynamic value,__){
                      return Transform.rotate(angle: value,child:  Icon(Icons.flash_on,color: Colors.red,size: value,),);
                  }
              ),
                AnimatedOpacity(opacity: op, duration:Duration(seconds: 1),child: Text("OMAR",),)
            ],
          ),
        ),
      ),
    );
  }
}
/*
Icon(
                        Icons.flash_on,
                        color: Colors.red,
                        size: value,
                      );
 */