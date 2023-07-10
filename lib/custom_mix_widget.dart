import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

class CustomMixWidget extends StatelessWidget {
  const CustomMixWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mix = StyleMix(
      height(100),
      animation(),
      padding(10),
      elevation(8),
      rounded(10),
      backgroundColor($M3Color.primary),
      textStyle(as: $M3Text.bodyMedium, color: $M3Color.onPrimary),
      onHover(
        elevation(2),
        padding(20),
        backgroundColor($M3Color.secondary),
        textStyle(as: $M3Text.bodyMedium, color: $M3Color.onSecondary),
      ),
    );
    return StyledContainer(
      style: mix,
      child: Pressable(
        onPressed: () {},
        child: const StyledText('Custom Widget'),
      ),
    );
  }
}
