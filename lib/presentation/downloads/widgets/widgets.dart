// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

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
        width: size.width * 0.5,
        height: size.height * 0.3,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: NetworkImage(imageList))),
      ),
    );
  }
}
