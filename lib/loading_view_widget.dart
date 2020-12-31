import 'package:flutter/material.dart';

class LoadingViewWidget extends StatelessWidget {
  final Widget child;
  final bool isShow;

  LoadingViewWidget({@required this.child, @required this.isShow}) {
    assert(this.child != null || this.isShow != null);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        child,
        isShow
            ? Align(
          alignment: FractionalOffset.center,
          child: new SizedBox(
            height: 70.0,
            width: 70.00,
            child: Container(
                color: const Color(0x00000000),
                child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: new CircularProgressIndicator())),
          ),
        )
            : Container()
      ],
    );
  }
}