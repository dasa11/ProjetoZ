import 'package:flutter/material.dart';

class Cardizinho extends StatelessWidget {
  final Color color;
  final String text;

  Cardizinho({required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Column(
          children: [
            Card(
              elevation: 0,
              shadowColor: Color(color.value),
              shape: const RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
              ),
              child: Container(
                  width: 250,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(color.value),
                    boxShadow: [BoxShadow(
                      color: Color(color.value).withOpacity(0.4),
                      offset: const Offset(
                        0,
                        2,
                      ),
                      blurRadius: 20,
                      spreadRadius: (-8),
                    )]
                  ),
                  child: const Center(
                    child: Text('IMAGEM',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Color(0xff3F3D56))),
                  )),
            ),
            Text(
              text,
              style: const TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Color(0xff3F3D56)),
            ),
          ],
        ));
  }
}
