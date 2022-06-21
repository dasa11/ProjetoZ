import 'package:flutter/material.dart';
import 'package:teste1/telas/Subtelas/TelaConteudoApoio.dart';

class CardApoioExtended extends StatelessWidget {
  final String title;
  final String description;
  final String author;
  final String videolink;
  final String summary;
  final Color color;

  CardApoioExtended(
      {required this.title,
      required this.description,
      required this.author,
      required this.videolink,
      required this.summary,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Column(
          children: [
            Card(
              elevation: 2,
              shadowColor: const Color(0xffc2c3c1),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: InkWell(
                // ignore: avoid_print
                onTap: () =>
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => TelaConteudoApoio(
                              videourl: videolink,
                              author: author,
                              description: description,
                              summary: summary,
                              title: title,
                              color: color,
                            ))),
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
                child: Text(
                  title,
                  style: const TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Color(0xff3F3D56),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ));
  }
}
