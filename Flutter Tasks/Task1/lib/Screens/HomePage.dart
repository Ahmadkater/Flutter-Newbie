import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
          ),
          backgroundColor: Color(0xFFFF168c4b),
          foregroundColor: Colors.white,
          leading: IconButton(
            icon: const ImageIcon(AssetImage("assets/Vector (Stroke).png"),
                size: 20),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Back Button Pressed')));
            },
          ),
          title: const Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("assets/unsplash_EGXESvDSAFY.png"),
              ),
              Padding(padding: EdgeInsets.all(4)),
              Text(
                "User Name",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              )
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: const ImageIcon(
                AssetImage("assets/Phone.png"),
                size: 25,
              ),
              tooltip: 'Show Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Phone Call Button Pressed')));
              },
            ),
            IconButton(
              icon: const ImageIcon(
                AssetImage("assets/video.png"),
                size: 25,
              ),
              tooltip: 'Show Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Video Call Button Pressed')));
              },
            ),
            IconButton(
              icon: const ImageIcon(
                AssetImage("assets/More-vertical.png"),
                size: 25,
              ),
              tooltip: 'Show Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Options Menu Button Pressed')));
              },
            ),
          ],
        ),
        body: Row(
          children: [Image.asset("assets/Camera.png")],
        ));
  }
}
