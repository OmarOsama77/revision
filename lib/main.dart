import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:revision/home.dart';
import 'package:revision/keyForm/screen1.dart';
import 'package:revision/navigation/first.dart';
import 'package:revision/navigation/second.dart';
import 'package:revision/provider/screen3.dart';
import 'package:revision/provider/viewmodel.dart';

import 'animations/screen4.dart';
import 'animations/screen6.dart';

import 'api/screen5.dart';
import 'autoCompelete/screen2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return ChangeNotifierProvider(
     create: (BuildContext context) {
       return ViewModel();
     },
     child: MaterialApp(
       debugShowCheckedModeBanner: false,
       initialRoute: '/',
       routes: {
         "/":(_)=>Home(),
         "/first":(_)=>First(),
         "/second":(_)=>Second(),
         "/screen1":(_)=>Screen1(),
         "/screen2":(_)=>Screen2(),
         "/screen3":(_)=>Screen3(),
         "/screen4":(_)=>Screen4(),
         "/screen5":(_)=>Screen5(),
         "/screen6":(_)=>Screen6(),

       },
     ),
   );
  }

}

