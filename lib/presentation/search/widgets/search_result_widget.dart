// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:learning_app/presentation/search/widgets/search_idel.dart';

import '../../common_app_widgets/common_widgets.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      // Padding(
      //     padding: EdgeInsets.all(10.0),
      //     child: SizedBox(
      //       height: 40,
      //       child: SearchTextFeild(),
      //     ),
      //   ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: MainTextWithStyle(text:"Movie and TV", fontsize: 20),
        ),
        Expanded(
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 1/1.4,
            children: List.generate(imageList.length, (index) {
              return MainMovieCard(Index: index,);
            }),
          ),
        )
      ],
    );
  }
}

class MainMovieCard extends StatelessWidget {
  final int Index;
  const MainMovieCard({super.key, required this.Index});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(image: AssetImage(imageList[Index]),
        fit: BoxFit.cover)
      ),
    );
  }
}
