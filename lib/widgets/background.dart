import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  final String urlImage;

  const Background({
    super.key, 
    required this.child, 
    required this.urlImage
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 60),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.indigo[300]!,
                Colors.indigo[600]!
              ]
            ),
          ),
          child: Image(
            height: size.height * 0.25,
            image: AssetImage(urlImage),
            color: Colors.white,
          ),
        ),
        child,
        SafeArea(
          child: SizedBox(
            height: 50,
            width: double.infinity,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
          ),
        )
      ],
    );
  }
}