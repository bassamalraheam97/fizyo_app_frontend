import 'package:fizyo_app_frontend/src/presentation/widgets/image_viewer.dart';
import 'package:flutter/material.dart';

class TextImage extends StatelessWidget {
  TextImage({
    Key? key,
    required this.typeCard,
    required this.widthWidget,
    required this.heightWidget,
    required this.listImage,
    this.backColor,
  }) : super(key: key);
  final String typeCard;
  final double widthWidget;
  final double heightWidget;
  final List<double> listImage;
  Color? backColor = Color(0xffF7F9FB);
  @override
  Widget build(BuildContext context) {
    List<String> getList(String typeCard) {
      switch (typeCard) {
        case 'male':
          return ['Male', 'assets/images/male.png', ''];
        case 'female':
          return ['Female', 'assets/images/female.png', ''];
        case 'home':
          return ['', 'assets/images/home.png', 'Home'];
        case 'online':
          return ['', 'assets/images/online.png', 'Online'];
        case 'center':
          return ['', 'assets/images/center.png', 'Center'];
        default:
          return ['', '', ''];
      }
    }

    List<String> list = getList(typeCard);
    return Container(
      decoration: BoxDecoration(
        color: backColor,
        // border: Border.all(
        //     width: 2, color: Color(0xffF7F9FB), style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(25),
      ),
      // color: Colors.white,
      width: widthWidget,
      height: heightWidget,
      padding: const EdgeInsets.fromLTRB(19, 13, 1, 46),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(list[0],
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                    fontSize: 24,
                  ),
              textAlign: TextAlign.left),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ImageViewer(
              imageURL: list[1],
              height: listImage[0],
              width: listImage[1],
              radius: listImage[2],
            ),
          ),
          list[2].isNotEmpty
              ? Text(
                  list[2],
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.left,
                )
              : Container(),
        ],
      ),
    );
  }
}
