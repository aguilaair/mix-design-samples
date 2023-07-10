import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

StyleMix get inbuiltVariantMix => StyleMix(
      rounded(35),
      elevation(8),
      width(100),
      height(50),
      backgroundColor(Colors.redAccent),
      border(
        color: Colors.redAccent,
        width: 3,
      ),
      onHover(
        border(color: Colors.greenAccent),
      ),
      onPress(
        backgroundColor(Colors.greenAccent),
        border(color: Colors.redAccent),
        elevation(1),
      ),
    );

class VariantMix extends StatelessWidget {
  const VariantMix({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Pressable(
      onPressed: () {},
      child: const Box(),
    );
  }
}
