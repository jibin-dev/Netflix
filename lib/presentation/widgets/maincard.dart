import 'package:flutter/material.dart';

class mainCard extends StatelessWidget {
  const mainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
          color: Colors.amber,
          image: DecorationImage(fit:BoxFit.cover ,
              image: NetworkImage(
                  "https://wallpapercave.com/wp/wp5731716.jpg",))),
    );
  }
}