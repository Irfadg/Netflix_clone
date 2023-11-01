// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:learning_app/core/colors.dart';
import 'package:learning_app/presentation/widgets/appbar_widget.dart';

import '../../widgets/common_widgets.dart';
import '../widgets/widgets.dart';

class DowloadsMain extends StatelessWidget {
  DowloadsMain({super.key});

  final List imageList = [
    'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/fcXdJlbSdUEeMSJFsXKsznGwwok.jpg',
    'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/m0gM9jE1KmCkXZRqkeNYEQZdVsZ.jpg',
    'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/aQPeznSu7XDTrrdCtT5eLiu52Yu.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: AppBarWidget(title: 'Download')),
          body: ListView(
            children: [
              SizedBox(
                height: 25,
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
              SizedBox(
                height: 30,
              ),
              MainTextWithStyle(
                  text: "Indroducing Download for You", fontsize: 20),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: ContentTextWithStyle(
                text:
                    "Our personalized recommendations ensure you'll always find the perfect film for your taste. Download now to start personalizing your movie experience today",
                fontsize: 15,
              )),
              SizedBox(
                height: 10,
              ),
              Container(
                width: size.width,
                height: size.width,
                // color: mainGrey,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Center(
                      child: CircleAvatar(
                        backgroundColor: backGroundColor,
                        radius: size.width * .37,
                      ),
                    ),
                    Positioned(
                        top: 70,
                        bottom: 100,
                        left: 70,
                        child: ImageSnackWidget(
                          imageList: imageList[0],
                          margin: EdgeInsets.only(left: 100),
                          angle: 25,
                        )),
                    Positioned(
                        top: 70,
                        bottom: 100,
                        right: 70,
                        child: ImageSnackWidget(
                          imageList: imageList[1],
                          margin: EdgeInsets.only(right: 100),
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
              MaterialButton(
                color: buttenBgColorBlue,
                textColor: mainWhite,
                onPressed: () {},
                child: ButtenTextWithStyle(fontsize: 15, text: 'Setup'),
              ),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                color: mainWhite,
                textColor: buttennbackGroundColor,
                onPressed: () {},
                child: ButtenTextWithStyle(
                    fontsize: 15, text: 'See what you can download'),
              ),
              SizedBox(
                height: 10,
              )
            ],
          )),
    );
  }
}
