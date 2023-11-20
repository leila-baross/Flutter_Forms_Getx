import 'package:get/get.dart';

class DatePicker2ViewController extends GetxController{
  DateTime dateTime = DateTime.now();

  void setDateTime(DateTime time){
    dateTime = time;
    update();
  }
}