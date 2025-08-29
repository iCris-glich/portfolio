import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Perfil extends StatefulWidget {
  const Perfil({super.key});

  @override
  State<StatefulWidget> createState() {
    return _PerfilState();
  }
}

class _PerfilState extends State<Perfil> {
  Widget textAnimeted(String text) {
    return AnimatedTextKit(
      animatedTexts: [
        TypewriterAnimatedText(
          text,
          textStyle: const TextStyle(fontWeight: FontWeight.bold),
          speed: const Duration(milliseconds: 150),
        ),
      ],
      totalRepeatCount: 1,
      pause: const Duration(milliseconds: 1000),
      displayFullTextOnTap: true,
      stopPauseOnTap: true,
    );
  }

  Map<String, String> techIcon = {
    "Dart":
        "https://dart-code.gallerycdn.vsassets.io/extensions/dart-code/dart-code/3.117.20250813/1755108166013/Microsoft.VisualStudio.Services.Icons.Default",
    "Flutter": "https://api.plusinfosys.com/public/technology/4/flutter.png",
    "Python":
        "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Python-logo-notext.svg/1200px-Python-logo-notext.svg.png",
    "Renpy":
        "https://upload.wikimedia.org/wikipedia/commons/7/7e/Ren%E2%80%99Py_Logo_6-13-6_200x307px.png",
    "Firebase":
        "https://www.gstatic.com/devrel-devsite/prod/v456243cc4559a4a6b20c070637855bec9b45a539cf460e1eddd6b80c804aa73e/firebase/images/touchicon-180.png",
    "Supabase":
        "https://cdn.prod.website-files.com/655b60964be1a1b36c746790/655b60964be1a1b36c746d41_646dfce3b9c4849f6e401bff_supabase-logo-icon_1.png",
    "GitHub":
        "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/GitHub_Invertocat_Logo.svg/1200px-GitHub_Invertocat_Logo.svg.png",
  };

  @override
  Widget build(BuildContext context) {
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
        textAnimeted(("Hola, soy Cristhian.")),
        textAnimeted(
          "Soy desarrollador de aplicaciones multiplataforma usando dart y flutter.",
        ),
        textAnimeted(
          "Tambien me gusta crear Visual Novels usando Python y Ren'py.",
        ),
        const SizedBox(height: 20),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 10,
          runSpacing: 10,
          children: techIcon.entries.map((entry) {
            return Tooltip(
              message: entry.key,
              child: Image.network(entry.value, height: 40, width: 40),
            );
          }).toList(),
        ),
      ],
    );
  }
}
