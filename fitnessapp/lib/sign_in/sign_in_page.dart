import 'package:fitnessapp/sign_in/phone_number/accept_page.dart';
import 'package:fitnessapp/sign_in/email/accept_second_page.dart';
import 'package:fitnessapp/sign_in/phone_number/continue_phone_number.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [         
          Positioned.fill(
            child: Image.asset("images/background.png",
            fit: BoxFit.fill
            ), 
           ),
           Padding(
            padding: EdgeInsets.all(20),
             child: Center(
              child:Column(
                children: [
                  SizedBox(height: 220),
                  Container(
                    height: 32,
                    width: 188,
                    child:Image.asset("images/appname.png"),
                  ),
                  SizedBox(height: 32,),
                  Text("Welcome to Push30",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 34
                    ),
                  ),
                  SizedBox(height: 20,),
                  Center(
                    child: Container(
                      height: 55,
                      width: 290,
                      child: Text("The best App for your health and fitness life!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20
                      ),
                      ),
                    ),
                  ),
                  SizedBox(height: 90,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("By signing up you agree to our ",
                      style: TextStyle(
                        color: Colors.grey
                      ),
                      ),
                      Text("Term of use ",
                      style: TextStyle(
                        color: Colors.white
                      ),
                      ),
                      Text("and ",
                      style: TextStyle(
                        color: Colors.grey
                      ),
                      ),
                      Text("privacy notice ",
                      style: TextStyle(
                        color: Colors.white
                      ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: 70,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>AcceptPage()));
                          },
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(100)),
                              color: const Color.fromARGB(87, 255, 255, 255)
                            ),
                            child: Icon(Icons.phone,color: Colors.white,size: 30,)
                            ),
                        ),
                        SizedBox(width: 25,),
                        Text("Contiune with phone number",
                        style: TextStyle(color: Colors.white,fontSize: 20),)
                      ],
                    ),
                    decoration: BoxDecoration(
                    color: Color(0xFF62D794),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                  ),
                  SizedBox(height: 20,),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> AccepSecondPage()));
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      height: 70,
                      child: Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(100)),
                              color: Colors.grey.shade200
                            ),
                            child: Icon(Icons.markunread,color: Color(0xFF62D794),size: 30,)
                            ),
                          SizedBox(width: 75,),
                          Text("Contiune with email",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                        ],
                      ),
                      decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text("Or sign in with",style: TextStyle(color: Colors.grey,fontSize: 20),),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          child: Image.asset("images/google.png"),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Container(
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: Image.asset("images/apple.png",fit: BoxFit.scaleDown,),
                        )),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Container(
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          child: Image.asset("images/facebook.png",fit: BoxFit.scaleDown,),
                        )),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Contiune as guest",
                        style: TextStyle(color: Colors.white,fontSize: 20),),
                      ],
                    ),
                    decoration: BoxDecoration(
                    color: Colors.grey.shade800,
                    borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                  ),
                ],
              ),
             ),
           )
        ],
      ),
    );
  }
}