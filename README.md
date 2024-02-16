<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

# Introduction

Color Utils is an useful package for play with colors.

## Features

1. Mix multiple colors
2. Match percentage of two colors
3. Generate color from hex string
4. Color cooker [ get a colour palette list using the base colours list for the target colour ]

## Getting started

1. Install dependencies

```dart
color_utils:
    git:
      url: https://github.com/shawon1fb/flutter_color_utils.git
```
or
```dart
dependencies:
  flutter_color_utils: ^0.0.1
```

2. Import dependencies

```dart
    import 'package:color_utils/flutter_color_utils.dart';
```

## Usage

Useful examples for color_utils users. more examples
to `/test` folder.

### 1. Multi colors mixer

```dart

Color red = const Color(0xFF890041);
Color yellow = const Color(0xffFFCE51);
Color blue = const Color(0xff00224C);

List<Color> spicyMixerList = [yellow, red, blue];
Color mix = ColorUtils.mixColors(spicyMixerList);

Color spicyMixColor = const Color(0xff83504A);

print(spicyMixColor == mix );/// true

```

### 2. HexColor String to Color

```dart

Color red = const Color(0xFF890041);
Color redHexColor = HexColor('#890041');
print(red == redHexColor);///true

print(redHexColor == red);///true
```

### 3. Match percentage of two colors

```dart

Color spicyMixColor = const Color(0xff83504A);
Color pelorousColor = const Color(0xff44AABB);

double match = spicyMixColor.match(pelorousColor);
double expected = 64.31;
print(((match - expected) <0.02));///true
```
### 4. Color cooker
```dart
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
 print(colorReversed.globalMaxMatch==100.0); /// true
```

## Additional information

### Reference

1. https://color.adobe.com/create/color-wheel
2. https://trycolors.com/

<a href="https://www.buymeacoffee.com/shawon1fb" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-blue.png" alt="Buy Me A Coffee" style="height: 60px !important;width: 217px !important;" ></a>
