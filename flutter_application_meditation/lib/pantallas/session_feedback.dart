import 'package:flutter/material.dart';
import 'package:flutter_application_meditation/pantallas/happines_score_screen.dart';

class SessionFeedback extends StatelessWidget {
  const SessionFeedback({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(color: Color(0xffdff7eb))),
          Positioned(
            top: 210,
            left: -410,
            child: CircleAvatar(radius: 280,backgroundColor: Colors.orange)
          ),
          Positioned(
            top: 270,
            left: -320,
            child: CircleAvatar(radius: 220,backgroundColor: Color(0xffdff7eb))
          ),
          Positioned(
            top: 210,
            right: -410,
            child: CircleAvatar(radius: 280,backgroundColor: Colors.orange)
          ),
          Positioned(
            top: 270,
            right: -330,
            child: CircleAvatar(radius: 220,backgroundColor: Color(0xffdff7eb))
          ),
          Positioned(
            top: 530,
            right: -200,
            child: Image.asset("lib/images/NUBE.webp", width: 500, fit: BoxFit.cover,)
          ),
          Positioned(
            top: 70,
            left: -180,
            child: Image.asset("lib/images/NUBE.webp", width: 500, fit: BoxFit.cover,)
          ),
          Positioned(
            top: 120,
            right: 25,
            child: Image.asset("lib/images/PALOMA.png", width: 150, fit: BoxFit.cover,)
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 320,
            child: RichText(
              textAlign: TextAlign.center,
              text:TextSpan(
                text:"Good",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                          TextSpan(
                        text:" Job!",
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                          ],
              ),
            )
          ),
          Positioned(
            left: 0,  
            right: 0,
            top: 440,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HappinesScoreScreen()));
                  },
                  child: _startCard(
                    icon:Icons.air,
                    title: "Breath",
                    value: "12", 
                  )
                ),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HappinesScoreScreen()));
                  },
                  child: _startCard(
                    icon:Icons.timer_off_outlined,
                    title: "Time",
                    value: "2.35", 
                  )
                )
            ],)
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 920,
            child: Container(
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, -0.5),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Are you happy with this session?",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                  ),),
                  SizedBox(height: 16,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _emojiFeedback("lib/images/EMOJI1.webp", "No"),
                      _emojiFeedback("lib/images/EMOJI2.png", "Little"),
                      _emojiFeedback("lib/images/EMOJI3.png", "Yes"),  
                  ],)
                ],
              )  
              ),
            )
        ],
      ),
    );
  }
  
  _startCard({
    required IconData icon, 
    required String title, 
    required String value}) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xff2e2e2e),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Color(0xff97ab66),
            child: Icon(icon, color: Colors.white, size: 30,),
          ),
          SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(
              title,
              style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 4,),
            Text(
              value.toString(),
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 10,),
          ],)
        ],
      )
    );
  }
  
  _emojiFeedback(String s, String t) {
    return Container (
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white, 
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {},
            child: Image.asset(s, width: 50, height: 50,),
          ),
          SizedBox(height: 8,),
          Text(t,
          style: TextStyle(fontSize: 14,color: Colors.black54,
          ),),
      ],)
    );
  }
}