import 'package:flutter/material.dart';

class MouseGradientBackground extends StatelessWidget {
  final Offset mousePosition;
  final Widget child;
  final bool click;

  const MouseGradientBackground({
    super.key,
    required this.mousePosition,
    required this.child,
    this.click = false,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: [
            const Color.fromARGB(255, 27, 29, 136).withOpacity(0.85),
            const Color(0xFF0A192F),
          ],
          center: Alignment(
            (mousePosition.dx / size.width) * 2 - 1,
            (mousePosition.dy / size.height) * 2 - 1,
          ),
          radius: 0.2, // un poco más grande para efecto suave
        ),
      ),
      child: child,
    );
  }
}
