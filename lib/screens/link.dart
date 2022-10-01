import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Link extends StatefulWidget{
  @override
  State<Link> createState() => _LinkState();
}

class _LinkState extends State<Link> with SingleTickerProviderStateMixin{
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 6),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(1.5, 0.0),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticIn,
  ));

  bool finish = false;
  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: SafeArea(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(255,255,255, 0.4),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: SlideTransition(
                      position: _offsetAnimation,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 300,
                        //width: 350,
                        child: Image.asset("assets/ferrari.jpg"),
                      ),
                    ),
                  )
              ),
            ),
            Expanded(
              child: Container(
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255,255,255, 0.9),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))
                  ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Flexible(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            child: Column(
                            crossAxisAlignment : CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 20,left: 20),
                                  child: Row(
                                    children: [
                                      Icon(Icons.star,color: Color.fromRGBO(255,215,0, 1),),
                                      Text("5.0",style: TextStyle(
                                        color: Colors.white
                                      ),)
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  padding: EdgeInsets.only(left: 20,bottom: 5),
                                    child: Text("Ferrari",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25
                                    ),)
                                ),
                                Container(
                                    padding: EdgeInsets.only(left: 20,bottom: 25),
                                    child: Text("812 GTS",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25
                                      ),)
                                ),
                                Container(
                                    padding: EdgeInsets.only(left: 20,bottom: 30),
                                    child: Text("\$200 /per day",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12
                                      ),)
                                ),
                              ],
                            ),
                            height: 300,
                            width: 160,
                            margin: EdgeInsets.only(left: 20,top: 15,bottom: 15),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/listone.jpg"),
                                fit: BoxFit.cover
                              ),
                                color: Colors.deepPurple,
                              borderRadius: BorderRadius.all(Radius.circular(25))
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment : CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 20,left: 20),
                                  child: Row(
                                    children: [
                                      Icon(Icons.star,color: Color.fromRGBO(255,215,0, 1),),
                                      Text("5.0",style: TextStyle(
                                          color: Colors.white
                                      ),)
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Container(
                                    padding: EdgeInsets.only(left: 20,bottom: 5),
                                    child: Text("Ferrari",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25
                                      ),)
                                ),
                                Container(
                                    padding: EdgeInsets.only(left: 20,bottom: 25),
                                    child: Text("SF90 Stradale",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18
                                      ),)
                                ),
                                Container(
                                    padding: EdgeInsets.only(left: 20,bottom: 30),
                                    child: Text("\$250 /per day",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12
                                      ),)
                                ),
                              ],
                            ),
                            height: 300,
                            width: 160,
                            margin: EdgeInsets.only(left: 20,top: 15,bottom: 15),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/listwo.jpg"),
                                    fit: BoxFit.cover
                                ),
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.all(Radius.circular(25))
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment : CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 20,left: 20),
                                  child: Row(
                                    children: [
                                      Icon(Icons.star,color: Color.fromRGBO(255,215,0, 1),),
                                      Text("5.0",style: TextStyle(
                                          color: Colors.white
                                      ),)
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Container(
                                    padding: EdgeInsets.only(left: 20,bottom: 5),
                                    child: Text("Ferrari",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25
                                      ),)
                                ),
                                Container(
                                    padding: EdgeInsets.only(left: 20,bottom: 25),
                                    child: Text("Monza SP1",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18
                                      ),)
                                ),
                                Container(
                                    padding: EdgeInsets.only(left: 20,bottom: 30),
                                    child: Text("\$350 /per day",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12
                                      ),)
                                ),
                              ],
                            ),
                            height: 300,
                            width: 160,
                            margin: EdgeInsets.only(left: 20,top: 15,bottom: 15),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/listthree.jpg"),
                                    fit: BoxFit.cover
                                ),
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.all(Radius.circular(25))
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment : CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 20,left: 20),
                                  child: Row(
                                    children: [
                                      Icon(Icons.star,color: Color.fromRGBO(255,215,0, 1),),
                                      Text("5.0",style: TextStyle(
                                          color: Colors.white
                                      ),)
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Container(
                                    padding: EdgeInsets.only(left: 20,bottom: 5),
                                    child: Text("Lamborghini",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 21
                                      ),)
                                ),
                                Container(
                                    padding: EdgeInsets.only(left: 20,bottom: 25),
                                    child: Text("HURACÁN TECNICA",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10
                                      ),)
                                ),
                                Container(
                                    padding: EdgeInsets.only(left: 20,bottom: 30),
                                    child: Text("\$450 /per day",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12
                                      ),)
                                ),
                              ],
                            ),
                            height: 300,
                            width: 160,
                            margin: EdgeInsets.only(left: 20,top: 15,bottom: 15),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/listfour.jpg"),
                                    fit: BoxFit.cover
                                ),
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.all(Radius.circular(25))
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}