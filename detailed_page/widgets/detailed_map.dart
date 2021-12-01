import 'package:flutter/material.dart';

Widget mapita() {
  return Container(
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Image(
        image: AssetImage('assets/imgs/map.jpg'),
        fit: BoxFit.cover,
      ),
    ),
    height: 75.0,
    width: 75.0,
    decoration: BoxDecoration(
        color: Colors.transparent,
        boxShadow: [BoxShadow(blurRadius: 5.0, color: Colors.grey)],
        borderRadius: BorderRadiusDirectional.circular(10.0)),
  );
}