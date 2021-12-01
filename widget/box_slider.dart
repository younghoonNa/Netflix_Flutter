import 'package:flutter/material.dart';
import 'package:toppingukking/model/model_movie.dart';
import 'package:toppingukking/screen/detail_screen.dart';

class BoxSlider extends StatelessWidget {
  final List<Movie> movies;
  BoxSlider({this.movies}); //초기화
  @override
  Widget build(BuildContext context) {
    var movies2 = movies;
    return Container(
      padding: EdgeInsets.all(7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('지금 뜨는 콘텐츠'),
          Container(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              // horiziontal 은 좌으로 스크롤 가능 vertical 은 상 하로 스클로 가능
              children: makeBoxImages(context, movies2),
            ),
          ),
        ],
      ),
    );
  }
}

List<Widget> makeBoxImages(BuildContext context, List<Movie> movies) {
  List<Widget> results = [];
  for (var i = 0; i < movies.length; i++) {
    results.add(InkWell(
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
            child: Image.network(movies[i].poster),
          ),
        )));
  }

  return results;
}
