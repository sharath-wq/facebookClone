import 'package:facebook/assets.dart';
import 'package:facebook/sections/HeaderButtonSection.dart';
import 'package:facebook/sections/RoomSection.dart';
import 'package:facebook/sections/StatusSections.dart';
import 'package:facebook/sections/StorySection.dart';
import 'package:facebook/sections/SuggetionSection.dart';
import 'package:facebook/widgets/HeaderButton.dart';
import 'package:facebook/widgets/PostCard.dart';
import 'package:flutter/material.dart';
import 'package:facebook/widgets/CircluarButton.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Divider(
      thickness: 1,
      color: Colors.grey[300],
    );
    Widget thickdivider = Divider(
      thickness: 10,
      color: Colors.grey[300],
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            "Facebook",
            style: TextStyle(
                color: Colors.blue, fontSize: 26, fontWeight: FontWeight.bold),
          ),
          actions: <Widget>[
            CircluarButton(
              buttonIcon: Icons.search,
              buttonAction: () {
                // ignore: avoid_print
                print("Go to search!");
              },
            ),
            CircluarButton(
                buttonIcon: Icons.chat,
                buttonAction: () {
                  // ignore: avoid_print
                  print("Go to chat!");
                })
          ],
        ),
        body: ListView(
          children: [
            // ignore: prefer_const_constructors
            StatusSections(),
            thinDivider,
            HeaderButtonSection(
              buttonOne: headerButton(
                buttonIcon: Icons.video_call,
                buttonColor: Colors.red,
                buttonText: "Live",
                buttonAction: () {
                  // ignore: avoid_print
                  print("Go Live!");
                },
              ),
              buttonTwo: headerButton(
                buttonIcon: Icons.photo_library,
                buttonColor: Colors.green,
                buttonText: "Photo",
                buttonAction: () {
                  // ignore: avoid_print
                  print("Take Photo!");
                },
              ),
              buttonThree: headerButton(
                buttonIcon: Icons.video_call,
                buttonColor: Colors.purple,
                buttonText: "Room",
                buttonAction: () {
                  // ignore: avoid_print
                  print("Create Room");
                },
              ),
            ),
            thickdivider,
            const RoomSection(),
            thickdivider,
            const StorySection(),
            thickdivider,
            PostCard(
              avathar: aesther,
              name: "Esther",
              publishedAt: "32 minutes ago",
              postDiscreption: "Rest in peace🥀",
              image: pesther,
              isVerified: true,
              likeCount: "10k",
              commentCount: "5k",
              shareCount: "1k",
            ),
            thickdivider,
            PostCard(
              avathar: agopika,
              name: "Gopika",
              publishedAt: "42 minutes ago",
              postDiscreption: "😎",
              image: pgopika,
              isVerified: true,
              likeCount: "14k",
              commentCount: "3k",
              shareCount: "2k",
            ),
            thickdivider,
            PostCard(
              avathar: amamooty,
              name: "Mamooty",
              publishedAt: "1 hour ago",
              postDiscreption: "New Look",
              image: pmamooty,
              isVerified: true,
              likeCount: "50k",
              commentCount: "10k",
              shareCount: "2k",
            ),
            thickdivider,
            PostCard(
              avathar: amohanlal,
              name: "Mohanlal",
              publishedAt: "2 hours ago",
              postDiscreption: "😁",
              image: pmohanlal,
              isVerified: true,
              likeCount: "55k",
              commentCount: "6k",
              shareCount: "4k",
            ),
            thickdivider,
            const SuggetionSection(),
            thickdivider,
            PostCard(
              avathar: aprithiraj,
              name: "Prithiraj",
              publishedAt: "5 hours ago",
              postDiscreption: null,
              image: pprithiraj,
              isVerified: true,
              likeCount: "14k",
              commentCount: "2k",
              shareCount: "1k",
            ),
            thickdivider,
            PostCard(
              avathar: asaniaya,
              name: "Saniya",
              publishedAt: "1 day ago",
              postDiscreption: "💛",
              image: psaniya,
              isVerified: true,
              likeCount: "14k",
              commentCount: "3k",
              shareCount: "2k",
            ),
            thickdivider,
            PostCard(
              avathar: atovino,
              name: "Tovino",
              publishedAt: "1 week ago",
              postDiscreption: "💪",
              image: ptovino,
              isVerified: true,
              likeCount: "60k",
              commentCount: "4k",
              shareCount: "2k",
            ),
            thickdivider
          ],
        ),
      ),
    );
  }
}
