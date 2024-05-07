// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:learning_app/presentation/common_app_widgets/common_widgets.dart';

import '../../helper/colors.dart';

class AppBarWidget extends StatelessWidget {
final  String title;
   const AppBarWidget({super.key, required this.title});



  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: MainTextWithStyle(text: title, fontsize: 25)
          ),
          Icon((Icons.cast),
          color: mainWhite,
          size: 25,),
          SizedBox(
            width: 15,
          ),
          Container(
            height: 21,
            width: 28,
            decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(10),
             
            ),
            child: Image(image: AssetImage('assets/images/Netflixprofileavathar.png'),),
          )
        ],
      ),
    );
  }
}