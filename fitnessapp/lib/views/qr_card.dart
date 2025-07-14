import 'package:flutter/material.dart';

class QrCard extends StatefulWidget {
  final String name;
  const QrCard({required this.name});

  @override
  State<QrCard> createState() => _QrCardState();
}

class _QrCardState extends State<QrCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Color(0xFF252525),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  widget.name,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    "13 October, 20:00",
                    style: TextStyle(color: Color(0xFF828282), fontSize: 15),
                  ),
                  SizedBox(width: 5),
                  Container(
                    height: 5,
                    width: 5,
                    decoration: BoxDecoration(
                      color: Color(0xFF828282),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  SizedBox(width: 3),
                  Text(
                    "1.5km away",
                    style: TextStyle(color: Color(0xFF828282), fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
