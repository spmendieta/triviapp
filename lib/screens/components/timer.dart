import 'package:flutter/material.dart';
import 'package:triviapp/util/constants.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Timer extends StatelessWidget {
  const Timer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: DOUBLE_INFINITY,
      height: 35,
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xFF3F4768), width: 3),
          borderRadius: BorderRadius.circular(50.0)),
      child: Stack(
        children: [
          LayoutBuilder(
            builder: (context, constaints) => Container(
                width: constaints.maxWidth * 0.5,
                decoration: BoxDecoration(
                    gradient: PRIMARY_COLOR,
                    borderRadius: _setBorderRadius(50.0))),
          ),
          Positioned.fill(
              child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: DEFAULT_PADDING / 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("10 seconds"),
                WebsafeSvg.asset("assets/icons/clock.svg")
              ],
            ),
          ))
        ],
      ),
    );
  }

  BorderRadius _setBorderRadius(double radiusValue) =>
      BorderRadius.circular(radiusValue);
}
