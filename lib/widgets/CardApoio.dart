import 'package:flutter/material.dart';

import '../telas/Subtelas/TelaConteudoApoio.dart';

class CardApoio extends StatelessWidget {
  final String title;
  final String description;
  final String author;
  final String videolink;
  final String summary;
  final Color color;

  CardApoio(
      {required this.title,
      required this.description,
      required this.author,
      required this.videolink,
      required this.summary,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
      child: Column(
        children: [
          InkWell(
            splashColor: Colors.blue.withAlpha(30),
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
