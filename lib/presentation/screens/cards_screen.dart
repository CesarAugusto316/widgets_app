import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/home_screen.dart';

class CardsScreen extends StatelessWidget {
  static const String pathName = 'card_screen';

  final _cards = <Map<String, dynamic>>[
    {'elevation': 0.0, 'label': 'elevation 0'},
    {'elevation': 1.0, 'label': 'elevation 1'},
    {'elevation': 2.0, 'label': 'elevation 2'},
    {'elevation': 3.0, 'label': 'elevation 3'},
    {'elevation': 4.0, 'label': 'elevation 4'},
  ];

  CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('cards'),
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () => context.goNamed(HomeScreen.pathName)),
      ),
      body: _CardsContainer(cards: _cards),
    );
  }
}

class _CardsContainer extends StatelessWidget {
  final List<Map<String, dynamic>> cards;

  const _CardsContainer({required this.cards});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ...cards.map((card) => _Card1(
                  elevation: card['elevation'],
                  label: card['label'],
                )),
            ...cards.map((card) => _Card2(
                  elevation: card['elevation'],
                  label: card['label'],
                ))
          ],
        ),
      ),
    );
  }
}

class _Card2 extends StatelessWidget {
  final num elevation;
  final String label;

  const _Card2({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          side: BorderSide(
              width: 1, color: Theme.of(context).colorScheme.secondary),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      elevation: elevation as double,
      child: Container(
          height: 180,
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Align(
                  alignment: Alignment.topRight,
                  child: Icon(Icons.mobile_friendly)),
              Align(alignment: Alignment.bottomLeft, child: Text(label))
            ],
          )),
    );
  }
}

class _Card1 extends StatelessWidget {
  final num elevation;
  final String label;

  const _Card1({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation as double,
      child: Container(
          height: 180,
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Align(
                  alignment: Alignment.topRight,
                  child: Icon(Icons.mobile_friendly)),
              Align(alignment: Alignment.bottomLeft, child: Text(label))
            ],
          )),
    );
  }
}
