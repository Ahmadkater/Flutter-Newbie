import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/ImageMessage.dart';
import 'package:whatsapp/Screens/Message.dart';

class Page_Two extends StatelessWidget {
  const Page_Two({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        "assets/background.png",
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
      Scaffold(
          backgroundColor: Colors.transparent,
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
                  backgroundImage:
                      AssetImage("assets/unsplash_EGXESvDSAFY.png"),
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
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Phone Call Button Pressed')));
                },
              ),
              IconButton(
                icon: const ImageIcon(
                  AssetImage("assets/video.png"),
                  size: 25,
                ),
                tooltip: 'Show Snackbar',
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Video Call Button Pressed')));
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
          body: Stack(children: [
            ListView(
              shrinkWrap: true,
              padding: EdgeInsetsDirectional.all(16),
              children: [
                Message(text: "Hello !", direction: true),
                Message(text: "Hello !", direction: false),
                Message(
                    text:
                        "Hey! Have you ever thought about how random moments can sometimes turn into the best memories? It’s like the universe loves to surprise us when we least expect it!",
                    direction: true),
                ImageMessage(),
                Message(
                    text: "what a Great Content To learn Flutter",
                    direction: false),
              ],
            ),
            Align(
                alignment: Alignment.bottomRight,
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 16, top: 16, bottom: 16),
                        child: TextFormField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: Color(0xFFFF168c4b), width: 1)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: Color(0xFFFF168c4b), width: 1)),
                            disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: Color(0xFFFF168c4b), width: 1)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: Color(0xFFFF168c4b), width: 1)),
                            hintText: "Type a Message...",
                            hintStyle:
                                TextStyle(fontSize: 12, color: Colors.white),
                            prefixIcon: Align(
                              widthFactor: 1.0,
                              heightFactor: 1.0,
                              child: ImageIcon(
                                AssetImage("assets/Camera.png"),
                                color: Colors.white,
                              ),
                            ),
                            suffixIcon: Align(
                              widthFactor: 1.0,
                              heightFactor: 1.0,
                              child: ImageIcon(AssetImage("assets/Send.png"),
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      iconAlignment: IconAlignment.end,
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFF168c4b),
                          shape: CircleBorder(),
                          iconColor: Colors.transparent),
                      onPressed: () {},
                      child: ImageIcon(
                        color: Colors.white,
                        AssetImage("assets/Mic.png"),
                      ),
                    )
                  ],
                ))
          ])),
    ]);
  }
}
