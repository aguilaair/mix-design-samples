import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

StyleMix get dynamicMix => StyleMix(
      height(150),
      width(150),
      rounded(20),
      elevation(8),
      backgroundColor(Colors.green),
      border(
        color: Colors.green.shade800,
        width: 8,
      ),
      onDark(
        backgroundColor(Colors.grey),
        border(
          color: Colors.white,
        ),
      ),
    );

class DynamicBoxSample extends StatelessWidget {
  const DynamicBoxSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Box(
      style: dynamicMix,
    );
  }
}
