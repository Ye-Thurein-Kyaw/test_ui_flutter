import 'package:flutter/material.dart';

class ElevatedBtn extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double height;
  final Color? buttonColor;
  final Gradient? gradient;
  final VoidCallback? onPressed;
  final Widget child;

  const ElevatedBtn({
    Key? key,
    required this.onPressed,
    required this.child,
    this.borderRadius,
    this.width = double.infinity,
    this.height = 48.0,
    this.buttonColor = const Color(0xFFBD0049),
    this.gradient,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(15);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: buttonColor,
        gradient: gradient,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        child: child,
      ),
    );
  }
}
