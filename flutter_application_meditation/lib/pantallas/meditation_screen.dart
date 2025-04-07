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
        ],
      ),
    );
  }
}