import 'package:flutter/material.dart';

class ImageViewer extends StatelessWidget {
  final String imageURL;
  final double height;
  final double width;
  final double radius;
  const ImageViewer(
      {Key? key,
      required this.imageURL,
      required this.height,
      required this.width,
      required this.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        child: Image.asset(
          imageURL,
          width: width,
          height: height,
        ),
      ),
    );
  }
}
