// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/core/colors.dart';
import 'package:learning_app/presentation/search/widgets/search_idel.dart';
import 'package:gap/gap.dart';

class VideoWidget extends StatelessWidget {
  final int index;
  const VideoWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
          child: Center(child:
           Text(movieName[index])),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: backGroundColor.withOpacity(.5),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(CupertinoIcons.volume_off,
                    color: mainWhite,),
                  ),
                ),

                //rightside we are creating one column
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/logo.png'),
                    ),
                      Gap(20),
                    RightSideElemnts(
                      icon: Icons.emoji_emotions,
                      title: ' LOL',
                    ),
                    Gap(20),
                    RightSideElemnts(
                      icon: CupertinoIcons.add,
                      title: 'Add',
                    ),
                        Gap(20),
                    RightSideElemnts(
                      icon: CupertinoIcons.share,
                      title: 'share',
                    ),
                         Gap(20),
                    RightSideElemnts(
                      icon: CupertinoIcons.play,
                      title: 'Play',
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class RightSideElemnts extends StatelessWidget {
  final IconData icon;
  final String title;
  const RightSideElemnts({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: mainWhite,
        ),
        Text(title)
      ],
    );
  }
}
