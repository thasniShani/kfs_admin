import 'package:flutter/material.dart';

class HomeBodyWidget extends StatelessWidget {
  HomeBodyWidget({super.key, this.text, this.image});

  String? text;
  String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            
            Image.asset(image!),
            Text(
              text!,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
