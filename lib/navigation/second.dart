import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)?.settings.arguments as Map<String,String>;
    String name = data["name"].toString();
    String age  = data['age'].toString();
    return Scaffold(
      appBar: AppBar(title: Text("Second"),),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Text("Name = $name"),
            Text("Age = $age"),
          ],
        ),
      ),
    );
  }
}
