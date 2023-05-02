import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  final mykey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Key Form"),),
      body: Container(
        child: Form(
            key: mykey,
            child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(hintText: "Name"),
              validator: (val1){
                if(val1!.isEmpty){
                  return "Please fill";
                }
                return null;
              },
            ),
            SizedBox(height: 15,),
            TextFormField(
              decoration: InputDecoration(hintText:"Age"),
              validator: (val2){
                if(val2!.isEmpty){
                  return "Fill ya 3m";
                }
                return null;
              },
            ),
            ElevatedButton(onPressed: (){
                if(mykey.currentState!.validate()){
                  Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>NextScreen()));
                }else{
                  return null;
                }
            }, child: Text('Done'))
          ],
        )),
      ),
    );
  }
}
class NextScreen extends StatelessWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen Preview"),),
      body: Center(child: Text("Screen2"),),
    );
  }
}
