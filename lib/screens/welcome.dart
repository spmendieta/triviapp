import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  final _paddingInsets = EdgeInsets.all(8.0);

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
        padding: _paddingInsets,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: _createTextLabels(context),
        ),
      ),
    );
  }

  List<Widget> _createTextLabels(BuildContext context) {
    return [
      _createSpacer(),
      Text(
        "¿Estás listo para el desafío?",
        style: Theme.of(context)
            .textTheme
            .headline4
            .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      Text("data"),
      _createSpacer()
    ];
  }

  Widget _createSpacer() => Spacer();
}
