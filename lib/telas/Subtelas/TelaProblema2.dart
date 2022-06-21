import 'package:flutter/material.dart';
import 'package:resize/resize.dart';
import 'package:teste1/telas/Subtelas/TelaProblema1.dart';
import 'package:teste1/telas/Tela0.dart';

import '../../widgets/button.dart';

class TelaProblema2 extends StatefulWidget {
  final Color color;
  final String title;
  final String problem;
  final String option1;
  final String option2;
  final String option3;
  final String explanation1;
  final String explanation2;
  final String explanation3;
  final String Thisexplanation;

  TelaProblema2(
      {required this.color,
      required this.title,
      required this.problem,
      required this.option1,
      required this.option2,
      required this.option3,
      required this.explanation1,
      required this.explanation2,
      required this.explanation3,
      required this.Thisexplanation});

  @override
  State<TelaProblema2> createState() => _TelaProblema2State(
      color: color,
      title: title,
      problem: problem,
      option1: option1,
      option2: option2,
      option3: option3,
      explanation1: explanation1,
      explanation2: explanation2,
      explanation3: explanation3,
      Thisexplanation: Thisexplanation);
}

class _TelaProblema2State extends State<TelaProblema2> {
  final Color color;
  final String title;
  final String problem;
  final String option1;
  final String option2;
  final String option3;
  final String explanation1;
  final String explanation2;
  final String explanation3;
  final String Thisexplanation;

  _TelaProblema2State(
      {required this.color,
      required this.title,
      required this.problem,
      required this.option1,
      required this.option2,
      required this.option3,
      required this.explanation1,
      required this.explanation2,
      required this.explanation3,
      required this.Thisexplanation});

  @override
  Widget build(BuildContext context) {
    return Resize(
        allowtextScaling: true,
        builder: () {
          return SafeArea(
            child: Scaffold(
              backgroundColor: const Color(0xffF8F8F8),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      color: Color(color.value),
                      width: 100.vw,
                      height: 10.vh,
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 5),
                          child: button(
                              onClickAction: () => Navigator.of(context)
                                  .pushReplacement(MaterialPageRoute(
                                      builder: (context) => TelaProblema1(
                                          color: color,
                                          title: title,
                                          problem: problem,
                                          option1: option1,
                                          option2: option2,
                                          option3: option3,
                                          explanation1: explanation1,
                                          explanation2: explanation2,
                                          explanation3: explanation3)))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: SizedBox(
                        width: 300.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: const TextStyle(
                                fontSize: 28.09,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                              child: SizedBox(
                                width: 300.w,
                                child: Text(
                                  problem,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 300.w,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffEAEAEA)),
                      child: Center(
                        child: Text(
                            option1,
                            style: const TextStyle(
                              fontSize: 15,
                              fontFamily: 'Montserrat',
                            ),
                          ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: SizedBox(
                        width: 300.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              'Possíveis repercussões',
                              style: TextStyle(
                                fontSize: 20.09,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: SizedBox(
                                width: 300.w,
                                height: 30,
                                child: const Text(
                                  'Aprendizados',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff8E8E8E),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 300.w,
                              child: Text(
                                Thisexplanation,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 60, 0, 20),
                      child: SizedBox(
                        width: 150.w,
                        height: 70.h,
                        child: TextButton(
                          onPressed: () => Navigator.of(context)
                              .pushReplacement(PageRouteBuilder(
                                  pageBuilder: (context, animation,
                                          secondaryAnimation) =>
                                      const Tela0(),
                                  transitionsBuilder: (c, anim, a2, child) =>
                                      FadeTransition(
                                        opacity: anim,
                                        child: child,
                                      ),
                                  transitionDuration:
                                      const Duration(milliseconds: 500))),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(color.value)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    side: BorderSide(
                                        color: Color(color.value)))),
                          ),
                          child: const Text(
                            'Continuar',
                            style: TextStyle(
                              fontSize: 17.8,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Color(0xff1B1B1B),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
