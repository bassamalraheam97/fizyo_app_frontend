import 'package:flutter/material.dart';

class Speciality extends StatelessWidget {
  const Speciality({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(225, 226, 236, 1),
        border: Border.all(
            width: 2, color: Color(0xffF7F9FB), style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(25),
      ),
      width: 150,
      height: 50,
      child: Center(
        child: Text(title,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                  fontSize: 16,
                
                ),
            textAlign: TextAlign.center),
      ),
    );
  }
}
