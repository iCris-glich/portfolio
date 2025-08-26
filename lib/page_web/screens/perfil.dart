import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget imagePerfil(context) {
  return Column(
    children: [
      const Text("Sobre mi:", style: TextStyle(fontSize: 40)),
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          'assets/images/WhatsApp Image 2025-08-26 at 1.05.34 PM.jpeg',
          height: 500,
          fit: BoxFit.contain,
        ),
      ),
      const SizedBox(height: 20),
      AnimatedTextKit(
        animatedTexts: [
          TypewriterAnimatedText(
            "Soy Cristhian Muñoz, Desarrollador de Software actualmente enfocado en el desarrollo movil y web con Flutter. Me apasiona crear aplicaciones que no solo sean funcionales, sino que tambien ofrezcan una experiencia de usuario excepcional. Siempre estoy buscando aprender nuevas tecnologias y mejorar mis habilidades para ofrecer soluciones innovadoras y eficientes. He tenido un pequeño recorrido en el desarrollo de visual novels con Ren'py.",
            textStyle: const TextStyle(fontWeight: FontWeight.bold),
            speed: const Duration(milliseconds: 50),
          ),
        ],
        totalRepeatCount: 1,
        pause: const Duration(milliseconds: 1000),
        displayFullTextOnTap: true,
        stopPauseOnTap: true,
      ),
    ],
  );
}
