import 'package:fitnessapp/bottombar_pages/discover/discover.dart';
import 'package:fitnessapp/sign_in/email/forgot_password.dart';
import 'package:fitnessapp/sign_in/email/you_can_add_phone_number.dart';
import 'package:flutter/material.dart';

class ContinueEmail extends StatefulWidget {
  const ContinueEmail({super.key});

  @override
  State<ContinueEmail> createState() => _ContinueEmailState();
}

class _ContinueEmailState extends State<ContinueEmail> {
  bool _obscureText = true;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController =TextEditingController();
  final TextEditingController _passwordController=TextEditingController();

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
                            child: Text("What is your work email address?",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),textAlign: TextAlign.center,
                            ),
                          ),
                          ),
                          SizedBox(height: 20,),
                          Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                Center(
                              child: Container(
                                height: 70,
                                width: 450,
                                decoration: BoxDecoration(
                                  color: Color(0xFF333333),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(left:20),
                                  child: Row(
                                    children: [
                                      Icon(Icons.email,color: Color(0xFFBDBDBD),),
                                      SizedBox(width: 10,),
                                      Padding(
                                        padding: const EdgeInsets.all(13.0),
                                        child: SizedBox(
                                          height: 70,
                                          width: 200,
                                          child: TextFormField(
                                            controller: _emailController,
                                            keyboardType: TextInputType.emailAddress,
                                            style: TextStyle(
                                              color: Color(0xFFF2F2F2)
                                            ),
                                            cursorColor: Color(0xFFF2F2F2),
                                            decoration: InputDecoration(
                                              hintText: "E-mail address",
                                              hintStyle: TextStyle(color: Color(0xFFF2F2F2)),
                                              border: InputBorder.none
                                            ),
                                            validator: (value){
                                              if (value== null || value.trim().isEmpty){
                                                return "Please enter a valid value";
                                              }
                                              String email = value.trim();
                                              if(!email.contains("@") || !email.contains(".com")){
                                                return "Please enter a valid email address";
                                              }
                                              return null;
                                            },
                                          ),
                                        ),
                                      ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20,),
                              Center(
                              child: Container(
                                height: 70,
                                width: 450,
                                decoration: BoxDecoration(
                                  color: Color(0xFF333333),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(left:20,right: 20),
                                  child: Row(
                                    children: [
                                      Icon(Icons.lock,color: Color(0xFFBDBDBD),),
                                      SizedBox(width: 10,),
                                      Padding(
                                        padding: const EdgeInsets.all(13.0),
                                        child: SizedBox(
                                          height: 70,
                                          width: 200,
                                          child: TextFormField(
                                            obscureText: _obscureText,
                                            controller: _passwordController,
                                            keyboardType: TextInputType.text,
                                            style: TextStyle(
                                              color: Color(0xFFF2F2F2)
                                            ),
                                            cursorColor: Color(0xFFF2F2F2),
                                            decoration: InputDecoration(
                                              hintText: "Password",
                                              hintStyle: TextStyle(color: Color(0xFFF2F2F2)),
                                              border: InputBorder.none
                                            ),
                                            validator: (value){
                                              if (value== null || value.trim().isEmpty){
                                                return "Please enter a valid value";
                                              }
                                              if(value.length < 6){
                                                return "Password must be at least 6 characters";
                                              }
                                              return null;
                                            },
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _obscureText=!_obscureText;
                                          });
                                        },
                                        child: Icon(
                                          _obscureText ? Icons.visibility_off : Icons.visibility,color: Color(0xFFBDBDBD))),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20,),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPassword()));
                            },
                            child: Text("Forgot Password",style: TextStyle(color: Colors.white,fontSize: 18),)),
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
                                if(_formKey.currentState!.validate()){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>YouCanAddPhoneNumber()));
                                }
                              }, 
                              child: Text("Continue",style: TextStyle(color: Colors.white,fontSize: 20),)),
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