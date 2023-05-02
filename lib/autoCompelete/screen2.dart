import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
 
  List <String> item = ["Cristiano","Omar","Ronaldo","Suiiiiiiiiiiiiiiiiiiiiiiiiiiii"]; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Auto Compelete"),),
      body: Container(
        child: Autocomplete<String>(optionsBuilder: (TextEditingValue t){
          if(t.text.isEmpty){
            return [];
          }
          return item.where((element) => element.contains(t.text));
        }),
      ),
    );
  }
}
