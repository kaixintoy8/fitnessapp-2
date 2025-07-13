import 'package:fitnessapp/sign_in/email/succesful_reset.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
                            child: Text("Forgot your password?",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),textAlign: TextAlign.center,
                            ),
                          ),
                          ),
                          Text("Select which contact details should we use to reset your password",style: TextStyle(color: Color(0xFF828282),fontSize: 20),textAlign: TextAlign.center,),
                          SizedBox(height: 25,),
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
                                    Form(
                                      key: _formKey,
                                      child: Padding(
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
                                              hintText: "Add your email address",
                                              hintStyle: TextStyle(color: Color(0xFFF2F2F2)),
                                              border: InputBorder.none
                                            ),
                                            validator: (value){
                                              if (value== null || value.trim().isEmpty){
                                                return "Please enter your email address";
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
                                    )
                                    ],
                                  ),
                                ),
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
                                  if(_formKey.currentState!.validate()){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SuccesfulReset()));

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