import 'package:get/get.dart';
import 'package:streamer/pages/frame/welcome/state.dart';

class WelcomeController extends GetxController{
  WelcomeController();
  final title = "LVL Stream .";
  final state  = WelcomeState();

  @override
  void onReady(){
    super.onReady();
    print("Welcom controller");
  }
}