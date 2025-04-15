import 'package:flutter/material.dart';

class MeditationScreen extends StatelessWidget {
  const MeditationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity
          ),
          Container(
            alignment: Alignment.center,
            height: 400,
            width: double.infinity,
            color: Color(0xffd4dcbc)
          ),
          Positioned(
            top:190,
            left: 30,
            child:Transform.rotate(
              angle: 0.785,
              child:Container(
                height: 490,
                width: 500, 
                decoration: BoxDecoration(
                  color: Color(0xfffdeccd),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(350)
                  ),
                ),
              ),
              ),
            ),
            Positioned(
            top:375,
            left: -45,
            child:Transform.rotate(
              angle: 0.550,
                child: Container(
                  height: 600,
                  width: 700, 
                  decoration: BoxDecoration(
                    color: Color(0xfffedacc),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(550),
                      topRight: Radius.circular(600)
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
            top:650,
            child:Transform.rotate(
              angle: 0.8,
              child:Container(
                height: 500,
                width: 600, 
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(350),
                  ),
                ),
              ),
              ),
            ),
              Positioned(
                height: 850,
                top: 200,
                left: 0,
                right: 0,
                child: Image.asset('lib/images/MEDITATION1.png', fit: BoxFit.fitWidth,),
              ),
            Positioned(
              left: 0,
              right: 0,
              top: 870,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "Nature Your ",
                  style: TextStyle(
                    color: Color(0xff583823),
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                  TextSpan(
                  text: " Paceful mind ",
                  style: TextStyle(
                    color: Color(0xffed6420),
                    fontSize: 50,
                    fontWeight: FontWeight.bold,)
                    ),
                    TextSpan(
                    text: "With AI",
                    style: TextStyle(
                      color: Color(0xff583823),
                      fontSize: 50,
                      fontWeight: FontWeight.bold,)
                      ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 240,
              left: -65,
              child: Image.asset("lib/images/NUBE.webp", height: 100),
            ),
            Positioned(
              top: 335,
              right: -55,
              child: Image.asset("lib/images/NUBE.webp", height: 100),
            ),
            Positioned(
              top: 100,
              right: 185,
              child: Image.asset("lib/images/PALOMA.png", height: 130),
            ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        height: 80,
        width: 80,
          child: FloatingActionButton(onPressed: (){},
          elevation: 0,
          backgroundColor:  Color(0xff583823),
          shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          child: Icon(Icons.arrow_forward, color:Colors.white),
          )
      ),
    );
  }
}