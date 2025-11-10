import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/models/login/user_model.dart';
import 'package:getx_mvvm/repository/login_repository/login_repository.dart';
import 'package:getx_mvvm/res/routes/routes_name.dart';
import 'package:getx_mvvm/utils/utils.dart';
import 'package:getx_mvvm/view_models/user_preference/user_preference_view_model.dart';

class LoginViewModel extends GetxController {
  final _api = LoginRepository();
  UserPreferenceViewModel userPreferenceViewModel = UserPreferenceViewModel();
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

  void loginApi() {
    Map data = {
      'email': emailController.value.text,
      'password': passwordController.value.text,
    };
    _api
        .loginApi(data)
        .then((value) {
          Utils.snackBar(
            'Login',
            (value is Map && value['message'] != null)
                ? value['message'].toString()
                : 'Login success',
          );
          userPreferenceViewModel
              .saveUser(UserModel.fromJson(value))
              .then((value) {
                Get.toNamed(RoutesName.homeView);
              })
              .onError((error, stackTree) {});
        })
        .onError((error, stackTrace) {
          Utils.snackBar('Error', error.toString());
        });
  }
}
