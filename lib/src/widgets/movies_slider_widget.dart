import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MoviesSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    final List<String> imageListSource = [
      'https://debutart-static-v1.s3.amazonaws.com/projectitem/5/1/5d055a3f113bf90f1376ddb929459fc8/55715_full-retina.jpg?1551265556',
      'https://images-na.ssl-images-amazon.com/images/I/91WgnhSHyzL._AC_SL1500_.jpg',
      'https://i.ebayimg.com/images/g/UC0AAOSwZ6VcVfxV/s-l1600.jpg',
    ];

    final List<Widget> imageList = imageListSource
        .map(
          (item) => Container(
            width: _screenSize.width - (_screenSize.width * 0.20),
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
              child: FadeInImage(
                fit: BoxFit.cover,
                image: NetworkImage(item),
                placeholder: AssetImage('assets/images/loading.gif'),
              ),
            ),
          ),
        )
        .toList();

    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          enlargeCenterPage: true,
          height: _screenSize.height * 0.5,
        ),
        items: imageList,
      ),
    );
  }
}
