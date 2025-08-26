import 'package:url_launcher/url_launcher.dart';

Future<void> openLink(String url) async {
  final Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw "No se pudo abrir el link $url";
  }
}
