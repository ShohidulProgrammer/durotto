import 'package:durotto/config/style/text_style.dart';
import 'package:flutter/material.dart';

import 'loading_screen.dart';

Widget buildState({String title = 'No Item'}) {
  return Center(child: Text(title, style: kMidTitleTextStyle));
}

Widget defaultOnWaiting({String? waitingTxt}) =>
    LoadingScreen(waitingTxt: waitingTxt);

Widget defaultOnError(BuildContext context, Object? error,
        {String? errorTitle}) =>
    _buildError(error, errorTitle);

Widget _buildError(Object? error, String? errorTitle) {
  String errorMsg;
  if (errorTitle != null) {
    errorMsg = errorTitle;
  } else if (error.toString().contains('permission-denied')) {
    errorMsg = 'No Permission';
  } else if (error == null || error.toString().contains('unknown')) {
    debugPrint('_buildError | error:$error');
    errorMsg = 'No Internet';
  } else {
    debugPrint('_buildError | error:$error');
    errorMsg = 'Connection Failed';
  }

  return buildState(title: errorMsg);
}
