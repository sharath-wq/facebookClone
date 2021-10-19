// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Avathar extends StatelessWidget {
  const Avathar(
      {Key key,
      @required this.dispalyImage,
      this.displayStatus = false,
      this.displayBorder = false,
      this.avatharHeight = 50,
      this.avatharWidth = 50})
      : super(key: key);

  final String dispalyImage;
  final bool displayStatus;
  final bool displayBorder;
  final double avatharWidth;
  final double avatharHeight;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: displayBorder
                ? Border.all(color: Colors.blue, width: 3)
                : Border.all(),
          ),
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              dispalyImage,
              width: avatharWidth,
              height: avatharHeight,
            ),
          ),
        ),
        displayStatus == true
            ? Positioned(
                bottom: 0,
                right: 1.0,
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
