import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:streamer/common/values/colors.dart';
import 'package:streamer/pages/frame/welcome/controller.dart';
import 'package:get/get.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({Key? key}) : super(key: key);

  Widget _buildPageHeadTitle(String title) {
    return Container(
      child: Text(title,
          style: TextStyle(
              color: AppColors.primaryElementText,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.bold,
              fontSize: 45
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _buildPageHeadTitle(controller.title),
      ),
    );
  }
}
