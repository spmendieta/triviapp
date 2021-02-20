import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:triviapp/controllers/questionController.dart';
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
          borderRadius: BorderRadius.circular(50)),
      child: GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (controller) {
          return Stack(
            children: [
              LayoutBuilder(
                builder: (context, constraints) => Container(
                    width: constraints.maxWidth * controller.animation.value,
                    decoration: BoxDecoration(
                        gradient: PRIMARY_COLOR,
                        borderRadius: BorderRadius.circular(50))),
              ),
              Positioned.fill(
                  child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: DEFAULT_PADDING / 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(_getTimeMessage(
                        (controller.animation.value * 60).round())),
                    WebsafeSvg.asset("assets/icons/clock.svg")
                  ],
                ),
              ))
            ],
          );
        },
      ),
    );
  }

  String _getTimeMessage(int controllerValue) => (controllerValue == 1)
      ? "$controllerValue segundo"
      : "$controllerValue segundos";
}
