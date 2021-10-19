// ignore_for_file: file_names

import 'package:facebook/assets.dart';
import 'package:facebook/widgets/StoryCard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labalText: "Add to story",
            avathar: atovino,
            story: atovino,
            createStoryStatus: true,
          ),
          StoryCard(
            labalText: "esther",
            story: pesther,
            avathar: aesther,
          ),
          StoryCard(
            labalText: "gopika",
            story: pgopika,
            avathar: agopika,
          ),
          StoryCard(
            labalText: "mamooty",
            story: pmamooty,
            avathar: amamooty,
          ),
          StoryCard(
            labalText: "mohanlal",
            story: pmohanlal,
            avathar: amohanlal,
          ),
          StoryCard(
            labalText: "prithiraj",
            story: aprithiraj,
            avathar: pprithiraj,
          ),
          StoryCard(
            labalText: "saniya",
            story: asaniaya,
            avathar: psaniya,
          ),
        ],
      ),
    );
  }
}
