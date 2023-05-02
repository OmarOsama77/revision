import 'package:flutter/material.dart';

class ViewModel with ChangeNotifier{
  int counter =0;
  void inccrement(){
   if(counter<50){
     counter+=1;
     notifyListeners();
   }

  }
  void decrement(){
        if(counter!=0){
          counter-=1;
          notifyListeners();
        }
  }
}