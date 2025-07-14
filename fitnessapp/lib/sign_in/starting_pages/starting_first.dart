import 'package:fitnessapp/sign_in/sign_in_page.dart';
import 'package:fitnessapp/sign_in/starting_pages/starting_second.dart';
import 'package:flutter/material.dart';

class StartingFirst extends StatefulWidget {
  const StartingFirst({super.key});
  @override
  State<StartingFirst> createState() => _StartingFirstState();
}

class _StartingFirstState extends State<StartingFirst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20.0, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignInPage()),
                        );
                      },
                      child: Text(
                        "Skip",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 800,
                        width: 400,
                        child: Image.asset(
                          "images/starting_second.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 140,
                        child: Container(
                          height: 120,
                          width: 400,
                          child: Text(
                            "Access multiple venues and a range of activities with just one subscription.",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
              SizedBox(
                height: 60,
                width: 450,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: Color(0xFF62D794),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StartingSecond()),
                    );
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
