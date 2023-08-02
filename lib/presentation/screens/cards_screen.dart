import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('cards'),
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () => context.go('/')),
      ),
      body: Container(),
    );
  }
}
