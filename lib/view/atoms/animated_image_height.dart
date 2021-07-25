import 'package:flutter/material.dart';

class AnimatedImageHeight extends StatelessWidget {
  final double height;
  final String imagePath;
  final Curve curve;
  final Duration duration;

  const AnimatedImageHeight({
    required this.height,
    required this.imagePath,
    this.curve = Curves.ease,
    this.duration = const Duration(milliseconds: 500),
  });

  @override
  build(_) => AnimatedContainer(
        height: height,
        curve: curve,
        duration: duration,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(imagePath),
          ),
        ),
      );
}
