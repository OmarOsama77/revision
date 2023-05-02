import 'package:flutter/material.dart';

class First extends StatelessWidget {
  TextEditingController name = TextEditingController();
  TextEditingController age = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First"),),
      body: Container(
        child: Column(
          children: [
            TextField(
              controller: name,
              decoration: InputDecoration(
                hintText: "Name",
              ),

            ),
            SizedBox(height: 20,),
            TextField(
              controller: age,
              decoration: InputDecoration(
                hintText: "age",
              ),
            ),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, "/second",arguments: {"name":name.text,"age":age.text});
            }, child: Text("Done"))
          ],
        ),
      ),
    );
  }
}
