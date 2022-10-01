import '../../../../mobil.dart';
import 'package:flutter/material.dart';



class LayoutSelection extends StatelessWidget {
  const LayoutSelection({super.key, required this.desktop, required this.mobil});
  final Widget desktop;
  final Widget mobil;


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
              if (constraint.maxWidth > 700) {
                return desktop;
              } else {
                return mobil;
              }
            }
            );
  }
}