import 'package:facebook/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class NewsFeed extends StatelessWidget {
  NewsFeed({super.key});

  var profileImagePath = "assets/images/messi.jpg";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          backgroundColor: AppColors.whiteColor,
          appBar: AppBar(
            title: Text(
              "Facebook",
              style: TextStyle(
                  color: AppColors.blueColor,
                  fontSize: 30,
                  fontWeight: FontWeight.w800),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: ImageIcon(
                    AssetImage("assets/Icons/appbar/Plus.png"),
                    color: AppColors.blackColor,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: ImageIcon(AssetImage("assets/Icons/appbar/Search.png"),
                      color: AppColors.blackColor)),
              IconButton(
                  onPressed: () {},
                  icon: ImageIcon(
                      AssetImage("assets/Icons/appbar/Messenger.png"),
                      color: AppColors.blackColor)),
            ],
            bottom: TabBar(
                indicatorColor: AppColors.blueColor,
                labelColor: AppColors.blueColor,
                unselectedLabelColor: AppColors.greyColor,
                tabs: [
                  ImageIcon(
                    AssetImage("assets/Icons/appbar/Vector.png"),
                  ),
                  ImageIcon(
                    AssetImage("assets/Icons/appbar/Store.png"),
                  ),
                  ImageIcon(
                    AssetImage("assets/Icons/appbar/Store.png"),
                  ),
                  ImageIcon(
                    AssetImage("assets/Icons/appbar/Vector (3).png"),
                  ),
                  ImageIcon(
                    AssetImage("assets/Icons/appbar/Notification.png"),
                  ),
                  CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage(profileImagePath)),
                ]),
          ),
          body: Column(
            children: [
              Container(
                padding: EdgeInsets.all(11),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.transparent,
                    border: BorderDirectional(
                        top: BorderSide(color: AppColors.greyColor),
                        bottom: BorderSide(color: AppColors.greyColor))),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(profileImagePath),
                    ),
                    Expanded(
                      child: TextFormField(
                          initialValue: "What's in your mind ? ",
                          style: TextStyle(
                              color: AppColors.greyColor,
                              fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.transparent,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.transparent, width: 1)),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.transparent, width: 1)),
                              disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.transparent, width: 1)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.transparent, width: 1)))),
                    ),
                    ImageIcon(
                      AssetImage("assets/Icons/Post/gallery.png"),
                      color: Colors.green,
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                height: 220,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: BorderDirectional(
                        top: BorderSide(color: AppColors.greyColor),
                        bottom: BorderSide(color: AppColors.greyColor))),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(6),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/image3.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(15)),
                              width: 112,
                              height: 110,
                              child: IconButton(
                                  alignment: Alignment.bottomCenter,
                                  hoverColor: AppColors.blueColor,
                                  color: AppColors.blueColor,
                                  focusColor: AppColors.blueColor,
                                  onPressed: () {},
                                  icon: ImageIcon(
                                      AssetImage("assets/Icons/Post/add.png"))),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              textAlign: TextAlign.center,
                              "Create a\n Story",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 12),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(6),
                      child: Stack(alignment: Alignment.topLeft, children: [
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/Rectangle 7.png"),
                                fit: BoxFit.cover,
                              ),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15)),
                          width: 112,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage(profileImagePath)),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: EdgeInsets.all(6),
                      child: Stack(alignment: Alignment.topLeft, children: [
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/Rectangle 8.png"),
                                fit: BoxFit.cover,
                              ),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15)),
                          width: 112,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage(profileImagePath)),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: EdgeInsets.all(6),
                      child: Stack(alignment: Alignment.topLeft, children: [
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/image3.jpg"),
                                fit: BoxFit.cover,
                              ),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15)),
                          width: 112,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage(profileImagePath)),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.transparent,
                      border: BorderDirectional(
                        top: BorderSide(color: AppColors.blackColor),
                      )),
                  child: ListView(
                    children: [
                      Container(
                        padding: EdgeInsets.all(11),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: BorderDirectional(
                                bottom:
                                    BorderSide(color: AppColors.blackColor))),
                        height: 400,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(
                                      "assets/images/429820590_791043733050594_2437304548159507703_n.jpg"),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Route"),
                                      Row(
                                        children: [
                                          Text("8h."),
                                          ImageIcon(AssetImage(
                                              "assets/Icons/Post/Earth.png")),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Spacer(),
                                ImageIcon(
                                    AssetImage("assets/Icons/Post/dots.png"))
                              ],
                            ),
                            Expanded(
                              child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/394207767_709508957870739_4789263993603935944_n.jpg")))),
                            ),
                            Row(
                              children: [
                                ImageIcon(
                                  AssetImage("assets/Icons/Post/heart-2.png"),
                                  color: AppColors.blackColor,
                                ),
                                SizedBox(width: 8),
                                ImageIcon(
                                    AssetImage("assets/Icons/Post/Vector.png"),
                                    color: AppColors.blackColor),
                                SizedBox(width: 8),
                                ImageIcon(
                                    AssetImage(
                                        "assets/Icons/Post/Paper_Plane.png"),
                                    color: AppColors.blackColor),
                                Spacer(),
                                ImageIcon(
                                    AssetImage(
                                        "assets/Icons/Post/Icon Frame.png"),
                                    color: AppColors.blackColor)
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(11),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: BorderDirectional(
                                bottom:
                                    BorderSide(color: AppColors.blackColor))),
                        height: 400,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(
                                      "assets/images/429820590_791043733050594_2437304548159507703_n.jpg"),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Route"),
                                      Row(
                                        children: [
                                          Text("8h."),
                                          ImageIcon(AssetImage(
                                              "assets/Icons/Post/Earth.png")),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Spacer(),
                                ImageIcon(
                                    AssetImage("assets/Icons/Post/dots.png"))
                              ],
                            ),
                            Expanded(
                              child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/394207767_709508957870739_4789263993603935944_n.jpg")))),
                            ),
                            Row(
                              children: [
                                ImageIcon(
                                  AssetImage("assets/Icons/Post/heart-2.png"),
                                  color: AppColors.blackColor,
                                ),
                                SizedBox(width: 8),
                                ImageIcon(
                                    AssetImage("assets/Icons/Post/Vector.png"),
                                    color: AppColors.blackColor),
                                SizedBox(width: 8),
                                ImageIcon(
                                    AssetImage(
                                        "assets/Icons/Post/Paper_Plane.png"),
                                    color: AppColors.blackColor),
                                Spacer(),
                                ImageIcon(
                                    AssetImage(
                                        "assets/Icons/Post/Icon Frame.png"),
                                    color: AppColors.blackColor)
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
