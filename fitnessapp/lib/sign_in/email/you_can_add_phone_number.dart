

import 'package:fitnessapp/sign_in/email/verify_code_copy.dart';
import 'package:fitnessapp/sign_in/phone_number/verify_code.dart';
import 'package:flutter/material.dart';
import 'package:country_code_picker_plus/country_code_picker_plus.dart';

class YouCanAddPhoneNumber extends StatefulWidget {
  const YouCanAddPhoneNumber({super.key});

  @override
  State<YouCanAddPhoneNumber> createState() => _YouCanAddPhoneNumberState();
}

class _YouCanAddPhoneNumberState extends State<YouCanAddPhoneNumber> {
  final _formKey =GlobalKey<FormState>();
  final TextEditingController _phoneController =TextEditingController();
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
                    child: Container(
                      height: 1000,
                      decoration: BoxDecoration(
                        color: Color(0xFF252525),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
                       
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 50.0),
                            child: SizedBox(
                              height: 70,
                              width: 250,
                              child: Text("You can add your phone number",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25
                              ),textAlign: TextAlign.center,)),
                          ),
                          Center(
                            child: Container(
                              height: 70,
                              width: 450,
                              decoration: BoxDecoration(
                                color: Color(0xFF333333),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(left:10),
                                child: Row(
                                  children: [
                                    CountryCodePicker(
                                      onChanged: (country) {
                                      print('Seçilen ülke kodu: ${country.dialCode}'); // örn. +90
                                      },
                                      initialSelection: 'AZ', 
                                      showCountryOnly: false,
                                      showOnlyCountryWhenClosed: false,
                                      textStyle: TextStyle(color: Color(0xFFBDBDBD)),
                                      flagDecoration:BoxDecoration(
                                        borderRadius: BorderRadius.circular(100),
                                      ),
                                      ),
                                      Form(
                                        key: _formKey,
                                        child: Padding(
                                          padding: const EdgeInsets.all(13.0),
                                          child: SizedBox(
                                            height: 70,
                                            width: 200,
                                            child: TextFormField(
                                              controller: _phoneController,
                                              style: TextStyle(
                                                color: Color(0xFFF2F2F2)
                                              ),
                                              keyboardType: TextInputType.phone,
                                              cursorColor: Color(0xFFF2F2F2),
                                              decoration: InputDecoration(
                                                hintText: "Phone number",
                                                hintStyle: TextStyle(color: Color(0xFFF2F2F2)),
                                                border: InputBorder.none
                                              ),
                                              validator: (value) {
                                                if (value == null || value.trim().length <6 ){
                                                  return 'Please enter a phone number of at least 6 digits';
                                                }else{
                                                  return null;
                                                }
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
                                if (_formKey.currentState!.validate()){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>VerifyCodeCopy()));
                                }
                               }, 
                              child: Text("Continue",style: TextStyle(color: Colors.white,fontSize: 20),)),
                          ),
                          SizedBox(height: 20,),
                          Text("Skip",style: TextStyle(color: Color(0xFF828282),fontSize: 20))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ),
    );
  }
}