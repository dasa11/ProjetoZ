import 'package:flutter/material.dart';

class ContainerCircular extends StatelessWidget {
  final Color color;
  final String text;
  ContainerCircular({required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0),
      child: Column(
        children: [
          Container(
            width: 98,
            height: 96,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(color.value)),
          ),
          Text(text,
              style: const TextStyle(
                fontSize: 13,
                fontFamily: 'Montserrat',
              )),
        ],
      ),
    );
  }
}
