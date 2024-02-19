import 'package:flutter/material.dart';
import 'components/card.dart';

void main() {
  runApp(
    MaterialApp(home: Dashboard()),
  );
}

class Dashboard extends StatelessWidget {
  Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[700],
        body: SafeArea(
            child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Hi , There',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold)),
                          const SizedBox(
                            height: 2,
                          ),
                          Text('Todays recommendations',
                              style: TextStyle(
                                  color: Colors.blue[200],
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10)),
                        padding: const EdgeInsets.all(10),
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        card(
                            title: "Music to my eyes",
                            author: "John lennon",
                            imagename: '1.jpg'),
                        SizedBox(
                          width: 20,
                        ),
                        card(
                            title: "Music to my eyes",
                            author: "John lennon",
                            imagename: '2.jpg'),
                        SizedBox(
                          width: 20,
                        ),
                        card(
                            title: "Music to my eyes",
                            author: "John lennon",
                            imagename: '3.jpg'),
                        SizedBox(
                          width: 20,
                        ),
                        card(
                            title: "Music to my eyes",
                            author: "John lennon",
                            imagename: '4.jpg'),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        Text('From your history',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold)),
                      ],
                    )),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        card(
                            title: "Music to my eyes",
                            author: "John lennon",
                            imagename: '5.jpg'),
                        SizedBox(
                          width: 20,
                        ),
                        card(
                            title: "Music to my eyes",
                            author: "John lennon",
                            imagename: '6.jpg'),
                        SizedBox(
                          width: 20,
                        ),
                        card(
                            title: "Music to my eyes",
                            author: "John lennon",
                            imagename: '2.jpg'),
                        SizedBox(
                          width: 20,
                        ),
                        card(
                            title: "Music to my eyes",
                            author: "John lennon",
                            imagename: '4.jpg'),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        Text('Top charts of 2025',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold)),
                      ],
                    )),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        card(
                            title: "Music to my eyes",
                            author: "John lennon",
                            imagename: '1.jpg'),
                        SizedBox(
                          width: 20,
                        ),
                        card(
                            title: "Music to my eyes",
                            author: "John lennon",
                            imagename: '2.jpg'),
                        SizedBox(
                          width: 20,
                        ),
                        card(
                            title: "Music to my eyes",
                            author: "John lennon",
                            imagename: '3.jpg'),
                        SizedBox(
                          width: 20,
                        ),
                        card(
                            title: "Music to my eyes",
                            author: "John lennon",
                            imagename: '4.jpg'),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        Text('Driving playlists',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold)),
                      ],
                    )),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        card(
                            title: "Music to my eyes",
                            author: "John lennon",
                            imagename: '4.jpg'),
                        SizedBox(
                          width: 20,
                        ),
                        card(
                            title: "Music to my eyes",
                            author: "John lennon",
                            imagename: '5.jpg'),
                        SizedBox(
                          width: 20,
                        ),
                        card(
                            title: "Music to my eyes",
                            author: "John lennon",
                            imagename: '6.jpg'),
                        SizedBox(
                          width: 20,
                        ),
                        card(
                            title: "Music to my eyes",
                            author: "John lennon",
                            imagename: '4.jpg'),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        )));
  }
}
