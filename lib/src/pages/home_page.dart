import 'package:flutter/material.dart';
import 'package:lumieg/src/widgets/movies_header_widget.dart';

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
            ],
          ),
        ),
      ),
    );
  }
}
