
// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:learning_app/presentation/downloads/screens/downloads_screen.dart';
import 'package:learning_app/presentation/fastLaughs/screens/fast_Laughs_screen.dart';
import 'package:learning_app/presentation/homepage/screens/homepage.dart';
import 'package:learning_app/presentation/hotAndNew/screens/hote_and_new_screen.dart';
import 'package:learning_app/presentation/main_screen/widget/bottomNavigationBar.dart';
import 'package:learning_app/presentation/search/screens/search_screen.dart';

import '../../search/widgets/search_idel.dart';

class MainScreen extends StatelessWidget {
   MainScreen({super.key});

 List pages = [
    HomePage(),
    HoteAndNewMain(),
    FastLaughsMain(),
    //SearchBarwithHeading(),
    SearchScreen(),
    DowloadsMain()
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    
      body: ValueListenableBuilder(valueListenable: indexChangeNotfyer, builder: (context, int index, _) {
        return pages[index];
      },),
      bottomNavigationBar: const BottomNavigationBarWidget( ),
    );
  }
}
