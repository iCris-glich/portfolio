class Project {
  final String imageUrl;
  final String projectLink;
  final String lenguage;
  final List<String>? tech;
  final String? nameProject;
  final String? description;

  Project({
    required this.imageUrl,
    required this.projectLink,
    required this.lenguage,
    this.tech,
    this.nameProject,
    this.description,
  });
}

Map<String, String> techIcon = {
  "Dart":
      "https://dart-code.gallerycdn.vsassets.io/extensions/dart-code/dart-code/3.117.20250813/1755108166013/Microsoft.VisualStudio.Services.Icons.Default",
  "Flutter": "https://api.plusinfosys.com/public/technology/4/flutter.png",
  "Python":
      "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Python-logo-notext.svg/1200px-Python-logo-notext.svg.png",
  "Renpy":
      "https://upload.wikimedia.org/wikipedia/commons/7/7e/Ren%E2%80%99Py_Logo_6-13-6_200x307px.png",
};

List<Project> projects = [
  Project(
    imageUrl:
        "https://static.vecteezy.com/system/resources/previews/004/620/053/non_2x/barcode-and-qr-code-scanner-glyph-icon-wifi-bar-codes-handheld-reader-qr-codes-barcodes-reading-device-store-shop-supermarket-silhouette-symbol-negative-space-isolated-illustration-vector.jpg",

    projectLink: "https://github.com/iCris-glich/escaner_qr_codigo_barras",
    lenguage: "Dart, Flutter",
    tech: ["Dart", "Flutter"],
    nameProject: "Escaner QR y Codigo de Barras",
    description: "Aplicacion movil para escanear codigos QR y de barras",
  ),
  Project(
    imageUrl: "assets/images/1754419785872eav3b4ox.png",
    projectLink: "https://github.com/iCris-glich/goodbey-winter",
    lenguage: "Python, Renpy",
    tech: ["Python", "Renpy"],
    nameProject: "Goodbye Winter (DEMO)",
    description:
        "Visual Novel creada con el motor grafico Ren'py, Tu eres el protagonista y debes tomar decisiones que afectaran el desarrollo de la historia. Todo se desarrolla en visperas de navidad.",
  ),
  Project(
    imageUrl:
        "https://png.pngtree.com/png-clipart/20220111/original/pngtree-cartoon-vector-owl-png-image_7078808.png",
    projectLink: "https://github.com/iCris-glich/mates_con_joohoo",
    lenguage: "Dart, Flutter",
    tech: ["Dart", "Flutter"],
    nameProject: "Mates con Joohoo",
    description:
        "Aplicacion movil para aprender matematicas basicas, con juego interactivo.",
  ),
  Project(
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Symbol_of_Ministry_of_Education%2C_Culture%2C_Sports%2C_Science_and_Technology_of_Japan.svg/1200px-Symbol_of_Ministry_of_Education%2C_Culture%2C_Sports%2C_Science_and_Technology_of_Japan.svg.png",
    projectLink: "https://becamext.vercel.app/",
    lenguage: "Dart, Flutter",
    tech: ["Dart", "Flutter"],
    nameProject: "Proyecto MEXT (Beca Japón, solo informacion de la beca))",
    description:
        "Pagina web hecha con el Flutter de informacion sobre la beca MEXT para jovenes guatemaltecos, NO ES OFICIAL.",
  ),
];

final List<String> socialLinks = [
  "https://github.com/iCris-glich",
  "https://linkedin.com/in/cristhian-muñoz-6894282aa",
];
