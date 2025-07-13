import 'package:flutter/material.dart';

class AppSettings extends StatefulWidget {
  const AppSettings({super.key});

  @override
  State<AppSettings> createState() => _AppSettingsState();
}

class _AppSettingsState extends State<AppSettings> {
  bool switch1=false;
  bool switch2=false;
  bool switch3=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text("App Settings"),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.white
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Notifications",style: TextStyle(color: Color(0xFFF2F2F2),fontSize: 20),),
                Spacer(),
                Switch(
                  activeColor: Color(0xFF62D794),
                  activeTrackColor: Color(0xFF333333),
                  inactiveTrackColor:Color(0xFF333333),
                  inactiveThumbColor: Color(0xFFF2F2F2),
                  value:switch1, 
                  onChanged: (value){
                    setState(() {
                      switch1=!switch1;
                    });
                  })
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Text("Notifications",style: TextStyle(color: Color(0xFFF2F2F2),fontSize: 20),),
                Spacer(),
                Switch(
                  activeColor: Color(0xFF62D794),
                  activeTrackColor: Color(0xFF333333),
                  inactiveTrackColor:Color(0xFF333333),
                  inactiveThumbColor: Color(0xFFF2F2F2),
                  value:switch2, 
                  onChanged: (value){
                    setState(() {
                      switch2=!switch2;
                    });
                  })
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Text("Notifications",style: TextStyle(color: Color(0xFFF2F2F2),fontSize: 20),),
                Spacer(),
                Switch(
                  activeColor: Color(0xFF62D794),
                  activeTrackColor: Color(0xFF333333),
                  inactiveTrackColor:Color(0xFF333333),
                  inactiveThumbColor: Color(0xFFF2F2F2),
                  value:switch3, 
                  onChanged: (value){
                    setState(() {
                      switch3=!switch3;
                    });
                  })
              ],
            ),
            SizedBox(height: 80,),
            Text("Application version",style: TextStyle(color: Color(0xFFF2F2F2),),),
            SizedBox(height: 10,),
            Text("Push30 User App ver. 2.0",style: TextStyle(color: Color(0xFFF2F2F2),fontSize: 25)),
            Spacer(),
            SizedBox(
              height: 60,
              width: 450,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  backgroundColor: Color(0xFF62D794)
                ),
                onPressed: (){
                }, 
                child: Text("Save",style: TextStyle(color: Colors.white,fontSize: 20),)),
            ),
          ],
        ),
      ),
    );
  }
}