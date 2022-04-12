import 'package:flutter/material.dart';

class AppImagerLoader extends StatelessWidget {
  final String imageUrl;
  final double height;
  final double width;
  final BoxFit? fit;

  const AppImagerLoader(
      {Key? key,
        required this.imageUrl,
        required this.height,
        required this.width,
        this.fit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.transparent,
        image: DecorationImage(image: NetworkImage(imageUrl), fit: fit ?? BoxFit.fill),
      ),
    );
  }
}