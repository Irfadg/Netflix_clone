// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../../helper/colors.dart';



ValueNotifier<int> indexChangeNotfyer = ValueNotifier(0);
class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
return ValueListenableBuilder(valueListenable: indexChangeNotfyer, builder: (context,int newIndex, _) {
    return BottomNavigationBar(
    currentIndex: newIndex,
    onTap: (index) {
      indexChangeNotfyer.value = index;
    },
    elevation: 0,
    type: BottomNavigationBarType.fixed,
    backgroundColor: backGroundColor,
    selectedItemColor: mainWhite,
    unselectedItemColor: mainGrey,
    items: [
      BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.movie),label: "Hot&new"),
      BottomNavigationBarItem(icon: Icon(Icons.emoji_emotions),label: "FastLaughs"),
      BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
      BottomNavigationBarItem(icon: Icon(Icons.download),label: "Download")
    ]);
 },);
  }
}