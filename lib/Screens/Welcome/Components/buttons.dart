import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    Key? key,
    required this.pressed,
    required this.child,
    required this.color,
  }) : super(key: key);

  final VoidCallback pressed;
  final Widget child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: pressed,
      child: child,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(color),
        fixedSize: MaterialStateProperty.all<Size>(Size(150.0, 50.0)), 
      ),
    );
  }
}
