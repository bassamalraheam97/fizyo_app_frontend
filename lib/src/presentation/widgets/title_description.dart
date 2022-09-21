import 'package:flutter/material.dart';

class TitleDescription extends StatelessWidget {
  final String title;
  final String description;
  final String? phone;
  const TitleDescription(
      {Key? key, required this.title, required this.description, this.phone})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
                fontSize: 24),
          ),
          Text(
            description,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Theme.of(context).colorScheme.outline, fontSize: 14),
            textAlign: TextAlign.center,
          ),
          phone != null
              ? Text(
                  phone!,
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
