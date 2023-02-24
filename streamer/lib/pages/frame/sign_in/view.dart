import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:streamer/common/values/colors.dart';
import 'package:streamer/pages/frame/welcome/controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInPage extends GetView<WelcomeController> {
  const SignInPage({Key? key}) : super(key: key);

  Widget _buildLogo() {
    return Container(
      margin: EdgeInsets.only(top: 100.h, bottom: 80.h),
      child: Text(
        "LVL STREAMER .",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: AppColors.primaryText,
            fontWeight: FontWeight.bold,
            fontSize: 34.sp),
      ),
    );
  }

  Widget _buildThirdPartyLogin(String loginType) {
    return Container(
      width: 295.w,
      height: 44.h,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 15.h),
      decoration: BoxDecoration(
          color: AppColors.primaryBackground,
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(0, 1))
          ]),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(left: 40.w, right: 30.w),
            child: Image.asset("assets/icons/google.png"),
          ),
          Container(
            child: const Text(
              "Sign in with Google",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColors.primaryText,
                  fontWeight: FontWeight.normal,
                  fontSize: 14),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primarySecondaryBackground,
      body: Center(
          child: Column(
        children: [
          _buildLogo(),
          _buildThirdPartyLogin("Google", "google"),
          _buildThirdPartyLogin("Facebook, "facebook"),
          _buildThirdPartyLogin("Apple", "apple"),
        ],
      )),
    );
  }
}
