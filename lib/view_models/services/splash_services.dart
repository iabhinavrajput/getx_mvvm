import 'dart:async';

import 'package:get/get.dart';
import 'package:getx_mvvm/res/routes/routes_name.dart';
import 'package:getx_mvvm/view_models/user_preference/user_preference_view_model.dart';

class SplashServices {
  UserPreferenceViewModel userPreferenceViewModel = UserPreferenceViewModel();
  void isLogin() {
    userPreferenceViewModel.getUser().then((value) {
      print(value.accessToken);
      final token = value.accessToken;
      if (token == null || token.isEmpty || token == 'null') {
        Timer(Duration(seconds: 3), () => Get.toNamed(RoutesName.loginView));
      } else {
        Timer(Duration(seconds: 3), () => Get.toNamed(RoutesName.homeView));
      }
    });
  }
}
