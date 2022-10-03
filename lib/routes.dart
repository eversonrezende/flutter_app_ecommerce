import 'package:atividade1/routes/info_page.dart';
import 'package:atividade1/routes/initial_page.dart';
import 'package:atividade1/routes/login_page.dart';
import 'package:atividade1/routes/register_form.dart';
import 'package:atividade1/routes/home_page.dart';
import 'package:atividade1/routes/success_screen.dart';
import 'package:flutter/material.dart';

class RouterGenerator {
  static const String initialPage = '/';
  static const String loginPage = '/login';
  static const String registerForm = '/register';
  static const String homePage = '/home';
  static const String infoPage = '/info';
  static const String successScreen = '/success';


  RouterGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case initialPage:
        return MaterialPageRoute(
          builder: (_) => const InitialPage(),
        );
      case loginPage:
        return MaterialPageRoute(
          builder: (_) => const LoginPage(),
        );
      case registerForm:
        return MaterialPageRoute(
          builder: (_) => RegisterForm(),
        );
      case homePage:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );
      case infoPage:
        return MaterialPageRoute(
          builder: (_) => const InfoPage(),
        );
      case successScreen:
        return MaterialPageRoute(
          builder: (_) => const SuccessScreen(),
        );
      default:
        throw const FormatException(
          "Rota não encontrada",
        );
    }
  }
}
