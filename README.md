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
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

<h1>Color Utils: Play with Colors in Flutter!</h1>

<p>Color Utils is a powerful Flutter package that empowers you to explore and manipulate colors with ease. This readme describes the features, usage, and provides helpful examples to get you started.</p>

<h2>Key Features</h2>

<ul>
  <li>Mix multiple colors: Create unique shades by combining colors.</li>
  <li>Match color percentages: Compare colors and quantify their similarity.</li>
  <li>Generate colors from hex strings: Easily convert hex codes to vibrant colors.</li>
  <li>Color cooker: Discover color palettes that complement or contrast with a target color.</li>
</ul>

<h2>Getting Started</h2>

<ol>
  <li><strong>Install the package:</strong>
    <pre>
      dependencies:
        flutter_color_utils: ^0.0.1
    </pre>
  </li>
  <li><strong>Import the library:</strong>
    <pre>
      import 'package:color_utils/flutter_color_utils.dart';
    </pre>
  </li>
</ol>

<h2>Explore Color Mixing</h2>

<pre>
//colors
Color red = const Color(0xFF890041);
Color yellow = const Color(0xffFFCE51);
Color blue = const Color(0xff00224C);

// Choose your spicy palette
List<Color> spicyMixerList = [yellow, red, blue];

// Mix them up!
Color mix = ColorUtils.mixColors(spicyMixerList);

// expected color
Color spicyMixColor = const Color(0xff83504A);

// Check if the mixing worked as expected
print(spicyMixColor == mix ); // Should be true!
</pre>

<h2>Convert Hex Strings to Colors</h2>

<pre>
Color red = const Color(0xFF890041);
Color redHexColor = HexColor('#890041');

// They should be the same!
print(red == redHexColor);//true
print(redHexColor == red);//true

</pre>

<h2>Match Color Similarity</h2>

<pre>
Color spicyMixColor = const Color(0xff83504A);
Color pelorousColor = const Color(0xff44AABB);

// How similar are they? (0=not, 100=exact)
double match = spicyMixColor.match(pelorousColor);

double expected = 64.31;
print(((match - expected) < 0.02));//true
</pre>

<h2>Discover Color Palettes</h2>

<pre>
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
</pre>

<h2>Additional Resources</h2>
 <ul>
    <li><a href="https://color.adobe.com/create/color-wheel">Color Wheel Reference</a></li>
    <li><a href="https://trycolors.com/">Interactive Color Exploration</a></li>
  </ul>
<h2>Support</h2>
  <p>If you enjoy using Color Utils, consider buying me a coffee!</p>
<a href="https://www.buymeacoffee.com/shawon1fb" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-blue.png" alt="Buy Me A Coffee" style="height: 60px !important;width: 217px !important;" ></a>

</body>
</html>
