//BMI Radial Gauge.............................
import 'package:flutter/material.dart';
import 'package:gauge_indicator/gauge_indicator.dart';

class BmiRadialGauge extends StatelessWidget {
  const BmiRadialGauge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AnimatedRadialGauge(
      duration: Duration(seconds: 5),
      curve: Curves.elasticOut,
      radius: 60,
      value: 0,
      initialValue: 0,
      axis: GaugeAxis(
          min: 0,
          max: 260,
          degrees: 260,
          style: GaugeAxisStyle(thickness: 20, background: Colors.black12),
          pointer: GaugePointer.triangle(
              borderRadius: CircularProgressIndicator.strokeAlignOutside,
              border: GaugePointerBorder(color: Colors.white, width: 2),
              width: 15,
              height: 15,
              color: Colors.blue),
          segments: [
            GaugeSegment(
              from: 0,
              to: 120,
              color: Colors.red,
            ),
            GaugeSegment(from: 120, to: 170, color: Colors.green),
            GaugeSegment(from: 170, to: 210, color: Colors.orange),
            GaugeSegment(from: 210, to: 260, color: Colors.pink),
          ]),
    );
  }
}
