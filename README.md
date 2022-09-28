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

TODO: Put a short description of the package here that helps potential users
know whether this package might be useful for them.

## Features
1. mix multiple colors
2. match percentage of two colors
3. generate color from hex string


## Getting started

1. install dependencies
```dart
  color_utils:
    git:
      url: https://github.com/shawon1fb/color_utils.git
```
2. import dependencies

   ```dart
    import 'package:color_utils/color_utils.dart';
   ```
    

## Usage

 Useful examples for color_utils users. more examples
to `/test` folder.

### 1. Multi colors mixer
```dart
Color red     =  const Color(0xFF890041);
Color yellow  =  const Color(0xffFFCE51);
Color blue    =  const Color(0xff00224C);

List<Color> spicyMixerList = [yellow, red, blue];
Color mix = ColorUtils.mixColors(spicyMixerList);

Color spicyMixColor = const Color(0xff83504A);

print( spicyMixColor == mix ); /// true

```
### 2. HexColor String to Color
```dart
Color red     =  const Color(0xFF890041);
Color redHexColor = HexColor('#890041');
print(red == redHexColor); ///true
print(redHexColor == red); ///true
```

### 3. match percentage of two colors
```dart
Color spicyMixColor = const Color(0xff83504A);
Color pelorousColor = const Color(0xff44AABB);

double match = spicyMixColor.match(pelorousColor);
double expected = 64.31;
print(((match - expected) < 0.02)); ///true
```

## Additional information


