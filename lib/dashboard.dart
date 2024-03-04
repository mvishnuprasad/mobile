import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/components/navBar.dart';
import 'package:provider/provider.dart';
import 'components/card.dart';
import 'components/navBar.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MaterialApp(home: Dashboard()),
  );
}

class Dashboard extends StatelessWidget {
  Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    const navBar();

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => screenIndexProvider())
      ],
      child: Scaffold(
          bottomNavigationBar: const navBar(),
          backgroundColor: Colors.white,
          body: SafeArea(
              child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  //Avtar and Searchbar
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('lib/assets/avtar.png'),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: ShapeDecoration(
                            shape: const CircleBorder(),
                            color: Colors.purple.withOpacity(0.5),
                          ),
                          padding: const EdgeInsets.all(10),
                          child: const Icon(
                            Icons.search,
                            size: 30,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  // Main title and Emoji
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: SizedBox(
                      height: 100,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Find the best \nmusic  for You',
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold)),
                          ),
                          const Image(
                            image: AssetImage('lib/assets/emo.png'),
                            width: 80,
                            height: 80,
                            alignment: Alignment.topRight,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // Top Artists
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      "Top Artists",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 21, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: SizedBox(
                      height: 80,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          horizontalCard(
                              title: "Millennium", author: "BackStreet Boys", imagename: '1.jpg'),
                          SizedBox(
                            width: 10,
                          ),
                          horizontalCard(
                              title: "1989", author: "Taylor Swift", imagename: '2.jpg'),
                          SizedBox(
                            width: 10,
                          ),
                          horizontalCard(
                              title: "Sacrifice", author: "Elton John", imagename: '3.jpg'),
                          SizedBox(
                            width: 10,
                          ),
                          horizontalCard(
                              title: "title", author: "author", imagename: '4.jpg'),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // Discover
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      "Discover",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 21, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: SizedBox(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          card(
                              title: "Sweet Child O' Mine",
                              author: "Guns and Roses",
                              imagename: '1.jpg'),
                          SizedBox(
                            width: 10,
                          ),
                          card(
                              title: "I want to know what love is",
                              author: "Foreigner",
                              imagename: '2.jpg'),
                          SizedBox(
                            width: 10,
                          ),
                          card(
                              title: "Take My Breath away",
                              author: "Berlin",
                              imagename: '3.jpg'),
                          SizedBox(
                            width: 10,
                          ),
                          card(
                              title: "Hungry Eyes",
                              author: "Eric Carmen",
                              imagename: '4.jpg'),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  // Recommended
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      "Recommended For You",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 21, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: SizedBox(
                      height: 250,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          recommendedCard(
                              title: "Sweet Child O' Mine",
                              author: "Guns and Roses",
                              imageName: '1.jpg'),
                          SizedBox(
                            width: 10,
                          ),
                          recommendedCard(
                              title: "I want to know what love is",
                              author: "Foreigner",
                              imageName: '2.jpg'),
                          SizedBox(
                            width: 10,
                          ),
                          recommendedCard(
                              title: "Take My Breath away",
                              author: "Berlin",
                              imageName: '3.jpg'),
                          SizedBox(
                            width: 10,
                          ),
                          recommendedCard(
                              title: "Hungry Eyes",
                              author: "Eric Carmen",
                              imageName: '4.jpg'),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ))),
    );
  }
}
