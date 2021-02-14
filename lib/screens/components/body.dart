import 'package:flutter/material.dart';
import 'package:triviapp/screens/components/timer.dart';
import 'package:triviapp/util/constants.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [_createBackground(), _createTimer(context)],
    );
  }

  Widget _createBackground() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(PATH_BACKGROUND_IMAGE), fit: BoxFit.cover)),
    );
  }

  Widget _createTimer(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: DEFAULT_PADDING),
      child: Column(children: [new Timer()]),
    ));
  }
}
