import 'package:flutter/material.dart';
import 'package:flutter_application_1/main_menu.dart';

import 'modules/login/login_screen.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',

      /// Route duoc chay dau tien, co nghia man login duoc khoi tao chay dau tien
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const LoginScreen(),

        /// Dau '/' duoc khai bao la route cua man hinh login
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/main-menu': (context) => const MainMenu(),
      },
    );
  }
}
