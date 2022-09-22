import 'package:flutter/material.dart';

class ImageViewer extends StatelessWidget {
  final String imageURL;
  final double height;
  final double width;
  final double radius;
  Color? backColor = Color(0xffF7F9FB);
  ImageViewer(
      {Key? key,
      required this.imageURL,
      required this.height,
      required this.width,
      required this.radius,
      this.backColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backColor,
        border: Border.all(
            width: 2, color: Color(0xffF7F9FB), style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(25),
      ),
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
