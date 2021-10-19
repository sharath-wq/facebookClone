// ignore_for_file: file_names

import 'package:facebook/sections/HeaderButtonSection.dart';
import 'package:facebook/widgets/Avathar.dart';
import 'package:facebook/widgets/BlueTick.dart';
import 'package:facebook/widgets/HeaderButton.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String avathar;
  final String name;
  final String publishedAt;
  final String postDiscreption;
  final String image;
  final bool isVerified;
  final String likeCount;
  final String commentCount;
  final String shareCount;

  const PostCard(
      {Key key,
      @required this.avathar,
      @required this.name,
      @required this.publishedAt,
      @required this.postDiscreption,
      @required this.image,
      @required this.likeCount,
      @required this.shareCount,
      @required this.commentCount,
      this.isVerified = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleSection(),
          imageSection(),
          footerSection(),
          Divider(
            color: Colors.grey[300],
            thickness: 1,
          ),
          HeaderButtonSection(
            buttonOne: headerButton(
              buttonIcon: Icons.thumb_up_alt_outlined,
              buttonColor: Colors.grey[700],
              buttonText: "Like",
              buttonAction: () {
                // ignore: avoid_print
                print("Like button cliked");
              },
            ),
            buttonTwo: headerButton(
              buttonIcon: Icons.message_outlined,
              buttonColor: Colors.grey[700],
              buttonText: "Comment",
              buttonAction: () {
                // ignore: avoid_print
                print("Comment on this post");
              },
            ),
            buttonThree: headerButton(
                buttonIcon: Icons.share_outlined,
                buttonColor: Colors.grey[700],
                buttonText: "Share",
                buttonAction: () {
                  // ignore: avoid_print
                  print("share this post!");
                }),
          )
        ],
      ),
    );
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avathar(
        dispalyImage: avathar,
        displayStatus: false,
      ),
      title: Row(
        children: [
          Text(
            name,
            style: const TextStyle(color: Colors.black),
          ),
          const SizedBox(width: 10),
          isVerified ? const BlueTick() : const SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishedAt ?? ""),
          const SizedBox(width: 10),
          Icon(
            Icons.public,
            color: Colors.grey[700],
            size: 15,
          ),
        ],
      ),
      trailing: IconButton(
        onPressed: () {
          // ignore: avoid_print
          print("More  button clicked!");
        },
        icon: Icon(
          Icons.more_horiz,
          color: Colors.grey[700],
        ),
      ),
    );
  }

  Widget titleSection() {
    return postDiscreption != null && postDiscreption != ""
        ? Container(
            padding: const EdgeInsets.only(bottom: 5),
            child: Text(
              postDiscreption ?? "",
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          )
        : const SizedBox();
  }

  Widget imageSection() {
    return Container(
      padding: const EdgeInsets.only(bottom: 5, top: 5),
      child: Image.asset(image ?? ""),
    );
  }

  Widget footerSection() {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 15,
                height: 15,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                child:
                    const Icon(Icons.thumb_up, color: Colors.white, size: 10),
              ),
              const SizedBox(width: 5),
              dispalyText(label: likeCount ?? ""),
            ],
          ),
          Row(
            children: [
              dispalyText(label: commentCount ?? ""),
              const SizedBox(width: 5),
              dispalyText(label: "comments"),
              const SizedBox(width: 10),
              dispalyText(label: shareCount ?? ""),
              const SizedBox(width: 5),
              dispalyText(label: "shares"),
              const SizedBox(width: 5),
              Avathar(
                dispalyImage: avathar,
                displayStatus: false,
                avatharHeight: 25,
                avatharWidth: 25,
              ),
              IconButton(
                onPressed: () {
                  // ignore: avoid_print
                  print("Icon button pressed!!");
                },
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.grey[700],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget dispalyText({@required String label}) {
    return Text(
      label ?? "",
      style: TextStyle(color: Colors.grey[700]),
    );
  }
}
