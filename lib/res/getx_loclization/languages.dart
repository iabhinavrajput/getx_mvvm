import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {'email_hint': 'Email', 'password_hint': 'Password'},
    'hi_IN': {'email_hint': 'अपना ईमेल दर्ज करें'},
  };
}
