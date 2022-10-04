import 'dart:math';
import 'dart:ui';

class ColorUtils {

  static Color mixColors(List<Color> colors) {
    int sumAlpha = 0;
    int r = 0;
    int g = 0;
    int b = 0;
    double o = 0.0;
    if(colors.isEmpty)return Color.fromRGBO(r, g, b, o);

    for (int i = 0; i < colors.length; i++) {
      r += (colors[i].red * colors[i].alpha);
      g += (colors[i].green * colors[i].alpha);
      b += (colors[i].blue * colors[i].alpha);
      o += colors[i].opacity;
      sumAlpha += colors[i].alpha;
    }
    r = (r / sumAlpha).roundToDouble().toInt();
    g = (g / sumAlpha).roundToDouble().toInt();
    b = (b / sumAlpha).roundToDouble().toInt();
    o = o / colors.length;

    Color result = Color.fromRGBO(r, g, b, o);
    return result;
  }

  static void colorPrint(Color mix, {String? name}) {
    print('----------------Color $mix ${name ?? ''}---------------------');
    print('Red     => ${mix.red}');
    print('GREEN   => ${mix.green}');
    print('BLUE    => ${mix.blue}');
    print('Opacity => ${mix.opacity}');
  }

  static double match(Color c1, Color c2) {
    int r1 = c1.red;
    int g1 = c1.green;
    int b1 = c1.blue;
    int r2 = c2.red;
    int g2 = c2.green;
    int b2 = c2.blue;
    var d = sqrt(pow((r2 - r1), 2) + pow((g2 - g1), 2) + pow((b2 - b1), 2));
    double p = d / sqrt(pow((255), 2) + pow((255), 2) + pow((255), 2));
    p = (1.0 - p);
    return p * 100;
  }
}
