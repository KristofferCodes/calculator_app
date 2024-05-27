import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {Key? key, required this.text, required this.onTap, this.textStyle})
      : super(key: key);

  final String text;
  final TextStyle? textStyle;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xff0A7212),
            borderRadius: BorderRadius.circular(8.0)),
        height: 50,
        width: double.infinity,
        child: Center(
          child: Text(
            text,
            style: textStyle ??
                const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
          ),
        ),
      ),
    );
  }
}
