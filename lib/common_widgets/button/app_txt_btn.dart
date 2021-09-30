import 'package:durotto/config/style/text_style.dart';
import 'package:flutter/material.dart';

import 'btn_loading.dart';

class AppTxtBtn extends StatelessWidget {
  final String title;
  final String btnText;
  final Function? onPressed;
  final Color? btnTextColor;
  final bool loading;
  final bool disableTouchWhenLoading;

  const AppTxtBtn(
      {this.title = '',
      this.btnText = '',
      this.btnTextColor = Colors.blue,
      this.onPressed,
      this.loading = false,
      this.disableTouchWhenLoading = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          title,
          style: kSmallSubTitleTextStyle.copyWith(wordSpacing: -1),
        ),
        TextButton(
          onPressed: disableTouchWhenLoading && loading
              ? null
              : onPressed as void Function()?,
          child: Text(
            btnText,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                color: btnTextColor,
                fontSize: 16.0),
          ),
        ),
        buildLoading(loading: loading),
      ],
    );
  }
}
