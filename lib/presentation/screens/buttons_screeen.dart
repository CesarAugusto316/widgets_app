import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/home_screen.dart';

class ButtonsScreen extends StatelessWidget {
  static const String pathName = 'button_screen';

  const ButtonsScreen({super.key});

  void _handleGoBack(BuildContext context) {
    context.goNamed(HomeScreen.pathName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () => _handleGoBack(context)),
      ),
      body: _ButtonsContainer(),
      floatingActionButton: FloatingActionButton(
          onPressed: () => _handleGoBack(context),
          child: const Icon(Icons.arrow_back_ios)),
    );
  }
}

class _ButtonsContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        child: Wrap(
            spacing: 16,
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {}, child: const Text('Hello World')),
              ElevatedButton.icon(
                  label: const Text('This is a label'),
                  icon: const Icon(Icons.access_alarm_sharp),
                  onPressed: () {}),
              const ElevatedButton(
                  onPressed: null, child: Text('hello disable')),
            ]));
  }
}
