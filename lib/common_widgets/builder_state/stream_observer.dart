import 'package:flutter/material.dart';

import 'default_state.dart';

class StreamObserver<T> extends StatelessWidget {
  @required
  final Stream<T>? stream;
  @required
  final AsyncWidgetBuilder<T>? onSuccessHasData;
  final AsyncWidgetBuilder<T>? onSuccessNoData;
  final String noDataTitle;
  final String? errorTitle;
  final AsyncWidgetBuilder<T>? onError;
  final AsyncWidgetBuilder<T>? onWaiting;
  final String? waitingTxt;

  const StreamObserver(
      {required this.stream,
      required this.onSuccessHasData,
      this.onSuccessNoData,
      this.onError,
      this.onWaiting,
      this.waitingTxt,
      this.noDataTitle = 'No Item',
      this.errorTitle});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<T>(
        stream: stream,
        builder: (BuildContext context, AsyncSnapshot<T> snapshot) {
          if (snapshot.hasError) {
            return (onError != null)
                ? onError!(context, snapshot)
                : defaultOnError(context, snapshot.error,
                    errorTitle: errorTitle);
          }
          if (snapshot.hasData) {
            // print('StreamObserver | hasData ${snapshot.data}');
            return onSuccessHasData!(context, snapshot);
          } else if (snapshot.connectionState == ConnectionState.active &&
              !snapshot.hasData) {
            // print('StreamObserver | not hasData');
            return (onSuccessNoData != null)
                ? onSuccessNoData!(context, snapshot)
                : buildState(title: noDataTitle);
          } else {
            return (onWaiting != null)
                ? onWaiting!(context, snapshot)
                : defaultOnWaiting(waitingTxt: waitingTxt);
          }
        });
  }
}
