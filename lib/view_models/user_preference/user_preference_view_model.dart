import 'package:getx_mvvm/models/login/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferenceViewModel {
  Future<bool> saveUser(UserModel responseModel) async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString('accessToken', responseModel.accessToken.toString());
    return true;
  }

  Future<UserModel>getUser() async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    String? accessToken = sp.getString('accessToken');
    return UserModel(
      accessToken: accessToken,
    );
  }

  Future<bool>removeUser() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.clear();
    return true;
  }
}