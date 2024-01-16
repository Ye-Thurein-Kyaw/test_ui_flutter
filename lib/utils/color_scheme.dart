import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: lightColorScheme,
  useMaterial3: true,
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: darkColorScheme,
  useMaterial3: true,
);

const bottomBarColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xFF1D2766),
    Color(0xFF171F52),
  ],
);


const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFFBD0049),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFFFD9DD),
  onPrimaryContainer: Color(0xFF400013),
  secondary: Color(0xFF4153C4),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFDEE0FF),
  onSecondaryContainer: Color(0xFF000E5E),
  tertiary: Color(0xFF4B57A9),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFDFE0FF),
  onTertiaryContainer: Color(0xFF000E5F),
  error: Color(0xFFBA1A1A),
  errorContainer: Color(0xFFFFDAD6),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002),
  background: Color(0xFFFFFBFF),
  onBackground: Color(0xFF030865),
  surface: Color(0xFFFFFBFF),
  onSurface: Color(0xFF030865),
  surfaceVariant: Color(0xFFF3DDDF),
  onSurfaceVariant: Color(0xFF524345),
  outline: Color(0xFF847374),
  onInverseSurface: Color(0xFFF1EFFF),
  inverseSurface: Color(0xFF1E2578),
  inversePrimary: Color(0xFFFFB2BD),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFFBD0049),
  outlineVariant: Color(0xFFD7C2C3),
  scrim: Color(0xFF000000),
);

const darkColorScheme = ColorScheme(
 brightness: Brightness.dark,
  primary: Color(0xFFFFB2BD),
  onPrimary: Color(0xFF670024),
  primaryContainer: Color(0xFF900036),
  onPrimaryContainer: Color(0xFFFFD9DD),
  secondary: Color(0xFFBBC3FF),
  onSecondary: Color(0xFF001C95),
  secondaryContainer: Color(0xFF2539AB),
  onSecondaryContainer: Color(0xFFDEE0FF),
  tertiary: Color(0xFFBBC3FF),
  onTertiary: Color(0xFF192778),
  tertiaryContainer: Color(0xFF323F90),
  onTertiaryContainer: Color(0xFFDFE0FF),
  error: Color(0xFFFFB4AB),
  errorContainer: Color(0xFF93000A),
  onError: Color(0xFF690005),
  onErrorContainer: Color(0xFFFFDAD6),
  background: Color(0xFF030865),
  onBackground: Color(0xFFE0E0FF),
  surface: Color(0xFF030865),
  onSurface: Color(0xFFE0E0FF),
  surfaceVariant: Color(0xFF524345),
  onSurfaceVariant: Color(0xFFD7C2C3),
  outline: Color(0xFF9F8C8E),
  onInverseSurface: Color(0xFF030865),
  inverseSurface: Color(0xFFE0E0FF),
  inversePrimary: Color(0xFFBD0049),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFFFFB2BD),
  outlineVariant: Color(0xFF524345),
  scrim: Color(0xFF000000),
);