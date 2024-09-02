import 'package:flutter/cupertino.dart';
import 'package:todo_assinment/layout/screens/settings_screen.dart';
import 'package:todo_assinment/layout/screens/task_screen.dart';

class MainProvider extends ChangeNotifier{
 int index = 0;
 DateTime selectedDate = DateTime.now();
List<Widget>Screens=[
  TaskScreen(),
  SettingsScreen()
];

 void setIndex(int num){
   index = num;
   notifyListeners();
 }

 void setDate(DateTime datetime){
   selectedDate = datetime;
   notifyListeners();

 }
}