// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:learning_app/presentation/widgets/appbar_widget.dart';
import '../widgets/widgets.dart';

class DowloadsMain extends StatelessWidget {
  const DowloadsMain({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: AppBarWidget(title: 'Download')),
          body: ListView(
            children: [
              SmartDownloadWidget(),
              MiddleimageSectionWidget(),
              ButtenSectionWidgets(),
            ],
          )),
    );
  }
}
