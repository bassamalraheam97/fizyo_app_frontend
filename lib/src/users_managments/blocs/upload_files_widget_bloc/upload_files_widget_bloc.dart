import 'package:bloc/bloc.dart';
import 'package:fizyo_app_frontend/src/presentation/widgets/files_show_delete.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/upload_files_widget_bloc/upload_files_widget_event.dart';
import 'package:fizyo_app_frontend/src/users_managments/blocs/upload_files_widget_bloc/upload_files_widget_state.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';

class UploadFilesWidgetBloc
    extends Bloc<UploadFilesWidgetEvent, UploadFilesWidgetState> {
  void openFile(String url) async {
    await OpenFile.open(
      url,
    );
  }

  UploadFilesWidgetBloc()
      : super(UploadFilesWidgetStateInitial([Container()])) {
    on<UploadFilesWidgetEventChange>((event, emit) async {
      List<Widget> list = [];
      int count = event.files.length ~/ 2;
      for (int i = 1; i <= count; i++) {
        if (event.files['name$i'].toString().isNotEmpty) {
          list.add(
            FilesShowDelete(
              attFormId: 'attachmentName.name$i',
              openFile: openFile,
              deleteFile: event.deleteFile,
              url: event.files['fileInfo$count'][0],
              count: i,
            ),
          );
        }
      }
      if (list.isEmpty) {
        list.add(SizedBox(
          height: 4,
        ));
      }
      emit(UploadFilesWidgetStateChanged(list));
    });
  }
}
