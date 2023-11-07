import 'package:flutter/material.dart';
import 'package:netflix/presentation/widgets/iconsz.dart';
import 'package:netflix/presentation/widgets/playbutton.dart';
class main_screeen_widget extends StatelessWidget {
  const main_screeen_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 700,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://www.telugubulletin.com/wp-content/uploads/2022/04/ante-sundaraniki-teaser-date-1.jpg"))),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Iconsz(
                icon:Icons.add,
                text: "Play", 
              ),
              playButton(),
              Iconsz(icon: Icons.info, text: "Info")
            ],
          ),
        )
      ],
    );
  }
}