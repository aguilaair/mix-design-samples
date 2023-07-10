// ignore_for_file: constant_identifier_names

const String BASIC_MIX = "Basic Mix",
    BOX_SAMPLE = "Box Sample",
    FLEXBOX_SAMPLE = "Flexbox Sample",
    ICONMIX_SAMPLE = "IconMix Sample",
    PRESSABLE_SAMPLE = "Pressable Sample",
    ANIMATED_PRESSABLE_SAMPLE = "animation Pressable Sample",
    TEXTMIX_SAMPLE = "TextMix Sample",
    DESIGN_TOKENS_SAMPLE = "Design Tokens Sample";

class SampleCode {
  const SampleCode();
  static const Map<String, String> _snippets = {
    BASIC_MIX: '''
class BasicMix extends StatelessWidget {
  const BasicMix({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Box(
      style: boxMix,
    );
  }
}
''',
    BOX_SAMPLE: '''
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
''',
    FLEXBOX_SAMPLE: '''
  StyleMix get flexBoxMix => StyleMix(
        gap(16),
        mainAxis(MainAxisAlignment.center),
        font(
          size: 26,
          color: Colors.blue,
        ),
      );

  class FlexBoxSample extends StatelessWidget {
    const FlexBoxSample({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return FlexBox(
        style: flexBoxMix,
        direction: Axis.vertical,
        children: const [
          TextMix('Item 1'),
          TextMix('Item 2'),
          TextMix('Item 3'),
        ],
      );
    }
  }
''',
    ICONMIX_SAMPLE: '''
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
      return IconMix(
        style: iconMix,
        icon: Icons.desktop_mac_outlined,
      );
    }
  }
''',
    PRESSABLE_SAMPLE: '''
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
        style: pressableMix,
        child: const TextMix('Tap here'),
      );
    }
  }
''',
    ANIMATED_PRESSABLE_SAMPLE: '''
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
      style: animPressableMix,
      child: const TextMix('animation Button'),
    );
  }
}
''',
    TEXTMIX_SAMPLE: '''
StyleMix get textMix => StyleMix(
      font(
        color: Colors.green,
        size: 24,
      ),
    );

class TextMixSample extends StatelessWidget {
  const TextMixSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextMix(
      'Welcome to Mix',
      style: textMix,
    );
  }
}
''',
    DESIGN_TOKENS_SAMPLE: '''
StyleMix get basicMix => StyleMix(
      height(150),
      width(150),
      rounded(20),
      elevation(8),
      backgroundColor(\$M3Color.primary),
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
'''
  };

  String fetchCode(String sampleName) => _snippets.containsKey(sampleName)
      ? _snippets[sampleName]!
      : "No Code for $sampleName";
}
