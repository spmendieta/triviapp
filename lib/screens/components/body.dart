import 'package:flutter/material.dart';
import 'package:triviapp/models/question.dart';
import 'package:triviapp/screens/components/timer.dart';
import 'package:triviapp/util/constants.dart';

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
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        new Timer(),
        _createSizedBox(),
        _createQuestionHeader(context),
        _createDivider(),
        _createSizedBox(),
        _createQuestionSection(context)
      ]),
    ));
  }

  Widget _createQuestionHeader(BuildContext context) {
    return Text.rich(TextSpan(
        text: "Pregunta 1",
        style: Theme.of(context)
            .textTheme
            .headline4
            .copyWith(color: SECONDARY_COLOR),
        children: [
          TextSpan(
              text: "/10",
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(color: SECONDARY_COLOR))
        ]));
  }

  Widget _createSizedBox() => SizedBox(height: DEFAULT_PADDING);
  Widget _createDivider() => Divider(thickness: 1.5, color: Colors.white);

  Widget _createQuestionSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(DEFAULT_PADDING),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            sample_data[0]['question'],
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(color: BLACK_COLOR),
          ),
          Container(
            margin: EdgeInsets.only(top: DEFAULT_PADDING),
            padding: EdgeInsets.all(DEFAULT_PADDING),
            decoration: BoxDecoration(
                border: Border.all(color: GRAY_COLOR),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [Text("1. Shául")],
            ),
          )
        ],
      ),
    );
  }
}
