import 'package:flutter/material.dart';

class mainTitle extends StatelessWidget {
  const mainTitle({super.key,
   required this.title});
final String title;
  @override
  Widget build(BuildContext context) {
    return Text(title,style: TextStyle(
              fontWeight: FontWeight.bold,fontSize: 20
            ),
            );
  }
}