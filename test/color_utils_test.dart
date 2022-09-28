import 'dart:ui';

import 'package:color_utils/color_utils.dart';
import 'package:flutter_test/flutter_test.dart';

/// reference website https://trycolors.com/

void main() {
  Color redCool = const Color(0xFF890041);
  Color yellowCool = const Color(0xffFFCE51);
  Color blue = const Color(0xff00224C);
  Color white = const Color(0xffFFFFFF);
  Color black = const Color(0xff21211A);

  test('color mixer test', () async {
    /// ----- spicy Mix Color -----
    Color spicyMixColor = const Color(0xff83504A);
    List<Color> spicyMixerList = [yellowCool, redCool, blue];
    Color mix = ColorUtils.mixColors(spicyMixerList);
    expect(mix == spicyMixColor, true);
    expect(mix != spicyMixColor, false);

    /// ----- fedora Color -----
    Color fedoraColor = const Color(0xff756A72);
    List<Color> fedoraColorMixerList = [
      redCool,
      yellowCool,
      blue,
      blue,
      blue,
      white,
      white,
      black,
    ];
    Color fedoraColorMixResul = ColorUtils.mixColors(fedoraColorMixerList);

    expect(fedoraColor == fedoraColorMixResul, true);
    expect(fedoraColor != fedoraColorMixResul, false);
  });

  test(
    'HexColor to Color test',
    () {
      Color redHexColor = HexColor('890041');
      expect(redCool == redHexColor, true);
      expect(redHexColor == redCool, true);
      expect(redCool != redHexColor, false);
    },
  );
}
