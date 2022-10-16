import 'package:flutter/material.dart';

import '../utils/color.utils.dart';

extension ColorSum on Color {
  Color operator +(Color other) => ColorUtils.mixColors(<Color>[this, other]);

  Color mixColor(Color c) => ColorUtils.mixColors(<Color>[this, c]);

  Color mixWith(List<Color> colors) =>
      ColorUtils.mixColors(<Color>[this, ...colors]);

  double match(Color c1) => ColorUtils.match(this, c1);

  void printColor({String? tag}) => ColorUtils.colorPrint(this, name: tag);

  String toHexString({bool hashSign = true}) {
    return '${hashSign ? '#' : ''}${red.toRadixString(16).padLeft(2, '0')}${green.toRadixString(16).padLeft(2, '0')}${blue.toRadixString(16).padLeft(2, '0')}'
        .toUpperCase();
  }

  String toRgbString() {
    return 'rgb($red,$green,$blue)';
  }
}

extension ColorGenerator on Colors {
  Color get random => ColorUtils.generateRandomColor();
}
