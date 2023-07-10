import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

StyleMix get iconMix => StyleMix(
      icon(
        color: Colors.blue,
        size: 50,
      ),
    );

class IconMixSample extends StatelessWidget {
  const IconMixSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StyledIcon(
      Icons.desktop_mac_outlined,
      style: iconMix,
    );
  }
}
