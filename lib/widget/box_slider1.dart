import 'package:flutter/material.dart';
import 'package:netflix_clone_test/model/model_movie.dart';
import 'package:netflix_clone_test/screen/detail_screen.dart';

class BoxSlider1 extends StatelessWidget {
  final List<Movie> movies;
  BoxSlider1({this.movies});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Netflix 인기 콘텐츠',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Container(
            height: 250,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: makeBoxImages(context,movies),
            ),
          )
        ],
      ),
    );
  }
}


List<Widget> makeBoxImages(BuildContext context,List<Movie> movies) {
  List<Widget> results = [];
  for(var i = 0; i<movies.length; i++) {
    results.add(
      InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute<Null>(
              fullscreenDialog: true,
              builder: (BuildContext context) {
                return DetailScreen(
                  moive: movies[i],
                );
              }
          ));
        },
        child: Container(
          padding: EdgeInsets.only(right: 10),
          child : Align(
            alignment: Alignment.centerLeft,
            child : Image.network(movies[i].poster),
          ),
        ),
      ),
    );
  }
  return results;
}
