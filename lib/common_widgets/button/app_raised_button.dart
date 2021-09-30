import 'package:flutter/material.dart';

import 'btn_loading.dart';

class AppButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String title;
  final bool loading;
  final bool disableTouchWhenLoading;
  final Color? color;
  final Color? txtColor;
  final String? logoPath;

  const AppButton({
    this.onPressed,
    required this.title,
    this.loading = false,
    this.disableTouchWhenLoading = false,
    this.color,
    this.txtColor,
    this.logoPath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: disableTouchWhenLoading && loading ? null : onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        child: Row(
          mainAxisAlignment: logoPath == null
              ? MainAxisAlignment.center
              : MainAxisAlignment.start,
          children: <Widget>[
            if (logoPath != null)
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
                child: Image(image: AssetImage(logoPath!), height: 35.0),
              ),
            Text(
              title,
              style: Theme.of(context).textTheme.button!.copyWith(
                  color: txtColor ?? Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600),
            ),
            buildLoading(loading: loading)
          ],
        ),
      ),
    );
  }
}
