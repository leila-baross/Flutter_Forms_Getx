import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextInputViewController extends GetxController{
  TextEditingController mail = TextEditingController();
  TextEditingController pwd   = TextEditingController();


  void showData(){
    if(mail.text!="" && pwd.text!=""){
       Get.dialog(CupertinoAlertDialog(
        title: Text("Sikeres belépés!"),
        content: Column(children: [
          Text(mail.text),
          Text(pwd.text),
        ],),
        actions: [
          CupertinoDialogAction(child: Text("Ok"), onPressed: () {
            Get.back();
          },),
        ],
      ));
    } else if(mail.text==""){
       Get.dialog(CupertinoAlertDialog(
        title: Text("Belépési hiba!"),
        content: Text("Nem adta meg az emailed!"),
        actions: [
          CupertinoDialogAction(child: Text("Ok"), onPressed: () {
            Get.back();
          },),
        ],
      ));
    } else{
      Get.dialog(CupertinoAlertDialog(
        title: Text("Belépési hiba!"),
        content: Text("Nem adta meg a jelszót!"),
        actions: [
          CupertinoDialogAction(child: Text("Ok"), onPressed: () {
            Get.back();
          },),
        ],
      ));
    }
  }
}