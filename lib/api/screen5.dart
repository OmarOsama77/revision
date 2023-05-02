import 'package:flutter/material.dart';
import 'package:revision/api/apiServices.dart';

class Screen5 extends StatelessWidget {
  const Screen5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Api"),),
        body: FutureBuilder(
          future: ApiServices.getData(),
          builder: (_,snapshoot){
            if(snapshoot.hasData){
              return ListView.builder(itemBuilder:(ctx,index){
                final posts = snapshoot.data![index];
                return ListTile(
                  title: Text(posts.body),
                  subtitle: Text(posts.id.toString()),
                );
              });
            }else if(snapshoot.hasError){
              print("Error in snaphoot");
            }
            return CircularProgressIndicator();
          },
        ),
    );
  }
}
