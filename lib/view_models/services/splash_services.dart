import 'dart:async';

import 'package:get/get.dart';
import 'package:getx_mvvm/res/routes/routes_name.dart';

class SplashServices {
  void isLogin() {
    Timer(Duration(seconds: 3), () => Get.toNamed(RoutesName.loginView));
  }
}
