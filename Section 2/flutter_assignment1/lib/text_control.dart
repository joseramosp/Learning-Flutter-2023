import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function changeTextInfo;

  const TextControl({required this.changeTextInfo, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => changeTextInfo('It worked! :)'),
      child: const Text('Change Text'),
    );
  }
}
