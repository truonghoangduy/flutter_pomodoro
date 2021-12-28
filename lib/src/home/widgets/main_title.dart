// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  const MainTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.grey[700],
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Flexible(
              flex: 3,
              fit: FlexFit.tight,
              child: const FittedBox(
                  child: Text(
                "Pomodoro",
                style: const TextStyle(color: Colors.white, letterSpacing: 1.3),
              )),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: const FittedBox(
                  child: Text(
                "2h = 4 x Work",
                style: TextStyle(color: Colors.white, letterSpacing: 1.3),
              )),
            )
          ],
        ),
      ),
    );
  }
}
