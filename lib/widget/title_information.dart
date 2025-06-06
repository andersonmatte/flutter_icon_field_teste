import 'package:flutter/cupertino.dart';

class TitleInformation extends StatelessWidget {
  final String text;

  const TitleInformation(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 14,
        color: Color(0xDD000000),
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
