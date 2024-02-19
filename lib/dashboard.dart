import 'package:flutter/material.dart';

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
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Row(
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
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15)),
                      padding: const EdgeInsets.all(15),
                      child : Column (
                        children : [
                        Image.asset(
                          'lib/assets/1.jpg',
                          alignment: Alignment.topCenter,

                        ),
                          const SizedBox(height: 5,),
                          const Text('Music To my eyes',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,

                          ),),
                          const Text('John Lennon',style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),)
                        ]
                      )
                    ),
                    const SizedBox(
                      width: 10,
                    ),

                  ],
                )
              ],
            ),
          ),
        )));
  }
}
