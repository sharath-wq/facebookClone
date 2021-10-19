// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CircluarButton extends StatelessWidget {
  final IconData buttonIcon;
  final void Function() buttonAction;
  final Color iconColor;
  const CircluarButton(
      {Key key,
      @required this.buttonIcon,
      @required this.buttonAction,
      this.iconColor = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(
          buttonIcon,
          color: iconColor,
          size: 25,
        ),
        onPressed: buttonAction,
      ),
    );
  }
}
