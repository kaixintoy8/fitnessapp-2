import 'package:fitnessapp/bottombar_pages/discover.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<String> tags = [
  'Fitness', 'Woman', 'Pool', 'Karate',
  'Gym', 'Sports', 'Fitness', 'Woman',
  'Karate', 'Pool', 'Gym', 'Fitness'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Column(
          children: [
            Center(
              child: Row( //arama motorunun olduğu yer
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 5,
                    child: SizedBox(
                      height: 100,
                      child: TextField(
                        cursorColor: Color(0xFF828282),
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.search,size: 40,color: Colors.white,),
                          ),
                          suffixIcon: IconButton(icon: Icon(Icons.cancel_sharp),
                          onPressed: () {  

                          },
                          ),
                          filled: true,
                          fillColor: Color(0xFF252525),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none
                          )
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 30,),
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: 50,
                      height: 80,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> DiscoverPage()));
                        },
                        child: Text("Cancel",style: TextStyle(color: Colors.white,fontSize: 20),))),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10),
              child: Wrap(
                spacing: 35, //yatay boşluk
                runSpacing: 12, //dikey boşluk 
                children: 
                  tags.map((tag){
                    return Container(
                      padding: EdgeInsets.symmetric(horizontal: 18,vertical: 10),
                      decoration: BoxDecoration(
                        color: Color(0xFF252525),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(tag,style: TextStyle(color: Colors.white,fontSize: 15),),
                    );
                  }
                  ).toList(),
                
              ),
            )
          ],
        ),
      ),
    );
  }
}