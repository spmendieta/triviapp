import 'package:flutter/material.dart';
import 'package:triviapp/util/constants.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [_createBackground(), _createTimer()],
    );
  }

  Widget _createBackground() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(PATH_BACKGROUND_IMAGE), fit: BoxFit.cover)),
    );
  }

  Widget _createTimer() {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: DEFAULT_PADDING),
      child: Column(
        children: [
          Container(
            width: DOUBLE_INFINITY,
            height: 35,
            color: Colors.white,
          )
        ],
      ),
    ));
  }
}
