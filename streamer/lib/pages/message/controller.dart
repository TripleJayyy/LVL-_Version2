import 'package:get/get.dart';
import 'package:streamer/pages/message/state.dart';
import 'package:streamer/common/routes/names.dart';

class  MessageController extends GetxController{
  MessageController();
  final state  =  MessageState();

  void goProfile() async{
    await Get.toNamed(AppRoutes.Profile);
  }
}