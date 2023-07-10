import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

StyleMix get boxMix => StyleMix(
      height(150),
      width(150),
      rounded(20),
      elevation(8),
      backgroundColor(Colors.green),
    );

class BoxSample extends StatelessWidget {
  const BoxSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Box(
      style: boxMix,
    );
  }
}
