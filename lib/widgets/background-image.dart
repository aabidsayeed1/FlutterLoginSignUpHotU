// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    // ignore: duplicate_ignore
    return ShaderMask(
      // ignore: prefer_const_constructors
      shaderCallback: ((bounds) => LinearGradient(
        // ignore: prefer_const_literals_to_create_immutables
        colors: [Colors.black,Colors.black12],
        begin: Alignment.bottomCenter,
        end: Alignment.center,
      ).createShader(bounds)),
      blendMode: BlendMode.darken,
      child: Container(
        decoration: BoxDecoration(image: DecorationImage(
          image: AssetImage(image),
          fit:BoxFit.cover,
           colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken))),
      )
      );
  }
}
