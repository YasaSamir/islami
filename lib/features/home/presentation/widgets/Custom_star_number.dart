import 'package:flutter/material.dart';

class CustomStarNumber extends StatelessWidget {
  const CustomStarNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Icon(Icons.star_border ,color: Colors.white,size: 80,),
        Positioned(
          child: Center(child: Text('1')),
        ),
      ],
    );
  }
}
