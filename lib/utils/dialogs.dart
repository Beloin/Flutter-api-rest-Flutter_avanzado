import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Dialogs {
  static info(BuildContext context, {String title, String content}) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title ?? ""),
        content: Text(content ?? ""),
        actions: [
          FlatButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('OK'),
          ),
        ],
      ),
    );
  }
}

class ProgressDialog {
  final BuildContext context;

  ProgressDialog(this.context);

  void show() {
    showDialog(
      context: this.context,
      barrierDismissible: false,
      builder: (context) => Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }

  void dismiss() {
    Navigator.of(this.context).pop();
  }
}
