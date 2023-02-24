import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:streamer/common/values/colors.dart';
import 'package:streamer/pages/frame/welcome/controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class  SignInPage extends GetView<WelcomeController> {
  const  SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Sign in page")
      ),
    );
  }
}