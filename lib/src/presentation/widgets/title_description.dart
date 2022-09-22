import 'package:flutter/material.dart';

class TitleDescription extends StatelessWidget {
  final int currentStep;
  const TitleDescription({Key? key, required this.currentStep})
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
          "+90 531 999 00 11"
        ];
        return list;
      case 3:
        list = [
          "Type of Account",
          "Choose the type of your account, be careful to hange it is impossible",
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
      width: 236,
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
