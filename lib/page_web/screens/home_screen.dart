import 'package:flutter/material.dart';
import 'package:portafolio/page_web/screens/perfil.dart';
import 'package:portafolio/page_web/screens/rigth.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF0D0D0D), Color(0xFF1A1A2E), Color(0xFF162447)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: const EdgeInsets.all(20),
        child: DefaultTextStyle(
          style: const TextStyle(
            fontSize: 19.0,
            fontFamily: 'Agne',
            color: Colors.white,
          ),
          child: screenWidth > 800
              ? Row(
                  children: [
                    Expanded(child: Rigth()),
                    const SizedBox(width: 20),
                    Expanded(
                      child: SingleChildScrollView(child: imagePerfil(context)),
                    ),
                  ],
                )
              : SingleChildScrollView(
                  child: Column(
                    children: [
                      imagePerfil(context),
                      const SizedBox(height: 20),
                      Rigth(),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
