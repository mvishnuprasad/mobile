import 'package:flutter/material.dart';

class myButton extends StatelessWidget {
  final Function()? onTap;
  const myButton({
    super.key,
    required this.onTap
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(

          decoration: BoxDecoration(
              color: Colors.grey.shade700,
                  borderRadius: BorderRadius.circular(10)
          ),
          padding: EdgeInsets.all(25),
          margin: EdgeInsets.all(25),
          child: const Center(
              child: Text(
            "Sign In",
            style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 16),
          )
          )
      ),
    );
  }
}
