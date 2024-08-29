import 'package:flutter/cupertino.dart';

class MainProvider extends ChangeNotifier{
 int index = 0;


 void setIndex(int num){
   index = num;
   notifyListeners();
 }
}