import 'package:flutter/material.dart';
import 'package:resize/resize.dart';
import 'package:teste1/widgets/TituloField.dart';
import '../../widgets/button.dart';
import '../Tela0.dart';

class TelaProblema1 extends StatefulWidget {
  final Color color;
  final String title;
  final String problem;
  final String option1;
  final String option2;
  final String option3;
  final String explanation1;
  final String explanation2;
  final String explanation3;

  TelaProblema1(
      {required this.color,
      required this.title,
      required this.problem,
      required this.option1,
      required this.option2,
      required this.option3,
      required this.explanation1,
      required this.explanation2,
      required this.explanation3});

  @override
  State<TelaProblema1> createState() => _TelaProblema1State(
      color: color,
      title: title,
      problem: problem,
      option1: option1,
      option2: option2,
      option3: option3,
      explanation1: explanation1,
      explanation2: explanation2,
      explanation3: explanation3);
}

class _TelaProblema1State extends State<TelaProblema1> {
  final Color color;
  final String title;
  final String problem;
  final String option1;
  final String option2;
  final String option3;
  final String explanation1;
  final String explanation2;
  final String explanation3;

  _TelaProblema1State(
      {required this.color,
      required this.title,
      required this.problem,
      required this.option1,
      required this.option2,
      required this.option3,
      required this.explanation1,
      required this.explanation2,
      required this.explanation3});

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
                                      builder: (context) => const Tela0()))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 300.w,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Vamos falar sobre',
                              style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Montserrat',
                                color:
                                    const Color(0xff242424).withOpacity(0.86),
                              ),
                            ),
                            SizedBox(
                              width: 200.w,
                              child: Text(
                                title,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 28.9,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 50, 40, 0),
                      child: SizedBox(
                        width: 100.vw,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              'Situação Problema',
                              style: TextStyle(
                                fontSize: 19.13,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                              child: SizedBox(
                                width: 100.vw,
                                child: Text(
                                  problem,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 40, 0, 10),
                      child: Text(
                        "O que você faria",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    TituloField(
                        color: color,
                        title: title,
                        problem: problem,
                        option1: option1,
                        option2: option2,
                        option3: option3,
                        explanation1: explanation1,
                        explanation2: explanation2,
                        explanation3: explanation3,
                        thisexplanation: explanation1),
                    TituloField(
                        color: color,
                        title: title,
                        problem: problem,
                        option1: option2,
                        option2: option1,
                        option3: option3,
                        explanation1: explanation1,
                        explanation2: explanation2,
                        explanation3: explanation3,
                        thisexplanation: explanation2),
                    TituloField(
                        color: color,
                        title: title,
                        problem: problem,
                        option1: option3,
                        option2: option1,
                        option3: option2,
                        explanation1: explanation1,
                        explanation2: explanation2,
                        explanation3: explanation3,
                        thisexplanation: explanation3)
                  ],
                ),
              ),
            ),
          );
        });
  }
}
