// ignore_for_file: file_names

import 'package:facebook/assets.dart';
import 'package:facebook/widgets/Avathar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(10),
        children: <Widget>[
          createRoombutton(),
          Avathar(
            dispalyImage: atovino,
            displayStatus: true,
          ),
          Avathar(
            dispalyImage: aesther,
            displayStatus: true,
          ),
          Avathar(
            dispalyImage: agopika,
            displayStatus: true,
          ),
          Avathar(
            dispalyImage: amamooty,
            displayStatus: true,
          ),
          Avathar(
            dispalyImage: amohanlal,
            displayStatus: true,
          ),
          Avathar(
            dispalyImage: aprithiraj,
            displayStatus: true,
          ),
          Avathar(
            dispalyImage: asaniaya,
            displayStatus: true,
          ),
          Avathar(
            dispalyImage: atovino,
            displayStatus: true,
          ),
          Avathar(
            dispalyImage: aesther,
            displayStatus: true,
          ),
          Avathar(
            dispalyImage: agopika,
            displayStatus: true,
          ),
          Avathar(
            dispalyImage: amamooty,
            displayStatus: true,
          ),
          Avathar(
            dispalyImage: amohanlal,
            displayStatus: true,
          ),
          Avathar(
            dispalyImage: aprithiraj,
            displayStatus: true,
          ),
          Avathar(
            dispalyImage: asaniaya,
            displayStatus: true,
          ),
        ],
      ),
    );
  }

  Widget createRoombutton() {
    return Container(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: OutlinedButton.icon(
        // ignore: prefer_const_constructors
        style: ButtonStyle(
          side: MaterialStateProperty.all(
            BorderSide(color: Colors.blue[100], width: 2),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
        onPressed: () {
          // ignore: avoid_print
          print("Room button clicked");
        },
        icon: const Icon(
          Icons.video_call,
          color: Colors.purple,
        ),
        label: const Text(
          "Create\n Room",
          style: TextStyle(color: Colors.blue),
        ),
      ),
    );
  }
}
