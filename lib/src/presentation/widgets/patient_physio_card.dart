import 'package:fizyo_app_frontend/src/presentation/widgets/image_viewer.dart';
import 'package:flutter/material.dart';

class PatientPhysioCard extends StatelessWidget {
  final String typeCard;
  Color? backColor = Color(0xffF7F9FB);
  PatientPhysioCard({super.key, required this.typeCard, this.backColor});

  List<String> getList(String typeCard) {
    switch (typeCard) {
      case 'patient':
        return [
          'I am a patient',
          'Find a physiotherapist online,book a session,  and more',
          'assets/images/patient.png'
        ];
      case 'physio':
        return [
          'I am a physiotherapist',
          'Find  patients, agree on sessions, and more',
          'assets/images/physio.png'
        ];
      default:
        return ['', '', ''];
    }
  }

  @override
  Widget build(BuildContext context) {
    var list = getList(typeCard);
    return Container(
      decoration: BoxDecoration(
        color: backColor,
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
                    Text(list[0],
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
                      list[1],
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
            child: ImageViewer(
              imageURL: list[2],
              height: 111.77,
              width: 150,
              radius: 0,
            ),
          ),
        ],
      ),
    );
  }
}
