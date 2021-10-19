// ignore_for_file: deprecated_member_use, file_names

import 'package:flutter/material.dart';

Widget headerButton(
    {@required IconData buttonIcon,
    @required Color buttonColor,
    @required String buttonText,
    @required void Function() buttonAction}) {
  return FlatButton.icon(
    onPressed: buttonAction,
    icon: Icon(
      buttonIcon,
      color: buttonColor,
    ),
    label: Text(buttonText),
  );
}
