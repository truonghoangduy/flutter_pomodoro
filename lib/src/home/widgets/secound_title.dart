import 'package:flutter/material.dart';

class SecondTitle extends StatefulWidget {
  const SecondTitle({Key? key}) : super(key: key);

  @override
  _SecondTitleState createState() => _SecondTitleState();
}

class _SecondTitleState extends State<SecondTitle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      // color: Colors.red,
      child: Row(
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: SubTitle(
              boxColor: Colors.redAccent,
              timeMinutue: "25",
              titleName: "WORK",
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: SubTitle(
              boxColor: Colors.greenAccent,
              timeMinutue: "5",
              titleName: "BREAK",
            ),
          )
        ],
      ),
    );
  }
}

// TODO add custom color theme base on user wannted [OPTIONAL]
// TODO add custom work time/ breake time by user perference
class SubTitle extends StatelessWidget {
  final Color boxColor;
  final String timeMinutue;
  final String titleName;
  SubTitle(
      {Key? key,
      required this.boxColor,
      required this.timeMinutue,
      required this.titleName})
      : super(key: key);
  var textStyle = const TextStyle(color: Colors.white, letterSpacing: 1.3);
  final minuteInArb = "MIN";
  @override
  Widget build(BuildContext context) {
    return Container(
      color: boxColor,
      child: FractionallySizedBox(
        widthFactor: 0.8,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                  fit: FlexFit.tight,
                  child: FractionallySizedBox(
                    widthFactor: 0.8,
                    child: FittedBox(
                        child: Text(
                      timeMinutue.toUpperCase() + " " + minuteInArb,
                      style: textStyle,
                    )),
                  )),
              Flexible(
                  fit: FlexFit.tight,
                  child: FittedBox(
                      child: Text(
                    titleName.toUpperCase(),
                    style: textStyle,
                  )))
            ],
          ),
        ),
      ),
    );
  }
}
