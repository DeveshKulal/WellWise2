//Main Parent CIRCULAR PERCENTAGE INDICATOR....................
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CircularPercentIndicatorParent extends StatelessWidget {
  const CircularPercentIndicatorParent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      arcBackgroundColor: const Color(0xFFFAFAFA),
      arcType: ArcType.FULL,
      backgroundWidth: 17,
      startAngle: 0,
      radius: 120,
      lineWidth: 17,
      animation: true,
      backgroundColor: Colors.white,
      percent: 0.85,
      center: const Text(
        '85%',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
      ),
      circularStrokeCap: CircularStrokeCap.round,
      linearGradient: const LinearGradient(
          colors: [Color(0xFF1EFFD6), Color(0xFF008080)],
          begin: Alignment(0.00, -1.00),
          end: Alignment(0, 1)),
    );
  }
}
