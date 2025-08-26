import 'package:go_router/go_router.dart';
import 'package:portafolio/page_web/screens/home_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [GoRoute(path: '/', builder: (context, state) => HomeScreen())],
);
