import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_assignment1/app_text.dart';
import 'package:flutter_assignment1/text_control.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  String _text = 'Default text';

  void changeTextInfo(newText) {
    setState(() {
      _text = newText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppText(text: _text),
          TextControl(
            changeTextInfo: changeTextInfo,
          ),
        ],
      ),
    );
  }
}
