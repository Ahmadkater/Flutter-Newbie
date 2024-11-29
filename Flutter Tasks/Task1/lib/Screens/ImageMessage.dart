import 'package:flutter/material.dart';

class ImageMessage extends StatelessWidget {
  const ImageMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          constraints:
              BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 150),
          height: 200,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Color(0xFFFF168c4b),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                  bottomLeft: Radius.circular(16))),
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/textimage.png"),
                    fit: BoxFit.contain,
                    alignment: Alignment.center),
                borderRadius: BorderRadius.circular(16)),
          ),
        )
      ],
    );
  }
}
