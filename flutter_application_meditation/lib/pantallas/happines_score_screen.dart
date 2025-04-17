import 'package:flutter/material.dart';

class HappinesScoreScreen extends StatelessWidget {
  const HappinesScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned(
              top: -350,
              left: -300,
              right: -300,
              child: CircleAvatar(
                radius: 420,
                backgroundColor: Color(0xfff2f3f4),
              ),
            ),
            Positioned(
              top: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Your happiness Score",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "2132",
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 2),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 120),
                    child: SizedBox(
                      width: 300,
                      child: Text(
                        "Congrulation! your happiness score is very high",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 65),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _iconWithLabel(
                        icon: Icons.alarm,
                        title: "32",
                        description: "Sessions/week",
                      ),
                      SizedBox(width: 20),
                      _iconWithLabel(
                        icon: Icons.trending_down,
                        title: "Low",
                        description: "Stress Level",
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              left: 0,
              top: 550,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "Recommended for you",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  _recomedationCard(
                    title: "Basic Meditation\nCourse",
                    subtitle: "15 min daily",
                    icon: Icons.access_time,
                    imgPath: "lib/images/MEDITATION2.png",
                    context: context,
                  ),
                  SizedBox(height: 16),
                  _recomedationCard(
                    title: "Daily Tought",
                    subtitle: "Meditation . 03 - 10 mins",
                    icon: Icons.play_arrow,
                    context: context,
                  ),
                  SizedBox(height: 16),
                  _recomedationCard(
                    title: "Breathing Exercise",
                    subtitle: "Meditation . 06 - 10 mins",
                    icon: Icons.play_arrow,
                    context: context,
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  _iconWithLabel(
      {required IconData icon,
      required String title,
      required String description}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: Colors.black, size: 28),
        SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              description,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }

  _recomedationCard(
      {required String title,
      required String subtitle,
      required IconData icon,
      String? imgPath,
      required BuildContext context}) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width),
      child: Container(
        //height: 280,
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Container(
              padding: EdgeInsets.only(left: 16, top: 16, bottom: 16),
              decoration: BoxDecoration(
                color: Color(0xfff0f0f0),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Positioned(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            subtitle,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                      imgPath != null
                          ? Image.asset(
                              "lib/images/RELOJ.webp",
                              height: 80,
                              width:  100,
                            )
                          : SizedBox.shrink(),
                    ],
                  )
                ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: imgPath != null
                        ? Image.asset(
                            imgPath,
                            height: 250,
                            width: 270,
                          )
                        : Padding(
                            padding: EdgeInsets.only(
                              right: 10,
                              bottom: 20,
                            ),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.white,
                              child: Icon(
                                icon,
                                color: Colors.black87,
                                size: 30,
                              ),
                            ),
                          ),
                  ),
                  imgPath != null ?
                  Positioned(
                    left: 80,
                    bottom: 20,
                    child: Transform.rotate(
                      angle: 5.5,
                      child: Image.asset("lib/images/BOMBILLA.webp",
                        height: 80)
                      )
                    )
                    :SizedBox.shrink(),
                ],
              ))),
    );
  }
}
