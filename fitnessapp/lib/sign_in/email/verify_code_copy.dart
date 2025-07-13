import 'package:fitnessapp/bottombar_pages/discover/discover.dart';
import 'package:flutter/material.dart';

class VerifyCodeCopy extends StatefulWidget {
  const VerifyCodeCopy({super.key});

  @override
  State<VerifyCodeCopy> createState() => _VerifyCodeCopyState();
}

class _VerifyCodeCopyState extends State<VerifyCodeCopy> {
  final String _correctCode="123456";
  final List<FocusNode> _focusNodes = List.generate(6, (_)=>FocusNode());
  final List<TextEditingController> _controllers =List.generate(6, (_)=> TextEditingController());

  @override
  void dispose() {
    _focusNodes.forEach((node)=>node.dispose());
    _controllers.forEach((ctrl)=> ctrl.dispose());
    super.dispose();
  }

  void _checkIfAllFilled(){
    bool allFilled= _controllers.every((c)=>c.text.length==1);
    if(allFilled){
      //Tüm kutular doldu mu diye kontrol eder.
      String enteredCode= _controllers.map((c)=>c.text).join(); //6 karakteri birleştirdik.
      if(enteredCode == _correctCode){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>DiscoverPage()));
      }else{ //Yanlış kodu girerse çıkıcak hata mesajı.
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content:Text("Incorrect code, please try again."),
          backgroundColor: Colors.red[400],
          )
        );
        for(var c in _controllers){ //Yanlışsa kutucukları temizler.
          c.clear();
        }
        FocusScope.of(context).requestFocus(_focusNodes[0]); // sildikten sonra ilk kutucuğa fokuslar.
      }
    }

  }

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
                            child: Text("We sent you a code to verify your number",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),textAlign: TextAlign.center,
                            ),
                          ),
                          ),
                          SizedBox(height: 20,),
                          Text("Code send to +994 70 306 ** **",style: TextStyle(
                            color: Color(0xFF828282),
                            fontSize: 18
                          ),),
                          SizedBox(height:20,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30.0),
                            child: Row(
                              children: [
                                _phoneText(),
                              ],
                            ),
                          ),
                          SizedBox(height: 20,),
                          RichText(
                            text: TextSpan(
                              children:[
                                TextSpan(
                                  text: "Don’t received the code? ",
                                  style: TextStyle(color: Color(0xFF828282))
                                ),
                                TextSpan(
                                  text: "Resend Code",
                                  style: TextStyle(color: Color(0xFF62D794))
                                )
                              ]
                              )
                              
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
  Widget _phoneText (){
    return Row(
      children: List.generate(6, (index){
       return Row(
         children: [
            Container(
              width: 60,
              height:100,
              child: Center(
                child: TextFormField(
                  controller: _controllers[index],
                  focusNode: _focusNodes[index],
                  cursorColor: Colors.white,
                  keyboardType: TextInputType.phone,
                  onChanged: (value) {
                    if(value.length == 1){
                      if (index+1 < _focusNodes.length){
                        FocusScope.of(context).requestFocus(_focusNodes[index+1]);
                      }else{
                        _focusNodes[index].unfocus();
                      }
                      _checkIfAllFilled();
                    }
                    else if(value.isEmpty && index >0){
                      if(index>0){
                        FocusScope.of(context).requestFocus(_focusNodes[index-1]);
                      }
                    }
                  },
                  validator: (value) {
                    if (value==null || value.isEmpty){
                      return"";
                    }
                    return null;
                  },
                  maxLength: 1,
                  style: TextStyle(
                    color: Color(0xFFF2F2F2),
                    fontSize:30
                  ),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    counterText: "",
                    contentPadding: EdgeInsets.symmetric(vertical: 25),
                    hintText: "-",
                    hintStyle: TextStyle(color: Colors.white,fontSize: 30),
                    filled: true,
                    fillColor: Color(0xFF333333),
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.white)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    )
                  ),
                ),
              ),
            ),
            SizedBox(width: 10,),
          ],
            );
              }
          )     
        );            
    }
  }