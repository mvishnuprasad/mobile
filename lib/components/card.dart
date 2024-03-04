import 'dart:ui';

import 'package:flutter/material.dart';

class card extends StatelessWidget {
  final String title;
  final String author;
  final String imagename;

  const card({
    super.key,
    required this.title,
    required this.author,
    required this.imagename,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
            color: Colors.transparent, borderRadius: BorderRadius.circular(25)),
        padding: const EdgeInsets.all(5),
        child: Column(children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Stack(
                children: [
                  Positioned(
                    child: Image.asset(
                      'lib/assets/$imagename',
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3),
                        child: Container(
                          width: 150,
                          color: Colors.black.withOpacity(0.65),
                          child: Column(
                            children: [
                              SizedBox(
                                child: Text(
                                  title,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),
                                  maxLines: null,
                                ),
                              ),
                              SizedBox(
                                child: Text(
                                  author,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                    fontSize: 13,
                                  ),
                                  maxLines: null,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ]));
  }
}

class recommendedCard extends StatelessWidget {
  final String title;
  final String author;
  final String imageName;

  const recommendedCard({
    super.key,
    required this.title,
    required this.author,
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 200,
      decoration: BoxDecoration(
          color: Colors.transparent, borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'lib/assets/$imageName',
              alignment: Alignment.topCenter,
            ),
          ),
          SizedBox(height: 5,),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            author,
            style: const TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}

class horizontalCard extends StatelessWidget {
  final String title;
  final String author;
  final String imagename;

  const horizontalCard({
    super.key,
    required this.title,
    required this.author,
    required this.imagename,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      Container(
        width: 200,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.purple.withOpacity(0.3),
                Colors.purple.withOpacity(0.54)
              ]),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('lib/assets/$imagename'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 100,
                        height: 20,
                        child: Text(
                          title,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18),
                          maxLines: 3,
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        height: 40,
                        child: Text(
                          author,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 14,
                          ),
                          maxLines: 3,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ]));
  }
}
