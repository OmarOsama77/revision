import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"),),
      body: Container(alignment: Alignment.center,
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, "/first");
            }, child: Text("Navigate to push")),
            SizedBox(height: 25,),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, "/screen1");
            }, child: Text("Navigate to key form")),
            SizedBox(height: 25,),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, "/screen2");
            }, child: Text("Navigate to auto compelete")),
            SizedBox(height: 25,),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, "/screen3");
            }, child: Text("Navigate to provider")),
            SizedBox(height: 25,),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, "/screen4");
            }, child: Text("Navigate animations")),
            SizedBox(height: 25,),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, "/screen5");
            }, child: Text("Navigate Api")),
            SizedBox(height: 25,),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, "/screen6");
            }, child: Text("Navigate animation2")),

          ],
        ),
      ),
    );
  }
}
