import 'package:fitnessapp/bottombar_pages/discover/discover.dart';
import 'package:fitnessapp/sign_in/sign_in_page.dart';
import 'package:flutter/material.dart';

class SuccesfulReset extends StatefulWidget {
  const SuccesfulReset({super.key});

  @override
  State<SuccesfulReset> createState() => _SuccesfulResetState();
}

class _SuccesfulResetState extends State<SuccesfulReset> {
final _formKey = GlobalKey<FormState>();
final TextEditingController _emailController =TextEditingController();

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
                      height: 1000,
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
                            child: Text("Password reset mail sent succesful",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25
                              ),textAlign: TextAlign.center,
                            ),
                          ),
                          ),
                          SizedBox(height: 20,),
                          Text("Select which contact details should we use to reset your password",style: TextStyle(color: Color(0xFF828282),fontSize: 20),textAlign: TextAlign.center,),
                          SizedBox(height: 25,),
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
                              child: Text("Back to sign in",style: TextStyle(color: Colors.white,fontSize: 20),)),
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
    );
  }
}