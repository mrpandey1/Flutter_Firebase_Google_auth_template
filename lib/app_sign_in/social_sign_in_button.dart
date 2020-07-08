import 'package:My_First_Project/shared/custom_raised_button.dart';
import 'package:flutter/material.dart';

class SocialSignInButton extends CustomRaisedButton {
  SocialSignInButton({
    @required String assetName,
    String text,
    Color color,
    Color textColor,
    VoidCallback onPressed,
  })  : assert(assetName != null),
        assert(text != null),
        super(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(assetName),
              Text(
                text,
                style: TextStyle(color: textColor, fontSize: 15),
              ),
              Opacity(
                opacity: 0.0,
                child: Image.asset('images/google-logo.png'),
              )
            ],
          ),
          color: color,
          height: 40,
          onPressed: onPressed,
        );
}
