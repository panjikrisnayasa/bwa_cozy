import 'package:flutter/material.dart';

import '../theme.dart';

class PrimaryButton extends StatelessWidget {
  final Function() onPressed;
  final String text;

  const PrimaryButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: primaryButtonStyle,
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
