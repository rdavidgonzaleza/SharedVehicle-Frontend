import 'package:flutter/material.dart';

class FormBox extends StatelessWidget {
  const FormBox({
    super.key,
    this.color,
    required this.child,
  });

  final Color? color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color ?? Colors.white, 
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(45.0), 
          topRight: Radius.circular(45.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, -5), // Sombra en la parte superior
          ),
        ],
      ),
      
      child: child,
    );
  }
}