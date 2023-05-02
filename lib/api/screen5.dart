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
        builder: (ctx,snapshoot){
          if(snapshoot.hasData){
            return ListView.builder(itemBuilder: (ctx,index){
              final post=snapshoot.data![index];
              return ListTile(
                title: Text(post.title),
                subtitle: Text(post.id.toString()),

              );
            });
          }else if (snapshoot.hasError){
            return Center(
              child: Text('${snapshoot.error}'),
            );
          }else{
           return CircularProgressIndicator();
          }

        },
      ),
    );
  }
}
