import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GestureDetectorr extends StatefulWidget {
  const GestureDetectorr({Key? key}) : super(key: key);

  @override
  State<GestureDetectorr> createState() => _GestureDetectorrState();
}

class _GestureDetectorrState extends State<GestureDetectorr> {
  int tapTimes = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Tapped $tapTimes times'),
            GestureDetector(
              onTap: (){
                setState(() {
                  tapTimes++;
                });
              },
              child: Container(
                  padding: const EdgeInsets.all(15),
                  color: Colors.lightGreenAccent,
                  child: const Text('Tap Here')
              ),
            )
          ],
        ),
      ),
    );
  }
}
