import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

///C U S T O M  PERCENTAGE INDICATOR (FOR 4 CHILD PERCENTAGE INDICATOR)..........................
class CustomCircularPercentIndicator extends StatelessWidget {
  final String footerText;
  final double percentage;
  final String textPercentage;

  const CustomCircularPercentIndicator({
    Key? key,
    required this.footerText,
    required this.percentage,
    required this.textPercentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      backgroundColor: const Color(0xFFFAFAFA),
      backgroundWidth: 10,
      startAngle: 0,
      radius: 40,
      footer: Text(
        footerText,
        style: const TextStyle(
            height: 2.5, fontSize: 14, fontWeight: FontWeight.w400),
      ),
      lineWidth: 10,
      animation: true,
      percent: percentage,
      center: Text(
        textPercentage,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
      ),
      circularStrokeCap: CircularStrokeCap.round,
      linearGradient: const LinearGradient(
          colors: [Color(0xFF1EFFD6), Color(0xFF008080)],
          begin: Alignment(0.00, -1.00),
          end: Alignment(0, 1)),
    );
  }
}
