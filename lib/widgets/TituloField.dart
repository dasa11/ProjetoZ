import 'package:flutter/material.dart';
import 'package:resize/resize.dart';
import 'package:teste1/telas/Subtelas/TelaProblema2.dart';

class TituloField extends StatelessWidget {

  final Color color;
  final String title;
  final String problem;
  final String option1;
  final String option2;
  final String option3;
  final String explanation1;
  final String explanation2;
  final String explanation3;
  final String thisexplanation;

  TituloField({required this.color, required this.title,required this.problem,  required this.option1, required this.option2, required this.option3,
    required this.explanation1, required this.explanation2, required this.explanation3, required this.thisexplanation
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: SizedBox(
        width: 300.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: InkWell(
                onTap: ()=> Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(
                    builder: (context) => TelaProblema2(color: color, title: title, problem: problem, option1: option1, option2: option2, option3: option3, explanation1: explanation1, explanation2: explanation2, explanation3: explanation3, Thisexplanation: thisexplanation,))),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color(0xffEAEAEA)),
                  child: Center(
                      child: Text(option1,
                        style: const TextStyle(
                          fontSize: 15,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}