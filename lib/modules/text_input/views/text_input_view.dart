import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forms/modules/text_input/controllers/text_input_view_controller.dart';
import 'package:get/get.dart';

class TextInputView extends StatelessWidget {
  TextInputViewController controller = Get.put(TextInputViewController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TextInputViewController>(
      init: controller,
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Login"),
            centerTitle: true,
          ),
          body:
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  controller: controller.mail,
                  decoration: InputDecoration(border: OutlineInputBorder(),
                  label: Text("Email"),
                  hintText: "Add meg az emailed!",
                  icon: Icon(Icons.mail_outlined, color: Colors.black,),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  controller: controller.pwd,
                  obscureText: true,
                   decoration: InputDecoration(border: OutlineInputBorder(),
                   label: Text("Jelszó"),
                   hintText: "Add meg az jelszavadat!",
                   icon: Icon(Icons.lock_outlined, color: Colors.black,),
                   ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: CupertinoButton.filled(child: Text("Login"), onPressed: () {
                  controller.showData();
                },
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}