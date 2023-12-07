import 'package:flutter/material.dart';
import 'package:learning_app/presentation/fastLaughs/widgets/video_widget.dart';
import 'package:learning_app/presentation/search/widgets/search_idel.dart';

class FastLaughsMain extends StatelessWidget {
  const FastLaughsMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: PageView(
        scrollDirection: Axis.vertical,
          children: List.generate(movieName.length, (index) => VideoWidget(index: index))),
    ));
  }
}
