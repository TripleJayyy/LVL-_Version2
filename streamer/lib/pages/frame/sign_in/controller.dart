import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:streamer/common/entities/entities.dart';
import 'package:streamer/pages/frame/sign_in/state.dart';

class  SignInController extends GetxController{
  SignInController();
  final state  =  SignInState();

  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'openid'
    ]
  );

  Future<void> handleSignIn(String type) async {
    // email(1),google(2), facebook(3), apple(4), phone(5)
    try{
        if(type=="phone number"){
          if(kDebugMode){
            print("... phone log in ...");
          }
        }else if(type=="google"){
          var user = await _googleSignIn.signIn();
          if(user!=null){
            String? displayName = user.displayName;
            String email = user.email;
            String id = user.id;
            String photoUrl = user.photoUrl??"assets/icons/google.png";
            LoginRequestEntity loginPanelListRequestEntity= LoginRequestEntity();
            loginPanelListRequestEntity.avatar = photoUrl;
            loginPanelListRequestEntity.name = displayName;
            loginPanelListRequestEntity.email = email;
            loginPanelListRequestEntity.open_id = id;
            loginPanelListRequestEntity.type = 2;
          }
        }else{
          if(kDebugMode){
          print("... unsure of log in type ...");
          }
        }
      }catch(e){
      if (kDebugMode){
      print('error with login');
      }
    }
  }
}