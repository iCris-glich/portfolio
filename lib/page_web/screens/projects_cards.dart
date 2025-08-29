import 'package:flutter/material.dart';
import 'package:portafolio/page_web/fuctions/links.dart';
import 'package:portafolio/page_web/fuctions/openLinks.dart';

class ProjectCard extends StatefulWidget {
  final String imageUrl;
  final String projectLink;
  final List<String>? techs;
  final String? nameProject;
  final String? description;

  const ProjectCard({
    super.key,
    this.techs,
    required this.imageUrl,
    required this.projectLink,
    this.nameProject,
    this.description,
  });

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isHovering = false;

  Widget _projectImage() {
    final image = widget.imageUrl.startsWith('http')
        ? Image.network(widget.imageUrl, fit: BoxFit.contain)
        : Image.asset(widget.imageUrl, fit: BoxFit.cover);

    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      height: 144,
      width: 200,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: ClipRRect(borderRadius: BorderRadius.circular(20), child: image),
    );
  }

  Widget _techIcons() {
    if (widget.techs == null) return const SizedBox.shrink();

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: widget.techs!.map((tech) {
        final iconUrl = techIcon[tech];
        if (iconUrl == null) return const SizedBox.shrink();
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Tooltip(
            message: tech,
            child: Image.network(iconUrl, height: 30, width: 30),
          ),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => isHovering = true),
      onExit: (_) => setState(() => isHovering = false),
      child: GestureDetector(
        onTap: () => openLink(widget.projectLink),
        child: AnimatedScale(
          scale: isHovering ? 1.05 : 1.0,
          duration: const Duration(milliseconds: 200),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final isWide = constraints.maxWidth > 700;

              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (widget.nameProject != null)
                    Text(
                      widget.nameProject!,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  const SizedBox(height: 10),
                  _techIcons(),
                  const SizedBox(height: 10),
                  isWide
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _projectImage(),
                            const SizedBox(width: 20),
                            Flexible(
                              child: Text(
                                widget.description ?? '',
                                style: const TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        )
                      : _projectImage(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
