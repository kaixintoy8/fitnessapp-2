import 'package:fitnessapp/sign_in/phone_number/continue_phone_number.dart';
import 'package:flutter/material.dart';

class AcceptPage extends StatefulWidget {
  const AcceptPage({super.key});

  @override
  State<AcceptPage> createState() => _AcceptPageState();
}

class _AcceptPageState extends State<AcceptPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 20,
                  width: 430,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50)),
                    color: Color.fromARGB(122, 31, 30, 30)
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child:Container(
                      height: 900,
                      decoration: BoxDecoration(
                        color: Color(0xFF252525),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(padding: EdgeInsets.only(top: 50),
                          child: SizedBox(
                            height: 70,
                            width: 370,
                            child: Text("By signing up you agree to our Term of use and privacy notice",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),textAlign: TextAlign.center,
                            ),
                          ),
                          ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Generate Terms & Conditions",style: TextStyle(color: Color(0xFFBDBDBD),fontSize: 18),),
                                Text("With Termify you can easily generate and download your customized and up to date ",
                                style: TextStyle(color: Color(0xFFBDBDBD),fontSize: 18),),
                                SizedBox(height: 20,),
                                Text("Terms & Conditions",style: TextStyle(color: Color(0xFFBDBDBD),fontSize: 18),),
                                Text("Edit and customize manually your policies Termify.io hosts all your policies",style: TextStyle(color: Color(0xFFBDBDBD),fontSize: 18)),
                                SizedBox(height: 20,),
                                Text("Generate Terms & Conditions for websites ",style: TextStyle(color: Color(0xFFBDBDBD),fontSize: 18),),
                                Text("Creating a Terms & Conditions for your application or website can take a lot of time. You could either spend tons of money on hiring a lawyer, or you could simply use our service and get a unique Terms & Conditions fully custumized to your website. ",style: TextStyle(color: Color(0xFFBDBDBD),fontSize: 17)),
                                SizedBox(height: 20,),
                                Text("You can also generate your Terms & Conditions for website templates like:",style: TextStyle(color: Color(0xFFBDBDBD),fontSize: 18)),
                                SizedBox(height: 20,),
                                Text("Generate Terms & Conditions for e-commerce stores",style: TextStyle(color: Color(0xFFBDBDBD),fontSize: 18)),
                                SizedBox(height: 20,),
                                Text("If your website or app has the option to recieve payments then including a Terms & Conditions is required by law. We will make sure that your",style: TextStyle(color: Color(0xFFBDBDBD),fontSize: 17)),
                              ],
                            ),
                          ),
                          SizedBox(height: 20,),
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
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>ContinuePhoneNumber()));
                                }, 
                              child: Text("Accept",style: TextStyle(color: Colors.white,fontSize: 20),)),
                          ),
                          ],
                      ),
                    ) 
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );;
  }
}