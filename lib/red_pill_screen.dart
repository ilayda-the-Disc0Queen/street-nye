import 'package:flutter/material.dart';

class RedPillScreen extends StatelessWidget {
  const RedPillScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text('red pill page!'),
      ),
    );
  }
}
