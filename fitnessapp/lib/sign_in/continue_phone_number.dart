

import 'package:flutter/material.dart';
import 'package:country_code_picker_plus/country_code_picker_plus.dart';

class ContinuePhoneNumber extends StatefulWidget {
  const ContinuePhoneNumber({super.key});

  @override
  State<ContinuePhoneNumber> createState() => _ContinuePhoneNumberState();
}

class _ContinuePhoneNumberState extends State<ContinuePhoneNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
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
                        boxShadow: [BoxShadow(
                          color: Colors.amber,
                          offset: Offset(5, 15),
                          blurRadius: 8,
                          blurStyle: BlurStyle.outer,
                        ),]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 50.0),
                            child: SizedBox(
                              height: 70,
                              width: 300,
                              child: Text("Let's start with your mobile number",
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
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: SizedBox(
                                          height: 70,
                                          width: 200,
                                          child: TextField(
                                            style: TextStyle(
                                              color: Color(0xFFF2F2F2)
                                            ),
                                            cursorColor: Color(0xFFF2F2F2),
                                            decoration: InputDecoration(
                                              hintText: "Phone number",
                                              hintStyle: TextStyle(color: Colors.white),
                                              border: InputBorder.none
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
                                backgroundColor: Color(0xFF62D794)
                              ),
                              onPressed: (){
                               }, 
                              child: Text("Continue",style: TextStyle(color: Colors.white,fontSize: 20),)),
                          )
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