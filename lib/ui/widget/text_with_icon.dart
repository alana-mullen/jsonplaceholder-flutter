import 'package:flutter/material.dart';

class TextWithIcon extends StatelessWidget {
  final String text;
  final IconData icon;
  final TextStyle? style;

  const TextWithIcon(
      {Key? key, required this.text, required this.icon, this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: style,
        children: [
          WidgetSpan(
            child: Icon(icon),
          ),
          TextSpan(
            text: text,
          ),
        ],
      ),
    );
  }
}
