// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:learning_app/core/colors.dart';
import 'package:learning_app/presentation/common_app_widgets/common_widgets.dart';
import 'package:learning_app/presentation/search/widgets/search_result_widget.dart';

//const String dummyMovieURL = 'https://www.themoviedb.org/t/p/w250_and_h141_face/56v2KjBlU4XaOv9rVYEQypROD7P.jpg';
final List imageList = [
  'assets/images/logo.png',
 'assets/images/logo.png',
'assets/images/logo.png',
'assets/images/logo.png',
'assets/images/logo.png',
'assets/images/logo.png',
'assets/images/logo.png',
'assets/images/logo.png',
'assets/images/logo.png',
'assets/images/logo.png',
'assets/images/logo.png',
'assets/images/logo.png',
'assets/images/logo.png',
'assets/images/logo.png',
'assets/images/logo.png',
'assets/images/logo.png',
'assets/images/logo.png',
'assets/images/logo.png',
'assets/images/logo.png',
];


final List movieName = [
  "The Shawshank Redemption",
  "The Godfather",
  "Titanic",
  "Pulp Fiction",
  "Jurassic Park",
  "The Matrix",
  "Inception",
  "The Dark Knight",
  "Star Wars: Episode IV - A New Hope",
  "E.T. the Extra-Terrestrial",
  "Forrest Gump",
  "Avatar"
      "The Matrix",
  "Inception",
  "The Dark Knight",
  "Star Wars: Episode IV - A New Hope",
  "E.T. the Extra-Terrestrial",
  "Forrest Gump",
  "Avatar"
];

class SearchBarwithHeading extends StatelessWidget {
  SearchBarwithHeading({super.key});

  bool searchSubmitted = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: SizedBox(
            height: 40,
            child: SearchTextFeild(),
          ),
        ),
        Expanded(child: SearchResultWidget())
      ],
    );
  }
}

class SearchTextFeild extends StatelessWidget {
  const SearchTextFeild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoSearchTextField(
      // onSubmitted: (value) {
      //   print("afjhsdfusdfuiqsdqfdihfuisf");
      //   SearchResultWidget();
      // },
      suffixIcon: Icon(
        CupertinoIcons.xmark_circle_fill,
        color: searchScreenIconCLR,
      ),
      prefixIcon: Icon(
        CupertinoIcons.search,
        color: searchScreenIconCLR,
      ),
      backgroundColor: mainGrey.withOpacity(0.4),
      style: TextStyle(color: mainWhite),
    );
  }
}

class SearchIdelWidget extends StatelessWidget {
  const SearchIdelWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: MainTextWithStyle(text: "Top Searches", fontsize: 20),
        ),
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => TopSearchTile(
                    index: index,
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    height: 40,
                  ),
              itemCount: imageList.length),
        )
      ],
    );
  }
}

class TopSearchTile extends StatelessWidget {
  final int index;
  TopSearchTile({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 65,
          width: size.width * .35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(imageList[index]), fit: BoxFit.cover),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
            child: MainTextWithStyle(
          text: movieName[index],
          fontsize: 15,
        )),
        Icon(
          CupertinoIcons.play_circle,
          color: mainWhite,
          size: 50,
        )
      ],
    );
  }
}
