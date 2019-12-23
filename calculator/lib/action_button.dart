

import 'package:flutter/material.dart';

import 'main.dart';

class ActionButton extends StatelessWidget {

  final Color defaultBackground = Colors.transparent;
  final Color defaultForeground = primaryColor;
  final Color changedBackground = primaryColor;
  final Color changedForeground = Colors.white;

  final String actionName;
  final bool enabled;
  final ActionCallBack onTapped;
  final Key key;
  final EdgeInsets padding;

  ActionButton({@required this.actionName,this.onTapped,this.enabled,this.key,this.padding}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        padding: padding ?? EdgeInsets.all(0.0),
        color: Color(0xffF6F6F6),
        child: GestureDetector(
          onTap: () {
            onTapped(key);
          },
          child: CircleAvatar(
            backgroundColor: enabled ? changedBackground : defaultBackground,
            radius: 30,
            child: Text(
              actionName,
              style: TextStyle(
                  color: enabled ? changedForeground : defaultForeground,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
      ),
    );
  }

}
