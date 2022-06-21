import 'package:flutter/material.dart';

import '../telas/Subtelas/TelaProblema1.dart';

class CardAprenziadoExtended extends StatelessWidget {
  final Color color;
  final String title;
  final String problem;
  final String option1;
  final String option2;
  final String option3;
  final String explanation1;
  final String explanation2;
  final String explanation3;

  CardAprenziadoExtended(
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
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Column(
          children: [
            Card(
              elevation: 2,
              shadowColor: Color(color.value),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: InkWell(
                onTap: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                        builder: (context) => TelaProblema1(
                            color: color,
                            title: title,
                            problem: problem,
                            option1: option1,
                            option2: option2,
                            option3: option3,
                            explanation1: explanation1,
                            explanation2: explanation2,
                            explanation3: explanation3))),
                child: Container(
                    width: 250,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(color.value),
                        boxShadow: [
                          BoxShadow(
                            color: Color(color.value).withOpacity(0.4),
                            offset: const Offset(
                              0,
                              2,
                            ),
                            blurRadius: 20,
                            spreadRadius: (-8),
                          )
                        ]),
                    child: Center(
                      child: SizedBox(
                          width: 120,
                          height: 120,
                          child: Image.asset('images/imgcard.png')),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: SizedBox(
                width: 250,
                height: 45,
                child: Text(title,
                    style: const TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Color(0xff3F3D56),
                    ),
                    textAlign: TextAlign.center),
              ),
            ),
          ],
        ));
  }
}
