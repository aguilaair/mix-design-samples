import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

StyleMix get flexBoxMix => StyleMix(
    gap(16),
    mainAxisAlignment(MainAxisAlignment.center),
    textStyle(
      color: Colors.blue,
      fontSize: 26,
    ));

class FlexBoxSample extends StatelessWidget {
  const FlexBoxSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlexBox(
      style: flexBoxMix,
      direction: Axis.vertical,
      children: [
        StyledText(
          'Item 1',
          style: flexBoxMix,
        ),
        StyledText(
          'Item 2',
          style: flexBoxMix,
        ),
        StyledText(
          'Item 3',
          style: flexBoxMix,
        ),
      ],
    );
  }
}
