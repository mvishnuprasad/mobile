import 'package:flutter/material.dart';


class card extends StatelessWidget {
  final String title;
  final String author;
  final String  imagename;

  const card({
    super.key,
    required this.title,
    required this.author,
    required this.imagename,
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 180,
        width: 150,
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(15)),
        padding: const EdgeInsets.all(15),
        child : Column (
            children : [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'lib/assets/$imagename',
                  alignment: Alignment.topCenter,
                
                ),
              ),
              const SizedBox(height: 5,),
               Text(title ,style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,

              ),),
               Text(author,style: const TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),)
            ]
        )
    );
  }
}