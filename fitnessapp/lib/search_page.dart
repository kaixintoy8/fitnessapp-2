import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(15),
      child: Column(
        children: [
          TextField(
            decoration:InputDecoration(
              
            ),
          )
        ],
      ),
      ),
    );
  }
}