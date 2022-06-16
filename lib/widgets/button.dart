import 'package:flutter/material.dart';
import 'package:resize/resize.dart';

class button extends StatelessWidget {
  final VoidCallback onClickAction;

  button({required this.onClickAction});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(13, 0, 0, 5),
        child: SizedBox(
          width: 40,
          height: 40,
          child: CircleAvatar(
            backgroundColor: Color(0xffF5F5F5).withOpacity(0.36),
            radius: 50,
            child: IconButton(onPressed:onClickAction,
                icon: const Icon(IconData(0xe792, fontFamily: 'MaterialIcons', matchTextDirection: true),
                  color: Colors.white,
                )
            ),
          ),
        ),
      ),
    );
  }
}