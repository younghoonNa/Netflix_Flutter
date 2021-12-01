import 'package:flutter/material.dart';
import 'package:toppingukking/model/model_movie.dart';
import 'package:toppingukking/screen/detail_screen.dart';

class CircleSlider extends StatelessWidget {
  final List<Movie> movies;
  CircleSlider({this.movies}); //초기환
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('미리보기'),
          Container(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              // horiziontal 은 좌으로 스크롤 가능 vertical 은 상 하로 스클로 가능
              children: makeCircleImages(context, movies),
            ),
          )
        ],
      ),
    );
  }
}

List<Widget> makeCircleImages(BuildContext context, List<Movie> movies) {
  List<Widget> result = [];
  for (var i = 0; i < movies.length; i++) {
    result.add(
      InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute<Null>(
              fullscreenDialog: true,
              builder: (BuildContext context) {
                return DetailScreen(
                  movie: movies[i],
                );
              }));
        },
        child: Container(
          padding: EdgeInsets.only(right: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: CircleAvatar(
              backgroundImage: NetworkImage(movies[i].poster),
              radius: 48,
            ),
          ),
        ),
      ),
    );
  }

  return result;
}
