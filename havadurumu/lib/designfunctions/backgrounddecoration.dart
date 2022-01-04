import 'package:flutter/material.dart';

BoxDecoration background_decoration({required String image}) {
  return BoxDecoration(
    image: DecorationImage(
      fit: BoxFit.cover,
      image: AssetImage('assets/${image}.jpg'),
    ),
  );
}
