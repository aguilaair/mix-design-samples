import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

const myStyle = StyleVariant('myStyle');

StyleMix get style => StyleMix(
      titleCase,
      myStyle(textStyle(
        color: Colors.red,
        fontSize: 24.0,
      )),
    );

class VariantTextMix extends StatelessWidget {
  const VariantTextMix({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        StyledText(
          'design system',
          style: style,
        ),
        StyledText(
          'design system',
          style: style,
          variants: const [myStyle],
        ),
      ],
    );
  }
}
