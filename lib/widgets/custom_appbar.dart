//WELL WISE APP BAR................................................................
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: Column(
        children: [
          const Gap(40),
          Row(
            children: [
              const Gap(30),
              Container(
                height: 44.69,
                width: 44,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        colors: [Color(0xff1EFFD7), Color(0xff008080)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
                child: SvgPicture.asset('assets/icons/Heart.svg',
                    fit: BoxFit.scaleDown),
              ),
              const Gap(30),
              const Expanded(
                child: Text(
                  'WellWise',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 30),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
