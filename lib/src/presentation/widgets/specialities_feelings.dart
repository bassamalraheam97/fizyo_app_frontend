import 'package:flutter/material.dart';

class SpecialitiesFeelings extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final double radius;
  Color? colorWidget;
  bool showBorder;
  SpecialitiesFeelings(
      {super.key,
      required this.text,
      required this.width,
      required this.height,
      required this.radius,
      this.colorWidget,
      this.showBorder = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.surfaceVariant),
        borderRadius: BorderRadius.circular(radius),
      ),
      padding: EdgeInsets.symmetric(vertical: 13, horizontal: 14),
      // margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Text(text,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
          textAlign: TextAlign.center),
    );
  }
}
