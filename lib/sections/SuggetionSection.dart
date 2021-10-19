// ignore_for_file: file_names, avoid_print

import 'package:facebook/assets.dart';
import 'package:facebook/widgets/SuggetionCard.dart';
import 'package:flutter/material.dart';

class SuggetionSection extends StatelessWidget {
  const SuggetionSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: Column(
        children: [
          ListTile(
            title: const Text("People you may know"),
            trailing: IconButton(
              onPressed: () {
                print("More button clicked!");
              },
              icon: Icon(
                Icons.more_horiz,
                color: Colors.grey[700],
              ),
            ),
          ),
          SizedBox(
            height: 390,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SuggetionCard(
                  avathar: agopika,
                  mutalFriend: "4 mutual friends",
                  name: "Gopika",
                ),
                SuggetionCard(
                  avathar: asaniaya,
                  mutalFriend: "6 mutual friends",
                  name: "Saniya",
                ),
                SuggetionCard(
                  avathar: amamooty,
                  mutalFriend: "10 mutual friends",
                  name: "Mamooty",
                ),
                SuggetionCard(
                  avathar: aesther,
                  mutalFriend: "6 mutual friends",
                  name: "Esther",
                ),
                SuggetionCard(
                  avathar: aprithiraj,
                  mutalFriend: "8 mutual friends",
                  name: "Prithiraj",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
