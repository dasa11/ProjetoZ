import 'package:flutter/material.dart';
import 'package:resize/resize.dart';

class inputField extends StatelessWidget {

  final String texto;
  final String hint;
  final TextInputType tipo;
  final int tam;
  inputField ({required this.texto, required this.hint, required this.tipo, required this.tam});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: SizedBox(
        width: 315.w,
        height: tam.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children:  [
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text( texto,
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            TextField(
              keyboardType: tipo,
              decoration: InputDecoration(
                hintText: hint,
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 3, color: Color(0xFFAAAAAA)),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 3, color: Colors.yellow),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}