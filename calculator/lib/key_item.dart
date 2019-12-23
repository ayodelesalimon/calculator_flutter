import 'package:calculator/main.dart';
import 'package:flutter/material.dart';

class KeyItem extends StatelessWidget {

  final Widget child;
  final Key key;
  final KeyCallBack onKeyTap;

  KeyItem({@required this.child,this.key,this.onKeyTap});

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMaterial(context));
    return Expanded(
      child: Material(
        type: MaterialType.transparency,
        child: InkResponse(
          splashColor: primaryColor,
          highlightColor: Colors.white,
          onTap: () => onKeyTap(key),
          child: Container(
            //color: Colors.white,
            alignment: Alignment.center,
            child: child,
          ),
        ),
      ),
    );
  }
}