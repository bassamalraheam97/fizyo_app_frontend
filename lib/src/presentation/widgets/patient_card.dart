import 'image_viewer.dart';
import 'package:flutter/material.dart';

class PatientCard extends StatelessWidget {
  const PatientCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            width: 2, color: Color(0xffF7F9FB), style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(25),
      ),
      // color: Colors.white,
      width: 350,
      height: 193,
      padding: const EdgeInsets.fromLTRB(19, 13, 1, 46),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 188,
                child: Wrap(
                  direction: Axis.horizontal,
                  children: [
                    Text('list[0]',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(
                              color: Theme.of(context).colorScheme.onBackground,
                              fontSize: 24,
                            ),
                        textAlign: TextAlign.left),
                    const SizedBox(
                      height: 62,
                    ),
                    Text(
                      'list[1]',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.outline,
                          fontSize: 14),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: Image.asset('assets\images\patient.png'),
          ),
        ],
      ),
    );
  }
}
