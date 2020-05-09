import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:lumieg/src/models/movie_model.dart';

class MoviesSlider extends StatelessWidget {
  final List<Movie> movies;

  MoviesSlider(this.movies);

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    final List<Widget> imageList = movies
        .map(
          (item) => Container(
            width: _screenSize.width - (_screenSize.width * 0.24),
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
              child: FadeInImage(
                fit: BoxFit.fill,
                image:
                    NetworkImage(movies[movies.indexOf(item)].getPosterImg()),
                placeholder: AssetImage('assets/images/loading.gif'),
              ),
            ),
          ),
        )
        .toList();

    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          enlargeCenterPage: true,
          height: _screenSize.height * 0.51,
          //aspectRatio: 16 / 9,
        ),
        items: imageList,
      ),
    );
  }
}
