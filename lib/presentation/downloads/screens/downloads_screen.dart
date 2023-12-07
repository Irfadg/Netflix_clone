// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:learning_app/presentation/common_app_widgets/appbar_widget.dart';
import '../widgets/widgets.dart';

class DowloadsMain extends StatelessWidget {
  DowloadsMain({super.key});

  final downloadwidgetList = [
    SmartDownloadWidget(),
    MiddleimageSectionWidget(),
    ButtenSectionWidgets(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBarWidget(title: 'Download')),
        body: SafeArea(
          child: ListView.builder(
           // padding: EdgeInsets.only(left: 10,right: 10),
            itemBuilder: (context, index) {
              return downloadwidgetList[index];
            },
            itemCount: downloadwidgetList.length,
          ),
        ));
  }
}
