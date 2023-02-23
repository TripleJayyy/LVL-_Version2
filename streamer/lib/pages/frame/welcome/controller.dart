import 'package:get/get.dart';
import 'package:streamer/pages/frame/welcome/state.dart';
import 'package:streamer/common/routes/names.dart';

class WelcomeController extends GetxController {
  WelcomeController();
  final title = "LVL Stream .";
  final state = WelcomeState();

  @override
  void onReady() {
    super.onReady();
    Future.delayed(
        const Duration(seconds: 3), () => Get.offAllNamed(AppRoutes.Message));
  }
}
