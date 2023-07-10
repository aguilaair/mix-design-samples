import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

StyleMix get animPressableMix => StyleMix(
      elevation(8),
      padding(20),
      rounded(30),
      backgroundColor(Colors.greenAccent),
      animation(),
      scale(1),
      onPress(
        scale(0.9),
        elevation(1),
      ),
    );

class AnimatedPressableSample extends StatelessWidget {
  const AnimatedPressableSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Pressable(
      onPressed: () {},
      child: StyledText(
        'animation Button',
        style: animPressableMix,
      ),
    );
  }
}
