import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:streamer/common/routes/names.dart';
import 'package:streamer/pages/profile/state.dart';

import '../../common/store/user.dart';

class ProfileController extends GetxController {
  ProfileController();
  final title = "LVL Stream .";
  final state = ProfileState();

  void goLogOut() async{
    await GoogleSignIn().signOut();
    await UserStore.to.onLogout();
  }
}
