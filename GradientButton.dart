import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final Widget child;
  final Gradient gradient;
  final VoidCallback onPressed;

  const GradientButton({
    Key? key,
    required this.child,
    required this.gradient,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(gradient: gradient),
      child: MaterialButton(
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
