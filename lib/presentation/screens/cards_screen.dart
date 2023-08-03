import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/home_screen.dart';

class CardsScreen extends StatelessWidget {
  static const String pathName = 'card_screen';

  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('cards'),
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () => context.goNamed(HomeScreen.pathName)),
      ),
      body: Container(),
    );
  }
}
