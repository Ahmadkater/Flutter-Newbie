import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  late String text;
  late Color mycolor;
  late bool direction;
  late ShapeBorder myshape;
  late AlignmentGeometry align;
  late TextAlign textAlign;

  Message({required this.text, required this.direction, super.key}) {
    if (direction) {
      mycolor = Color(0xFFFF168c4b);
      myshape = RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(16),
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16)));
      align = Alignment.centerLeft;
      textAlign = TextAlign.left;
    } else {
      mycolor = Color(0xFFFF232D36);
      myshape = RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16)));
      align = Alignment.centerRight;
      textAlign = TextAlign.right;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: align,
      children: [
        ConstrainedBox(
          constraints:
              BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 150),
          child: Card(
            shape: myshape,
            color: mycolor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                textAlign: TextAlign.left,
                this.text,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
