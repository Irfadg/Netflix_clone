// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:math';
import 'package:flutter/material.dart';
import '../../../core/colors.dart';
import '../../common_app_widgets/common_widgets.dart';

class SmartDownloadWidget extends StatelessWidget {
  const SmartDownloadWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.settings,
              color: mainWhite,
              size: 30,
            ),
            SizedBox(
              width: 10,
            ),
            MainTextWithStyle(
              fontsize: 15,
              text: 'Smart Downloads',
            )
          ],
        ),
      ],
    );
  }
}

class MiddleimageSectionWidget extends StatelessWidget {
  MiddleimageSectionWidget({super.key});

  final List imageList = [
    'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/fcXdJlbSdUEeMSJFsXKsznGwwok.jpg',
    'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/m0gM9jE1KmCkXZRqkeNYEQZdVsZ.jpg',
    'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/aQPeznSu7XDTrrdCtT5eLiu52Yu.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        MainTextWithStyle(
            text: "Indroducing Download for You",
            fontsize: 21,
            textAlign: TextAlign.center),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 13, right: 13),
          child: ContentTextWithStyle(
            text:
                "Download now to start personalizing your movie experience today.In endless films, our spirits roam.",
            fontsize: 15,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          width: size.width,
          height: size.width,
          // color: mainGrey,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: CircleAvatar(
                   backgroundColor: Colors.blueAccent[700],
                    radius: size.width * .45,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: size.width * .39,
                  ),
                ),
              ),
              Positioned(
                  top: size.height * .1,
                  bottom: 100,
                  left: 70,
                  child: ImageSnackWidget(
                    imageList: imageList[0],
                    margin: EdgeInsets.only(left: 90),
                    angle: 25,
                  )),
              Positioned(
                  top: size.height * .1,
                  bottom: 100,
                  right: 70,
                  child: ImageSnackWidget(
                    imageList: imageList[1],
                    margin: EdgeInsets.only(right: 90),
                    angle: -25,
                  )),
              ImageSnackWidget(
                imageList: imageList[2],
                margin: EdgeInsets.only(left: 0),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

class ImageSnackWidget extends StatelessWidget {
  const ImageSnackWidget({
    super.key,
    required this.imageList,
    this.angle = 0,
    required this.margin,
  });

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width * 0.4,
        height: size.height * 0.3,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(imageList))),
      ),
    );
  }
}

class ButtenSectionWidgets extends StatelessWidget {
  const ButtenSectionWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          width: size.width * 9,
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            color: buttenBgColorBlue,
            textColor: mainWhite,
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ButtenTextWithStyle(fontsize: 15, text: 'Set up'),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MaterialButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            color: mainWhite,
            textColor: buttennbackGroundColor,
            onPressed: () {},
            child: ButtenTextWithStyle(
                fontsize: 15, text: 'See what you can download'),
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}


