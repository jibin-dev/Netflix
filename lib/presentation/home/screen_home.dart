import 'package:flutter/material.dart';
import 'package:netflix/presentation/widgets/maincard4.dart';
import 'package:netflix/presentation/widgets/mainscreen%20widget.dart';
import 'package:netflix/presentation/widgets/maintitile.dart';

class screenhome extends StatelessWidget {
  const screenhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 80,
                color: Colors.transparent,
                child: Column(
                  children: [
                    Row(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          "https://vignette2.wikia.nocookie.net/logopedia/images/b/b2/NetflixIcon2016.jpg/revision/latest/scale-to-width-down/2000?cb=20160620223003",
                          width: 40,
                        ),
                        AppBar(),
                        SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Tv Show"),
                        Text("Movies"),
                        Text("Categories")
                      ],
                    )
                  ],
                ),
              ),
              main_screeen_widget(),
              mainTitle(
                title: "Released in the past year",
              ),
              SizedBox(
                height: 10,
              ),
              LimitedBox(
                maxHeight: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(10, (index) => Maincard2()),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  mainTitle(
                    title: "Trending",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  LimitedBox(
                    maxHeight: 200,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: List.generate(10, (index) => Maincard1()),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  mainTitle(
                    title: "Top 10 Tv Shows In India Today",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  LimitedBox(
                    maxHeight: 200,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                          10,
                          (index) => Maincard4(
                                index: index,
                              )),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  mainTitle(
                    title: "Tense Dreamas",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  LimitedBox(
                    maxHeight: 200,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: List.generate(10, (index) => Maincard2()),
                    ),
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

class Maincard2 extends StatelessWidget {
  const Maincard2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 10,
        ),
        Container(
          width: 150,
          height: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.amber,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://wallpapercave.com/wp/wp5731716.jpg",
                  ))),
        ),
      ],
    );
  }
}

class Maincard1 extends StatelessWidget {
  const Maincard1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 10,
        ),
        Container(
          width: 150,
          height: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.amber,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://upload.wikimedia.org/wikipedia/en/7/75/Leo_(2023_Indian_film).jpg",
                ),
              )),
        ),
      ],
    );
  }
}
