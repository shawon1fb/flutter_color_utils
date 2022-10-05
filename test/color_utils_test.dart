import 'dart:ui';

import 'package:color_utils/color_utils.dart';
import 'package:color_utils/src/utils/reverse.color.dart';
import 'package:flutter_test/flutter_test.dart';

/// reference website https://trycolors.com/

void main() {
  Color red = const Color(0xFF890041);
  Color yellow = const Color(0xffFFCE51);
  Color blue = const Color(0xff00224C);
  Color white = const Color(0xffFFFFFF);
  Color black = const Color(0xff21211A);

  test('colors mixer test', () async {
    /// ----- spicy Mix Color -----
    Color spicyMixColor = const Color(0xff83504A);
    List<Color> spicyMixerList = [yellow, red, blue];
    Color mix = ColorUtils.mixColors(spicyMixerList);
    expect(mix == spicyMixColor, true);
    expect(mix != spicyMixColor, false);

    /// ----- fedora Color -----
    Color fedoraColor = const Color(0xff756A72);
    List<Color> fedoraColorMixerList = [
      red,
      yellow,
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
      Color redHexColor = HexColor('#890041');
      expect(red == redHexColor, true);
      expect(redHexColor == red, true);
      expect(red != redHexColor, false);
    },
  );

  test(
    'check match between two colors test',
    () async {
      Color spicyMixColor = const Color(0xff83504A);
      Color pelorousColor = const Color(0xff44AABB);

      double match = spicyMixColor.match(pelorousColor);
      double expected = 64.31;
      expect(((match - expected) < 0.02), true);

      Color lunchColor = const Color(0xff74879E);
      match = pelorousColor.match(lunchColor);
      expected = 85.03;
      expect(((match - expected) < 0.02), true);
    },
  );

  test('mix two color', () {
    const Color valentinoColor = Color(0xff451147);
    Color mixColor = red + blue;
    expect(valentinoColor == mixColor, true);
    expect(valentinoColor != mixColor, false);
  });

  test('cook color', () {
    Color spicyMixColor = const Color(0xff83504A);
    List<Color> baseColorList = [
      const Color(0xFF890041),
      const Color(0xffFFCE51),
      const Color(0xff00224C),
      const Color(0xffFFFFFF),
      const Color(0xff21211A),
    ];
    ColorRecipe colorReversed =
        ColorRecipe(baseColorsList: baseColorList, targetColor: spicyMixColor);
    colorReversed.getColorRecipe(<Color>[]);
    print(colorReversed.bestList);
    expect(colorReversed.globalMaxMatch==100.0, true);
  });
}
