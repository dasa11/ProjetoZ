import 'package:flutter/material.dart';

class ContainerField extends StatelessWidget {
  final Color color;
  final String text;
  ContainerField({required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 140,
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(color.value)),
          ),
          Text(text,
              style: const TextStyle(
                fontSize: 13,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600
              )),
        ],
      ),
    );
  }
}
