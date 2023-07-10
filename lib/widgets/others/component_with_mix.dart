import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

class ComponentWithMix extends StatelessWidget {
  const ComponentWithMix({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final style = StyleMix(
      elevation(8),
      rounded(20),
      backgroundColor(Colors.purple),
      border(width: 5, color: Colors.deepPurple),
      padding(20),
      textStyle(
        color: Colors.white,
        fontSize: 20,
      ),
    );
    return Box(
      style: style,
      child: StyledText(
        'Welcome to MIX',
        style: style,
      ),
    );
  }
}
