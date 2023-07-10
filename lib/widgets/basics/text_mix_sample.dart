import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

StyleMix get textMix => StyleMix(textStyle(
      color: Colors.green,
      fontSize: 24,
    ));

class TextMixSample extends StatelessWidget {
  const TextMixSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StyledText(
      'Welcome to Mix',
      style: textMix,
    );
  }
}
