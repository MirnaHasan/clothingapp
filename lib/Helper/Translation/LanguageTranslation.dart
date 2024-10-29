import 'package:get/get.dart';

class Words extends Translations {
  static const appName = 'appName';
  @override
  Map<String, Map<String, String>> get keys => {
        'ar': {appName: 'متجر ملابس'},
        'en': {appName: "Clothes Store"},
      };
}
