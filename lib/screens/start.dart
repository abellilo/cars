import 'package:cars/screens/link.dart';
import 'package:cars/screens/page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Start extends StatefulWidget{
  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  bool? animate;
  @override
  void initState() {
    animate = false;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          image: AssetImage("assets/carground.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 70,
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text("Premium",
                    style: TextStyle(
                      fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text("Car Rentals",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text("Rent the car of your dreams",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.grey
                    ),),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text("with home delivery",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.grey
                    ),),
                ),

                Spacer(),

                Container(
                  margin: EdgeInsets.only(bottom: 25,left: 23,right: 23),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17), // <-- Radius
                        ),
                      ),
                      onPressed: (){
                        Navigator.push(context, PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: Link(),
                          duration: Duration(seconds: 2),
                        ));
                      },
                      child: Container(
                        padding: EdgeInsets.only(top: 14,left: 40,right: 40,bottom: 14),
                        child: Text("Get Started",
                          style: TextStyle(
                            fontSize: 19,
                              color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),),
                      ),
                    ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}