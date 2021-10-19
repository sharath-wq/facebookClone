// ignore_for_file: file_names, avoid_print, deprecated_member_use

import 'package:flutter/material.dart';

class SuggetionCard extends StatelessWidget {
  final String avathar;
  final String name;
  final String mutalFriend;
  const SuggetionCard(
      {Key key,
      @required this.avathar,
      @required this.name,
      @required this.mutalFriend})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: Stack(
        children: [
          suggetionImage(),
          suggetionDetials(),
        ],
      ),
    );
  }

  Widget suggetionImage() {
    return Positioned(
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        child: Image.asset(
          avathar,
          height: 250,
          fit: BoxFit.cover,
        ),
      ),
      top: 0,
      left: 0,
      right: 0,
    );
  }

  Widget suggetionDetials() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(
            color: Colors.grey[300],
            width: 1,
          ),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        height: 140,
        child: Column(
          children: [
            ListTile(
              title: Text(name ?? ""),
              subtitle: Text(mutalFriend ?? ""),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  iconButton(
                    buttonAction: () {
                      print("Add friend");
                    },
                    buttonIcon: Icons.person_add,
                    buttonColor: Colors.blue[700],
                    buttonTextColor: Colors.white,
                    buttonIconColor: Colors.white,
                    buttonText: "Add friend",
                  ),
                  blankButton(
                      buttonAction: () {
                        print("Removeed");
                      },
                      buttonText: "Remove",
                      buttonColor: Colors.grey[300],
                      buttonTextColor: Colors.black),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget iconButton({
    @required void Function() buttonAction,
    @required IconData buttonIcon,
    @required Color buttonColor,
    @required Color buttonTextColor,
    @required Color buttonIconColor,
    @required String buttonText,
  }) {
    return FlatButton.icon(
      onPressed: buttonAction,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      icon: Icon(
        buttonIcon,
        color: buttonIconColor,
      ),
      label: Text(
        buttonText,
        style: TextStyle(color: buttonTextColor),
      ),
      color: buttonColor,
    );
  }

  Widget blankButton({
    @required void Function() buttonAction,
    @required String buttonText,
    @required Color buttonColor,
    @required Color buttonTextColor,
  }) {
    return FlatButton(
      onPressed: buttonAction,
      color: buttonColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Text(
        buttonText,
        style: TextStyle(color: buttonTextColor),
      ),
    );
  }
}
