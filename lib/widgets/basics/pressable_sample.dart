import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

StyleMix get pressableMix => StyleMix(
      elevation(8),
      padding(20),
      rounded(30),
      backgroundColor(Colors.white),
      border(
        color: Colors.black,
        width: 2,
      ),
      onHover(
        border(
          color: Colors.green,
        ),
      ),
      onPress(
        elevation(1),
        border(
          color: Colors.green,
          width: 4,
        ),
      ),
    );

class PressableSample extends StatelessWidget {
  const PressableSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Pressable(
      onPressed: () {},
      child: StyledText(
        'Tap here',
        style: pressableMix,
      ),
    );
  }
}
