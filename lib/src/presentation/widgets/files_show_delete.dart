import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:reactive_forms/reactive_forms.dart';

class FilesShowDelete extends StatelessWidget {
  final String attFormId;
  final Function openFile;
  final Function deleteFile;
  final String url;
  final int count;
  const FilesShowDelete({
    super.key,
    required this.attFormId,
    required this.openFile,
    required this.deleteFile,
    required this.url,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            // width: 229,
            height: 40,
            child: ReactiveTextField(
              formControlName: attFormId,
              decoration: InputDecoration(
                labelText: 'Certificate',
                labelStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
                border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(15.0))),
                fillColor: Theme.of(context).colorScheme.surfaceVariant,
                filled: true,
              ),
            ),
          ),
        ),
        Container(
          height: 40,
          width: 40,
          margin: EdgeInsets.all(4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Theme.of(context).colorScheme.tertiary,
          ),
          child: IconButton(
              onPressed: () {
                openFile(url);
              },
              icon: Icon(
                CupertinoIcons.eye,
                color: Color(0xffF7F9FB),
              )),
        ),
        Container(
          height: 40,
          width: 40,
          margin: EdgeInsets.all(4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Theme.of(context).colorScheme.error,
          ),
          child: IconButton(
              onPressed: () {
                deleteFile(count);
              },
              icon: Icon(
                CupertinoIcons.delete,
                color: Color(0xffF7F9FB),
              )),
        ),
      ],
    );
  }
}
