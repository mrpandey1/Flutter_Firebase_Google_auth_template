import 'dart:io';

import 'package:My_First_Project/shared/platform_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatFormAlertDialog extends PlatformWidget {
  PlatFormAlertDialog(
      {@required this.title,
      @required this.content,
      this.defaultActionText,
      @required this.cancelActionText})
      : assert(title != null),
        assert(content != null),
        assert(defaultActionText != null);
  final String title;
  final String content;
  final String defaultActionText;
  final String cancelActionText;

  Future<bool> show(BuildContext context) async {
    return Platform.isIOS
        ? await showCupertinoDialog<bool>(
            context: context, builder: (context) => this)
        : await showDialog<bool>(
            context: context,
            barrierDismissible: false,
            builder: (context) => this);
  }

  @override
  Widget buildCupertinoWidget(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(title),
      content: Text(content),
      actions: _buildActions(context),
    );
  }

  @override
  Widget buildMaterialWidget(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: _buildActions(context),
    );
  }

  List<Widget> _buildActions(BuildContext context) {
    final actions = <Widget>[];
    if (cancelActionText != null) {
      actions.add(PlatformAlertDialogAction(
        child: Text(cancelActionText),
        onPressed: () => Navigator.of(context).pop(false),
      ));
    }
    actions.add(PlatformAlertDialogAction(
      child: Text(defaultActionText),
      onPressed: () => Navigator.of(context).pop(),
    ));
    return actions;
  }
}

class PlatformAlertDialogAction extends PlatformWidget {
  PlatformAlertDialogAction({this.child, this.onPressed});

  final Widget child;
  final VoidCallback onPressed;

  @override
  Widget buildCupertinoWidget(BuildContext context) {
    return CupertinoDialogAction(
      child: child,
      onPressed: onPressed,
    );
  }

  @override
  Widget buildMaterialWidget(BuildContext context) {
    return FlatButton(
      child: child,
      onPressed: onPressed,
    );
  }
}
