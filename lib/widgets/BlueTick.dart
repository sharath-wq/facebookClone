// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BlueTick extends StatelessWidget {
  const BlueTick({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15,
      height: 15,
      decoration: const BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
      ),
      child: const Icon(
        Icons.check,
        color: Colors.white,
        size: 10,
      ),
    );
  }
}
