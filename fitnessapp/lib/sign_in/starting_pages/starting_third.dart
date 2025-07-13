
import 'package:fitnessapp/sign_in/sign_in_page.dart';
import 'package:flutter/material.dart';

class StartingThird extends StatefulWidget {
  const StartingThird({super.key});

  @override
  State<StartingThird> createState() => _StartingThirdState();
}

class _StartingThirdState extends State<StartingThird> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 800,
                      width: 400,
                      child: Image.asset("images/starting_third.png",fit: BoxFit.fill,)),
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 140,
                        child: Container(
                          height: 120,
                          width: 350,
                          child: Text("Take control of your health and fitness now.",style: TextStyle(color: Colors.white,fontSize: 30),textAlign: TextAlign.center,))
                      )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 60,
              width: 450,
              child: ElevatedButton(
                
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF62D794),
                   shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
                onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInPage()));
                }, 
                child: Text("Start",style: TextStyle(color: Colors.white,fontSize: 20),)),
            ),
          ],
        ),
      ),
    );
  }
}