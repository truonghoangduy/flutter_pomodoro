import 'package:flutter/material.dart';
import 'package:flutter_pomodoro/src/home/widgets/main_title.dart';
import 'package:flutter_pomodoro/src/home/widgets/secound_title.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.red,
          highlightColor: Colors.blue,
          onTap: () => {Navigator.of(context).pushNamed("/settings")},
          child: Container(
            child: OrientationBuilder(builder: (context, orientation) {
              return Stack(
                children: [
                  Column(
                    children: const [
                      Flexible(fit: FlexFit.tight, child: MainTitle()),
                      Flexible(fit: FlexFit.tight, child: SecondTitle())
                    ],
                  ),
                  // TODO Add button to start
                ],
              );
            }),
          ),
        ),
      ),
    );
  }

  horizontalLayout() {
    // love
  }
}
