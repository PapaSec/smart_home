import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class MyPercent extends StatelessWidget {
  const MyPercent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Positioned(
          top: 170,
            left: 7,
            child: Text(
                'Min',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),
            )),
        const Positioned(
            top: 170,
            left: 152,
            child: Text(
              'Max.',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),
            )),
        const Positioned(
            height: 255,
            left: 38,
            child: Center(
              child: Text(
                'light intensity',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            )),
        Container(
          child: CircularPercentIndicator(
            radius: 94,
            lineWidth: 10,
            percent: 0.8,
            progressColor: Colors.blue,
            circularStrokeCap: CircularStrokeCap.round,
            center: const Text(
              '80%',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
        ),
      ],
    );
  }
}
