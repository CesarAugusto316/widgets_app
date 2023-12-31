import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/buttons_screeen.dart';
import 'package:widgets_app/presentation/screens/cards_screen.dart';
import 'package:widgets_app/presentation/screens/home_screen.dart';

// GoRouter configuration
final appRouter = GoRouter(
  routes: [
    GoRoute(
      name: HomeScreen.pathName,
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      name: ButtonsScreen.pathName,
      path: '/buttons',
      builder: (context, state) => const ButtonsScreen(),
    ),
    GoRoute(
      name: CardsScreen.pathName,
      path: '/cards',
      builder: (context, state) => CardsScreen(),
    ),
  ],
);
