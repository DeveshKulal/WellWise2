// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:wellwise/widgets/bmi_radialgauge.dart';
import 'package:wellwise/widgets/custom_appbar.dart';
import 'package:wellwise/widgets/custom_line_chart.dart';
import 'package:wellwise/widgets/h_n_s_w_percentage_indicator.dart';
import 'package:wellwise/widgets/total_score_percentage_indicator.dart';

class DeveshBMI extends StatefulWidget {
  const DeveshBMI({super.key});

  @override
  State<DeveshBMI> createState() => _DeveshBMIState();
}

class _DeveshBMIState extends State<DeveshBMI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F4F4),
      body: Column(
        children: [
          const CustomAppBar(),
          const Gap(15),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Gap(30),
                      Expanded(
                        child: RichText(
                            text: const TextSpan(
                                text: 'Find, ',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                                children: <TextSpan>[
                              TextSpan(
                                  text: 'Track, ',
                                  style: TextStyle(color: Color(0xff07CFAB))),
                              TextSpan(
                                text: 'Analyze and ',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                              TextSpan(
                                text: 'Stay healthy',
                                style: TextStyle(color: Color(0xff07CFAB)),
                              )
                            ])),
                      ),
                    ],
                  ),
                  const Gap(30),
                  Row(
                    children: [
                      const Gap(20),
                      Expanded(
                        child: Container(
                          //MAin White container containing both (3D model ) and (BMI Gauge Indicator)...
                          height: 222,
                          width: 334,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: Colors.white,
                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: SizedBox(
                                    //container having 3D model ....
                                    height: 222,
                                    child: Image.asset(
                                      'assets/images/Charts.png',
                                      fit: BoxFit.scaleDown,
                                    )),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    const Gap(15),
                                    const Text(
                                      'Your BMI Score',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color: Colors.black),
                                    ),
                                    const Gap(10),
                                    const Flexible(
                                      child: Stack(children: <Widget>[
                                        SizedBox(
                                          height: 113,

                                          //container having BMI indicator....

                                          child: BmiRadialGauge(),
                                        ),
                                        // middle text which is PERCENTAGE  and indicator result BMI

                                        Positioned(
                                          top: 45,
                                          left: 40,
                                          child: Text(
                                            '22.2',
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ),
                                        Positioned(
                                          top: 95,
                                          left: 35,
                                          child: Text(
                                            'Normal',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )
                                      ]),
                                    ),
                                    const Gap(10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        //HEIGHT......MEASURE IN CM
                                        RichText(
                                            text: const TextSpan(
                                                text: '178 cm \n',
                                                style: TextStyle(
                                                    height: 1.5,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                    fontSize: 14),
                                                children: <TextSpan>[
                                              TextSpan(
                                                  text: 'Height',
                                                  style: TextStyle(
                                                      height: 1.5,
                                                      fontSize: 12,
                                                      color: Color(0xFF575153)))
                                            ])),
                                        //WEIGHT.......MEASURE IN KG
                                        RichText(
                                            text: const TextSpan(
                                                text: '70 kg \n',
                                                style: TextStyle(
                                                    height: 1.5,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                    fontSize: 14),
                                                children: <TextSpan>[
                                              TextSpan(
                                                  text: 'Weight',
                                                  style: TextStyle(
                                                      height: 1.5,
                                                      fontSize: 12,
                                                      color: Color(0xFF575153)))
                                            ]))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Gap(20),
                    ],
                  ),
                  //Container of 3d model and bmi ends here...
                  const Gap(23),
                  Row(
                    children: [
                      const Gap(30),
                      RichText(
                          text: const TextSpan(
                              text: 'Past ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontSize: 20),
                              children: <TextSpan>[
                            TextSpan(
                                text: 'Health Scores',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                    color: Color(0xFF07CFAB)))
                          ])),
                    ],
                  ),
                  const Gap(20),
                  Row(
                    children: [
                      const Gap(20),
                      Expanded(
                        child: Container(
                            height: 243,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(13),
                                boxShadow: const [
                                  BoxShadow(
                                      blurRadius: 15, color: Colors.black12)
                                ]),
                            child: const Padding(
                              padding: EdgeInsets.fromLTRB(20, 20, 10, 20),
                              child: CustomLineChart(),
                            )),
                      ),
                      const Gap(20)
                    ],
                  ), //END of GRAPH (PAST HEALTH SCORE)
                  const Gap(30),
                  const Row(
                    children: [
                      Gap(30),
                      Text(
                        'Scores Breakdown',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                    ],
                  ),
                  const Gap(16),
                  Stack(
                    children: [
                      const SizedBox(
                          width: 232,
                          child: Flexible(
                              child: CircularPercentIndicatorParent())),
                      Positioned(
                          top: 30,
                          left: 28,
                          child: SvgPicture.asset(
                              'assets/images/SBpercentage.svg')),
                      const Positioned(
                        top: 70,
                        left: 68,
                        child: Text(
                          'Total Score',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              height: 1.5),
                        ),
                      )
                    ],
                  ),
                  //end of Score Total score Percent indicator...
                  const Gap(30),

                  const SizedBox(
                    height: 115,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //Hydration percentage Indicator
                        SizedBox(
                            child: Expanded(
                                child: CustomCircularPercentIndicator(
                          textPercentage: '94%',
                          footerText: 'Hydration',
                          percentage: 0.94,
                        ))),
                        //Nutrition percentage Indicator
                        SizedBox(
                            child: Expanded(
                                child: CustomCircularPercentIndicator(
                          textPercentage: '70%',
                          footerText: 'Nutrition',
                          percentage: 0.7,
                        ))),
                        //Sleep percentage Indicator
                        SizedBox(
                            child: Expanded(
                                child: CustomCircularPercentIndicator(
                          textPercentage: '80%',
                          footerText: 'Sleep',
                          percentage: 0.8,
                        ))),
                        //Work percentage Indicator
                        SizedBox(
                            child: Expanded(
                                child: CustomCircularPercentIndicator(
                          textPercentage: '86%',
                          footerText: 'Work',
                          percentage: 0.86,
                        ))),
                      ],
                    ),
                  ),

                  const Gap(24),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Gap(20),
                        Stack(children: [
                          SizedBox(
                            height: 190,
                            width: 342,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: ColorFiltered(
                                colorFilter: const ColorFilter.mode(
                                    Colors.black45, BlendMode.srcOver),
                                child: Image.network(
                                  'https://s3-alpha-sig.figma.com/img/8d05/114c/8f1555d67c2911bf74d18d894ab453cf?Expires=1711324800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=c-dno9RreP1QkPTQt8XuR~hHU2iRWNXTJ83IUSj3dqYGtaRzUM84SlZuwXPJyT6zu8tjJKOagNrQ7V-r-XcMFqHmMg0GhBUIyBzdOGG6rVjC3B0T-ZFyaCUQNsmSX7NeIFn9t4cX7d5Ja8aPxmK~Y7zkHESDqXPKjLWIzkWRhVxa4lRohT0Gl4gfkxX-jLKi3J-ZyoarnfUOK86~eQybaEJMcxCq2dL0W~OADxsF0lHiXskg5g~XlGUrboCky-UMzmSwrcHBMDEDzNVSCXSRn0VTGPtuK4tsK9bqJZCW4uvQ4CLH9YoJPUDP4dUsGTnjqL6wtwEL4Sw7v1-RCy2A8A__',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          const Positioned(
                            bottom: 13,
                            left: 20,
                            child: Text(
                              '3 Mistakes To Avoid While\nDrinking Water',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800),
                            ),
                          )
                        ]),
                        const Gap(20),
                        SizedBox(
                          height: 190,
                          width: 342,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network(
                                'https://s3-alpha-sig.figma.com/img/10a9/9329/581f52857b3e48416d405efebee7dea8?Expires=1711324800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=cxuZXty9eQp1akQWv~gXmeNCt8vkdc2oAcGdZYZr~6V6zgNQSUw9zAyl10aX6IUXECvAfpcIenhr0C38rPHjiWk8iVCDZgVGiXfxJhb0N-qk8WvsD4ar23lxgTLhFVSHcvJuCqmGBBQfx2-~svuakcdWDNAcMlJ3rULmS0O6fnyY1vItdp-q3msuvta7drQO5JZVmI5ToZaJ3mfL3TZmDnf0345Sv-lc8OWILI3wOBV1z78XLXZyVfhR3enaSVG9idrI86fSz-sFLkyKnf733oaKYYc4F-AzQSb~6FX6OB2IC-KHOMINUcohP-71FchggvhgrY5X0wWFRkmCLiw4vA__',
                                fit: BoxFit.cover),
                          ),
                        ),
                        const Gap(20),
                        SizedBox(
                          height: 190,
                          width: 342,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network(
                                'https://s3-alpha-sig.figma.com/img/7896/9aab/7dbd9ec6030be0edc1467eb3b5b56b7c?Expires=1711324800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Sx9AwE013QwpD3PpXWDdhXxrupQxgGXuYPu-nYEdWt8BWR63nLNJbXwtskIG1dB2z~THdP7zq0Bj3oM~zg5w7yueugjsN437Rpinq-S8e-rd4tUiHCPVM2lWfZKMEqVMV0mch3sJLdhuMxK6AcziddyZf3xOUjJ2PO25ZwdKKbsOg9D0hyayCuLvFj1hPJoebpcmVQ1pWJYMcag7mFqH2eQge~HG8CnT-KOXTgPRL35ZZOa1Nw3s1EMimG3z9GgAWt9RlzdWZ7lfZqbWdf~GAtTCUK1OzPvTzNIZVOLCPBihuum6aIAI6wolKp0tJyxXkHj1C9t3iYG-u1JoQflGdA__',
                                fit: BoxFit.cover),
                          ),
                        ),
                        const Gap(20)
                      ],
                    ),
                  ),
                  const Gap(50)
                ], //2nd column end
              ),
            ),
          ),
        ],
      ),
    );
  }
}
