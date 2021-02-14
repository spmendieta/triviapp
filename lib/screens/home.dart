import 'package:flutter/material.dart';
import 'package:triviapp/screens/components/body.dart';
import 'package:triviapp/util/constants.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: _createAppbar(),
      body: new Body(),
    );
  }

  Widget _createAppbar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        FlatButton(
          onPressed: () {},
          child: Text(TEXT_HOME_SKIP),
        ),
      ],
    );
  }
}
