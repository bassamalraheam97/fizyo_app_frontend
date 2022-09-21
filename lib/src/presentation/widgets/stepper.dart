import 'package:flutter/material.dart';

class StepperWidget extends StatelessWidget {
  final int startVal;
  final int endVal;
  const StepperWidget({Key? key, required this.startVal, required this.endVal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 23,
      height: 32,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('$startVal',style: Theme.of(context).textTheme.headlineSmall!.copyWith(
            color: Theme.of(context).colorScheme.onBackground,
            fontSize: 24,
          ),
          ),
          Text('/',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Theme.of(context).colorScheme.outline,
            fontSize: 14
          ),),
          Text('$endVal',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Theme.of(context).colorScheme.outline,
            fontSize: 14
          ),),
        ],
      ),
    );
  }
}
