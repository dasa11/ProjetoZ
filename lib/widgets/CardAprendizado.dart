import 'package:flutter/material.dart';
import 'package:teste1/telas/Subtelas/TelaProblema1.dart';

class CardAprendizado extends StatelessWidget {
  final Color color;
  final String title;
  final String problem;
  final String option1;
  final String option2;
  final String option3;
  final String explanation1;
  final String explanation2;
  final String explanation3;

  CardAprendizado(
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
      padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
      child: Column(
        children: [
          InkWell(
            splashColor: Colors.blue.withAlpha(30),
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
                width: 130,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(color.value)),
                child: Center(
                  child: SizedBox(
                      width: 100,
                      height: 60,
                      child: Image.asset('images/imgcard.png')),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: SizedBox(
              width: 130,
              height: 30,
              child: Text(
                title,
                style: const TextStyle(
                    fontSize: 13,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
