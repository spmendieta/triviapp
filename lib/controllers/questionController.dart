import 'package:flutter/animation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class QuestionController extends GetxController
    with SingleGetTickerProviderMixin {
  Animation _animation;
  AnimationController _animationController;

  Animation get animation => this._animation;

  @override
  void onInit() {
    _animationController =
        AnimationController(duration: Duration(seconds: 60), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        update();
      });

    _animationController.forward();

    super.onInit();
  }
}
