import 'package:flutter/cupertino.dart';

class ConvexClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(size.width, 0) // Start from top-right
      ..lineTo(0, 0) // Top-left
      ..lineTo(0, size.height) // Bottom-left
      ..quadraticBezierTo(size.width * 0.25, size.height * 0.5, 0, size.height) // Convex curve
      ..lineTo(size.width, size.height); // Back to top-right
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
