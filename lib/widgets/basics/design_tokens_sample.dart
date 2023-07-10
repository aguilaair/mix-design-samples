import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

StyleMix get basicMix => StyleMix(
      height(150),
      width(150),
      rounded(20),
      elevation(8),
      backgroundColor($M3Color.primary),
    );

class DesignTokensSample extends StatelessWidget {
  const DesignTokensSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Box(
      style: basicMix,
    );
  }
}
