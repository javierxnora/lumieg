import 'package:flutter/material.dart';
import 'package:lumieg/src/widgets/movies_header_widget.dart';
import 'package:lumieg/src/widgets/movies_slider_widget.dart';
import 'package:lumieg/src/providers/movies_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEBE254),
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              MoviesHeader(),
              _getMoviesSlider(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getMoviesSlider() {
    MoviesProvider moviesProvider = MoviesProvider();
    return FutureBuilder(
      future: moviesProvider.getMoviesNowPlaying(),
      builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
        if (snapshot.hasData) {
          return MoviesSlider(snapshot.data);
        } else {
          return Container(
              height: 400.0, child: Center(child: CircularProgressIndicator()));
        }
      },
    );
  }
}
