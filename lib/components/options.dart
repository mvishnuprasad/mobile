
import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     const  MaterialApp(home: Loginpage()),
//   );
// }

// ignore: camel_case_types
class option extends StatelessWidget {
  final String title;
  final String hintText;


  const option({
    super.key,
    required this.title,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              ),
              Text(hintText,
                style: const TextStyle(
                    fontSize: 12,
                    color: Colors.white
                ),
              )

            ],
          ),
          const Icon(Icons.chevron_right,color: Colors.white,)
        ],
      ),
    );
  }
}

