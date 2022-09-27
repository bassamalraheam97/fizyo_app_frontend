import 'package:flutter/material.dart';

class TitleDescription extends StatelessWidget {
  final int currentStep;
  String? accountType;
  String? phone;
  TitleDescription(
      {Key? key, required this.currentStep, this.accountType, this.phone})
      : super(key: key);

  List<String> getTitleDesc(int currentStp) {
    List<String> list = ["", "", ""];

    switch (currentStp) {
      case 1:
        list = [
          "Registration",
          "Please enter your information, then we will send OTP to verify",
          ""
        ];
        return list;
      case 2:
        list = [
          "Verification",
          "Please enter the code that we send to ",
          "$phone"
        ];
        return list;
      case 3:
        list = [
          "Type of Account",
          "Choose the type of your account, be careful to hange it is impossible",
          ""
        ];
        return list;
      case 4:
        list = [
          "What is your gender?",
          "To give you a better experience we need to know your Gender",
          ""
        ];
        return list;
      case 5:
        list = [
          "Select Profile Picture",
          "You can select photo from one of presetor add your own photo",
          ""
        ];
        return list;
      case 6:
        list = [
          "Select Service Type",
          "Please select prefered session location you can select one or more",
          ""
        ];
        return list;
      case 7:
        {
          if (accountType == 'PT') {
            list = [
              "How do you feel?",
              "Please select your diseases and symptoms, you can select one or more",
              ""
            ];
          } else if (accountType == 'EM') {
            list = [
              "What is your Specialities?",
              "Please select your specialities and skills, you can select one or more",
              ""
            ];
          }

          return list;
        }
      case 8:
        list = [
          "What makes you special?",
          "Please  determine your session's fee range, tell us more about you",
          ""
        ];
        return list;
      default:
        return list;
    }
  }

  @override
  Widget build(BuildContext context) {
    var list = getTitleDesc(currentStep);
    return SizedBox(
      width: (list[0].length * 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            list[0],
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
                fontSize: 24),
          ),
          Text(
            list[1],
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Theme.of(context).colorScheme.outline, fontSize: 14),
            textAlign: TextAlign.center,
          ),
          list[2].length > 0
              ? Text(
                  list[2],
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: const Color(0xffEE9CDA),
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                )
              : const SizedBox(
                  height: 1,
                ),
        ],
      ),
    );
  }
}
