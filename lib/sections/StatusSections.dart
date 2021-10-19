// ignore_for_file: file_names

import 'package:facebook/widgets/Avathar.dart';
import 'package:flutter/material.dart';
import 'package:facebook/assets.dart';

class StatusSections extends StatelessWidget {
  const StatusSections({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avathar(
        dispalyImage: atovino,
        displayStatus: false,
      ),
      title: const TextField(
        decoration: InputDecoration(
          hintText: "What's on your mind?",
          hintStyle: TextStyle(color: Colors.black),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
