import 'package:flutter/material.dart';

class ForuFirstCard extends StatelessWidget {
  final String imgUrl;
  const ForuFirstCard({required this.imgUrl, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 185,
      width: 305,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          fit: StackFit.expand,
          children: [
            // Arka plan resmi
            Image.asset(imgUrl, fit: BoxFit.cover),

            // Koyulaştırma katmanı (Yazıyı etkilemez)
            Container(
              color: Colors.black.withOpacity(0.4)),

            // Yazı burada, koyu katmanın üstünde
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Join and get 5 AZN!",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
