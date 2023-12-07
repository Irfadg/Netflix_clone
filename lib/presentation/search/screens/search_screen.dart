import 'package:flutter/material.dart';

import '../widgets/search_idel.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child:  Scaffold(
        body: SearchBarwithHeading()
       
      ),
    );
  }
}