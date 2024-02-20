import 'package:flutter/material.dart';
import 'package:mobile/components/navBar.dart';
import 'package:mobile/components/options.dart';
import 'package:provider/provider.dart';
import 'components/card.dart';
import 'components/navBar.dart';
void main() {
  runApp(
    const MaterialApp(home: Settings()),
  );
}

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    navBar();

    return MultiProvider (

      providers: [
        ChangeNotifierProvider(create: (context) => screenIndexProvider())
      ],

      child: Scaffold(
          bottomNavigationBar: navBar(),
          backgroundColor: Colors.blue[700],
          body:  SafeArea(
              child: Center(
                child: Padding(
                  padding:  EdgeInsets.only(top: 25.0),
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.arrow_back,color: Colors.white,),
                                SizedBox(width: 10,),
                                Text("Settings",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24,
                                      color: Colors.white
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      option(title: "Playback", hintText: "Adjust playback settings for your device"),
                      SizedBox(height: 20,),
                      option(title: "Equaliser", hintText: "Adjust Equaliser settings for your output device"),
                      SizedBox(height: 20,),
                      option(title: "Data usage", hintText: "Adjust data usage"),
                      SizedBox(height: 20,),
                      option(title: "Recommendations", hintText: "Adjust the suggested content"),

                    ],
                  ),

                ),
              ))),
    );
  }
}
