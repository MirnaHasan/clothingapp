import 'package:get/get.dart';

class Words implements Translations {
  static const appName = 'appName';
  static const login = 'login';
  static const welcome = 'welcome';
  static const register = 'register';
  static const forgotPassword = 'forgot Password';
  static const userName = 'userName';
  static const password = 'password';
  static const email = 'email';
  static const phonenumber = 'PhoneNumber';
  static const dontHaveAccount = 'dontHaveAccount';
  static const total = 'total';

  @override
  Map<String, Map<String, String>> get keys => {
        'ar': {
          total : 'المجموع',
          dontHaveAccount : 'ليس لديك حساب ؟',
          appName: 'متجر ملابس',
          login: 'تسجيل الدخول',
          welcome: "مرحبا بك في متجر ملابس",
          register: 'تسجيل جديد',
          forgotPassword: 'نسيت كلمة المرور',
          userName : 'اسم المستخدم',
          password : 'كلمة السر',
          email : 'البريد الالكتروني',
           phonenumber:"رقم الهاتف"
        },
        'en': {
          total : 'Total',
          dontHaveAccount : "Don't have an account ?",
          appName: "Clothes Store",
          login: 'Login',
          welcome: "Welcome To Clothes Store",
          register: 'Register',
          forgotPassword: 'Forgot Password',
          userName : 'User Name',
          password : 'Password',
          email : 'Email',
          phonenumber:"PhoneNumber"
        },
      };
}
