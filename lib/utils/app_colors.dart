import 'package:flutter/material.dart';

abstract class AppColors {
  static Color white = Colors.white;
  static Color black = Colors.black;
  static Color grey = const Color.fromARGB(128, 24, 22, 25);

  // Gradient 1

  static LinearGradient get lavenderGradient => const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xFFA7EEED),
          Color(0xFFE5BEFE),
          Color(0xFF8E78E7),
        ],
        stops: [0.0, 0.5, 1.0],
      );

  // Gradient 2
  static LinearGradient get roseGradient => const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xFFF2E3FB),
          Color(0xFFFFA5F3),
          Color(0xFFC3B0FB),
        ],
        stops: [0.0, 0.5, 1.0],
      );

  // Gradient 3
  static LinearGradient get natureGradient => const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xFFD8FFCB),
          Color(0xFFBFE9E9),
          Color(0xFFC5BDFF),
        ],
        stops: [0.0, 0.5, 1.0],
      );

  // Gradient 4
  static LinearGradient get sunsetGradient => const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xFFF4ADAD),
          Color(0xFFFFECCC),
          Color(0xFFEFE8A6),
        ],
        stops: [0.0, 0.5, 1.0],
      );

  // Gradient 5
  static LinearGradient get oceanGradient => const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xFFFEEAB4),
          Color(0xFFF8D6EF),
          Color(0xFFBBB0FC),
        ],
        stops: [0.0, 0.5, 1.0],
      );

  // Gradient 6
  static LinearGradient get cloudGradient => const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xFFFEC0A6),
          Color(0xFFB6B2F5),
          Color(0xFF619FFA),
        ],
        stops: [0.0, 0.5, 1.0],
      );

  // Overlay Gradient
  static LinearGradient get overlayGradient => const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xFFFEEAB4),
          Color(0xFFBBB0FC),
          Color(0xFFBBB0FC),
        ],
        stops: [0.0, 0.5, 1.0],
      );
}
