import 'package:flutter/material.dart';
import 'package:portafolio/page_web/fuctions/gradient_background.dart';
import 'package:portafolio/page_web/screens/perfil.dart';
import 'package:portafolio/page_web/screens/rigth.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ValueNotifier<Offset> _mousePosition = ValueNotifier(Offset.zero);
  bool _click = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: GestureDetector(
        onTapDown: (_) => setState(() => _click = true),
        onTapUp: (_) => setState(() => _click = false),
        child: MouseRegion(
          onHover: (event) => _mousePosition.value = event.position,
          child: ValueListenableBuilder<Offset>(
            valueListenable: _mousePosition,
            builder: (_, position, __) {
              return TweenAnimationBuilder<Offset>(
                tween: Tween<Offset>(begin: position, end: position),
                duration: const Duration(milliseconds: 300),
                builder: (_, animatedPosition, __) {
                  return MouseGradientBackground(
                    click: _click,
                    mousePosition: animatedPosition,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: DefaultTextStyle(
                        style: const TextStyle(
                          fontSize: 19.0,
                          fontFamily: 'Agne',
                          color: Colors.white,
                        ),
                        child: screenWidth > 700
                            ? Row(
                                children: [
                                  Expanded(
                                    child: SingleChildScrollView(
                                      child: Perfil(),
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Expanded(child: Rigth()),
                                ],
                              )
                            : SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Perfil(),
                                    const SizedBox(height: 20),
                                    Rigth(),
                                  ],
                                ),
                              ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
