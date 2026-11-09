import 'package:get/get.dart';
import 'login.dart';

class AppRoutes {

  static const createAccount = '/createAccount';
  static const login = '/login';

  static final pages = [
   GetPage(
    name: login, 
    page: () => LoginScreen()
    ),
  ];
}