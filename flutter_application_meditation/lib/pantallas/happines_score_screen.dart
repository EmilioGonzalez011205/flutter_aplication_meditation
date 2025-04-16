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
                  style:TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),
                ),
                SizedBox(height: 10),
                Text("2132", style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                ),
                SizedBox(height: 2),
                Padding(
                  padding:EdgeInsets.symmetric(horizontal: 120),
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
                      title:"Low",
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
                  padding: EdgeInsets.symmetric(horizontal:16),
                  child: Text(
                    "Recommended for you", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    ),
                  ),
                ),
                SizedBox(height: 12),
              ],
            ),
          ),
        ],
      )
    );
  }
  
  _iconWithLabel({required IconData icon, required String title, required String description}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color:Colors.black, size: 28),
        SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
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
    ],);
  }
}