import 'package:atividade1/routes.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  Color color = const Color.fromARGB(0xFF, 0x40, 0xBF, 0xFF);

  String iconPage = 'assets/images/single_icon_white.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: color,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Image.asset(iconPage),
                iconSize: 72,
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(RouterGenerator.loginPage);
                },
              ),
            ],
          ),
        ));
  }
}
