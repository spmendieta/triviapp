import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:triviapp/util/constants.dart';

class Welcome extends StatelessWidget {
  final TextEditingController _controllerUserName = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _createBody(context));
  }

  Widget _createBody(BuildContext context) {
    return Stack(
      children: [_createBackground(), _createSafeArea(context)],
    );
  }

  Widget _createBackground() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/icons/bg.jpg"), fit: BoxFit.cover)),
    );
  }

  Widget _createSafeArea(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: DEFAULT_PADDING),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: _createTextLabels(context),
        ),
      ),
    );
  }

  List<Widget> _createTextLabels(BuildContext context) {
    return [
      _createSpacer(2),
      Text(
        TITLE_WELCOME,
        style: Theme.of(context)
            .textTheme
            .headline4
            .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      Text(TITLE_WELCOME_INFO),
      _createSpacer(),
      TextField(
        decoration: InputDecoration(
            hintText: "Nombre del jugador",
            fillColor: Color(0xFF1C2342),
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)))),
        controller: _controllerUserName,
      ),
      _createSpacer(),
      _createOkButton(context),
      _createSpacer(2)
    ];
  }

  Widget _createSpacer([int flexParam = 0]) =>
      (flexParam > 0) ? Spacer(flex: flexParam) : Spacer();

  Widget _createOkButton(BuildContext context) {
    return InkWell(
      onTap: _manageAndStart,
      child: Container(
          width: DOUBLE_INFINITY,
          padding: EdgeInsets.all(DEFAULT_PADDING * 0.75),
          decoration: BoxDecoration(
              gradient: PRIMARY_COLOR,
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Text(
            TITLE_WELCOME_OKBUTTON,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .button
                .copyWith(color: Colors.black),
          )),
    );
  }

  void _manageAndStart() {
    if (_evaluateUserName()) {
      // TODO: Realizar la transición a la pantalla del quiz
    }
  }

  bool _evaluateUserName() {
    if (_controllerUserName != null) {
      String userName = _controllerUserName.text;
      if (userName.isNotEmpty) {
        log(userName);
        return true;
      } else {
        log("Vacío");
        return false;
      }
    }

    return false;
  }
}
