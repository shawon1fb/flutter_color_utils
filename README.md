# Color Utils: Play with Colors in Flutter!

Color Utils is a powerful Flutter package that empowers you to explore
and manipulate colors with ease. This readme describes the features,
usage, and provides helpful examples to get you started.

## Key Features

-   Mix multiple colors: Create unique shades by combining colors.
-   Match color percentages: Compare colors and quantify their
    similarity.
-   Generate colors from hex strings: Easily convert hex codes to
    vibrant colors.
-   Color cooker: Discover color palettes that complement or contrast
    with a target color.

## Getting Started

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

2.  **Import the library:**
```dart
    import 'package:color_utils/flutter_color_utils.dart';
```

## Explore Color Mixing
```dart
//colors
Color red = const Color(0xFF890041);
Color yellow = const Color(0xffFFCE51);
Color blue = const Color(0xff00224C);

// Choose your spicy palette
List spicyMixerList = [yellow, red, blue];

// Mix them up!
Color mix = ColorUtils.mixColors(spicyMixerList);

// expected color
Color spicyMixColor = const Color(0xff83504A);

// Check if the mixing worked as expected
print(spicyMixColor == mix ); // Should be true!
```
## Convert Hex Strings to Colors
```dart
Color red = const Color(0xFF890041);
Color redHexColor = HexColor('#890041');

// They should be the same!
print(red == redHexColor);//true
print(redHexColor == red);//true
```
## Match Color Similarity
```dart
Color spicyMixColor = const Color(0xff83504A);
Color pelorousColor = const Color(0xff44AABB);

// How similar are they? (0=not, 100=exact)
double match = spicyMixColor.match(pelorousColor);

double expected = 64.31;
print(((match - expected) < 0.02));//true
```
## Discover Color Palettes
```dart
Color spicyMixColor = const Color(0xff83504A);
List<Color> baseColorList = [
   const Color(0xFF890041),
   const Color(0xffFFCE51),
   const Color(0xff00224C),
   const Color(0xffFFFFFF),
   const Color(0xff21211A),
    ];

// Find the best palette for spicyMix
ColorRecipe colorReversed = ColorRecipe(
    baseColorsList: baseColorList,
    targetColor: spicyMixColor
);
colorReversed.getColorRecipe(<Color>[]);

// Get the best matching colors
print(colorReversed.bestList);

// Check if the global match is perfect
print(colorReversed.globalMaxMatch == 100.0); // Should be true!
```
## Additional Resources

-   [Color Wheel Reference](https://color.adobe.com/create/color-wheel)
-   [Interactive Color Exploration](https://trycolors.com/)

## Support

If you enjoy using Color Utils, consider buying me a coffee!

<a href="https://www.buymeacoffee.com/shawon1fb" target="_blank">
  <img src="https://cdn.buymeacoffee.com/buttons/v2/default-blue.png" alt="Buy Me A Coffee" />
</a>
