import 'package:flutter/material.dart';
import 'package:portafolio/page_web/go_router.dart';

void main() {
  runApp(Portafolio());
}

class Portafolio extends StatelessWidget {
  const Portafolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      theme: ThemeData(scaffoldBackgroundColor: Colors.transparent),
    );
  }
}
