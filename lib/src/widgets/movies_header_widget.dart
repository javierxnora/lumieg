import 'package:flutter/material.dart';

class MoviesHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding:
              const EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 20),
          child: FittedBox(
            child: Text(
              'Upcoming',
              style: TextStyle(
                  fontSize: 28,
                  fontFamily: "Montserrat",
                  color: Color(0xffff5964),
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 20),
          child: IconButton(
            icon: Icon(
              Icons.search,
              color: Color(0xffff5964),
              size: 35,
            ),
            onPressed: () {
              print('Presionaron la búsqueda');
            },
          ),
        ),
      ],
    );
  }
}
