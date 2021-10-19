// ignore_for_file: file_names

import 'package:facebook/assets.dart';
import 'package:facebook/widgets/Avathar.dart';
import 'package:facebook/widgets/CircluarButton.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String labalText;
  final String story;
  final String avathar;
  final bool createStoryStatus;

  const StoryCard(
      {Key key,
      @required this.labalText,
      @required this.story,
      @required this.avathar,
      this.createStoryStatus = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(story),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 5,
            top: 5,
            child: createStoryStatus == true
                ? CircluarButton(
                    buttonAction: () {
                      // ignore: avoid_print
                      print(story);
                    },
                    buttonIcon: Icons.add,
                    iconColor: Colors.blue,
                  )
                : Avathar(
                    dispalyImage: avathar,
                    displayStatus: false,
                    displayBorder: true,
                    avatharHeight: 35,
                    avatharWidth: 35,
                  ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              labalText,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
