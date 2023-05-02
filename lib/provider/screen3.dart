import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:revision/provider/viewmodel.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = Provider.of<ViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Text("Amount ${data.counter}"),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      data.inccrement();
                    },
                    child: Text("Increment")),
                SizedBox(width: 15,),
                ElevatedButton(
                    onPressed: () {
                      data.decrement();
                    },
                    child: Text("Decrement"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
