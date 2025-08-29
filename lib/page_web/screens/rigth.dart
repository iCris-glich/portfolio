// ignore_for_file: deprecated_member_use

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portafolio/page_web/fuctions/links.dart';
import 'package:portafolio/page_web/screens/projects_cards.dart';

class Rigth extends StatefulWidget {
  const Rigth({super.key});

  @override
  State<Rigth> createState() => _RigthState();
}

class _RigthState extends State<Rigth> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                'Estos son algunos de mis proyectos:',
                textStyle: const TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                ),
                speed: const Duration(milliseconds: 150),
              ),
            ],
            totalRepeatCount: 1,
            pause: const Duration(milliseconds: 1000),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              children: projects
                  .map(
                    (project) => ProjectCard(
                      imageUrl: project.imageUrl,
                      projectLink: project.projectLink,
                      techs: project.tech,
                      nameProject: project.nameProject,
                      description: project.description,
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
