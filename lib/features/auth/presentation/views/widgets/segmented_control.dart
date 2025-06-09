import 'package:flutter/material.dart';
import 'package:temp/core/constants/widgets/text_generic.dart';

class SegmentedControl extends StatelessWidget {
  const SegmentedControl({
    super.key,
    required bool isLoginSelected,
    required this.text,
  }) : _isLoginSelected = isLoginSelected;

  final bool _isLoginSelected;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: !_isLoginSelected ? Colors.white : Colors.transparent,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: !_isLoginSelected
            ? [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5.0,
                  offset: Offset(0, 3),),
              ]
            : null,
      ),
      child: TextGeneric(
        text: text,
        color: !_isLoginSelected ? Colors.black : Colors.grey,
        fontSize: 14.0,
        textAlign: TextAlign.center,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}