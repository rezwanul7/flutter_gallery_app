import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4281819534),
      surfaceTint: Color(4281819534),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4292011263),
      onPrimaryContainer: Color(4278197303),
      secondary: Color(4283654000),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4292338680),
      onSecondaryContainer: Color(4279245867),
      tertiary: Color(4285224824),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4294171391),
      onTertiaryContainer: Color(4280620081),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      background: Color(4294507007),
      onBackground: Color(4279835680),
      surface: Color(4294507007),
      onSurface: Color(4279835680),
      surfaceVariant: Color(4292862699),
      onSurfaceVariant: Color(4282599246),
      outline: Color(4285757311),
      outlineVariant: Color(4291020495),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281217333),
      inverseOnSurface: Color(4293914871),
      inversePrimary: Color(4288793085),
      primaryFixed: Color(4292011263),
      onPrimaryFixed: Color(4278197303),
      primaryFixedDim: Color(4288793085),
      onPrimaryFixedVariant: Color(4279978357),
      secondaryFixed: Color(4292338680),
      onSecondaryFixed: Color(4279245867),
      secondaryFixedDim: Color(4290496475),
      onSecondaryFixedVariant: Color(4282140760),
      tertiaryFixed: Color(4294171391),
      onTertiaryFixed: Color(4280620081),
      tertiaryFixedDim: Color(4292328932),
      onTertiaryFixedVariant: Color(4283645791),
      surfaceDim: Color(4292401888),
      surfaceBright: Color(4294507007),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294112250),
      surfaceContainer: Color(4293717748),
      surfaceContainerHigh: Color(4293388526),
      surfaceContainerHighest: Color(4292993768),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4279584113),
      surfaceTint: Color(4281819534),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4283398054),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4281877588),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4285101447),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4283382619),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4286737807),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      background: Color(4294507007),
      onBackground: Color(4279835680),
      surface: Color(4294507007),
      onSurface: Color(4279835680),
      surfaceVariant: Color(4292862699),
      onSurfaceVariant: Color(4282336074),
      outline: Color(4284178279),
      outlineVariant: Color(4286020483),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281217333),
      inverseOnSurface: Color(4293914871),
      inversePrimary: Color(4288793085),
      primaryFixed: Color(4283398054),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4281622156),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4285101447),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4283522414),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4286737807),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4285092981),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292401888),
      surfaceBright: Color(4294507007),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294112250),
      surfaceContainer: Color(4293717748),
      surfaceContainerHigh: Color(4293388526),
      surfaceContainerHighest: Color(4292993768),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4278199106),
      surfaceTint: Color(4281819534),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4279584113),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4279706418),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4281877588),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4281080632),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4283382619),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      background: Color(4294507007),
      onBackground: Color(4279835680),
      surface: Color(4294507007),
      onSurface: Color(4278190080),
      surfaceVariant: Color(4292862699),
      onSurfaceVariant: Color(4280296491),
      outline: Color(4282336074),
      outlineVariant: Color(4282336074),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281217333),
      inverseOnSurface: Color(4294967295),
      inversePrimary: Color(4293062143),
      primaryFixed: Color(4279584113),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278201939),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4281877588),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4280430141),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4283382619),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4281804099),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292401888),
      surfaceBright: Color(4294507007),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294112250),
      surfaceContainer: Color(4293717748),
      surfaceContainerHigh: Color(4293388526),
      surfaceContainerHighest: Color(4292993768),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4288793085),
      surfaceTint: Color(4288793085),
      onPrimary: Color(4278202969),
      primaryContainer: Color(4279978357),
      onPrimaryContainer: Color(4292011263),
      secondary: Color(4290496475),
      onSecondary: Color(4280627521),
      secondaryContainer: Color(4282140760),
      onSecondaryContainer: Color(4292338680),
      tertiary: Color(4292328932),
      onTertiary: Color(4282067271),
      tertiaryContainer: Color(4283645791),
      onTertiaryContainer: Color(4294171391),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      background: Color(4279309336),
      onBackground: Color(4292993768),
      surface: Color(4279309336),
      onSurface: Color(4292993768),
      surfaceVariant: Color(4282599246),
      onSurfaceVariant: Color(4291020495),
      outline: Color(4287467929),
      outlineVariant: Color(4282599246),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292993768),
      inverseOnSurface: Color(4281217333),
      inversePrimary: Color(4281819534),
      primaryFixed: Color(4292011263),
      onPrimaryFixed: Color(4278197303),
      primaryFixedDim: Color(4288793085),
      onPrimaryFixedVariant: Color(4279978357),
      secondaryFixed: Color(4292338680),
      onSecondaryFixed: Color(4279245867),
      secondaryFixedDim: Color(4290496475),
      onSecondaryFixedVariant: Color(4282140760),
      tertiaryFixed: Color(4294171391),
      onTertiaryFixed: Color(4280620081),
      tertiaryFixedDim: Color(4292328932),
      onTertiaryFixedVariant: Color(4283645791),
      surfaceDim: Color(4279309336),
      surfaceBright: Color(4281743678),
      surfaceContainerLowest: Color(4278914579),
      surfaceContainerLow: Color(4279835680),
      surfaceContainer: Color(4280098852),
      surfaceContainerHigh: Color(4280756783),
      surfaceContainerHighest: Color(4281480506),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4289253119),
      surfaceTint: Color(4288793085),
      onPrimary: Color(4278196014),
      primaryContainer: Color(4285240260),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4290759903),
      onSecondary: Color(4278851365),
      secondaryContainer: Color(4286943908),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4292657896),
      onTertiary: Color(4280291115),
      tertiaryContainer: Color(4288710828),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      background: Color(4279309336),
      onBackground: Color(4292993768),
      surface: Color(4279309336),
      onSurface: Color(4294638335),
      surfaceVariant: Color(4282599246),
      onSurfaceVariant: Color(4291283923),
      outline: Color(4288652203),
      outlineVariant: Color(4286546827),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292993768),
      inverseOnSurface: Color(4280756783),
      inversePrimary: Color(4280109686),
      primaryFixed: Color(4292011263),
      onPrimaryFixed: Color(4278194725),
      primaryFixedDim: Color(4288793085),
      onPrimaryFixedVariant: Color(4278204515),
      secondaryFixed: Color(4292338680),
      onSecondaryFixed: Color(4278522400),
      secondaryFixedDim: Color(4290496475),
      onSecondaryFixedVariant: Color(4281022279),
      tertiaryFixed: Color(4294171391),
      onTertiaryFixed: Color(4279896358),
      tertiaryFixedDim: Color(4292328932),
      onTertiaryFixedVariant: Color(4282462029),
      surfaceDim: Color(4279309336),
      surfaceBright: Color(4281743678),
      surfaceContainerLowest: Color(4278914579),
      surfaceContainerLow: Color(4279835680),
      surfaceContainer: Color(4280098852),
      surfaceContainerHigh: Color(4280756783),
      surfaceContainerHighest: Color(4281480506),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4294638335),
      surfaceTint: Color(4288793085),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4289253119),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294638335),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4290759903),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294965755),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4292657896),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      background: Color(4279309336),
      onBackground: Color(4292993768),
      surface: Color(4279309336),
      onSurface: Color(4294967295),
      surfaceVariant: Color(4282599246),
      onSurfaceVariant: Color(4294638335),
      outline: Color(4291283923),
      outlineVariant: Color(4291283923),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292993768),
      inverseOnSurface: Color(4278190080),
      inversePrimary: Color(4278201167),
      primaryFixed: Color(4292471039),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4289253119),
      onPrimaryFixedVariant: Color(4278196014),
      secondaryFixed: Color(4292602108),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4290759903),
      onSecondaryFixedVariant: Color(4278851365),
      tertiaryFixed: Color(4294369279),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4292657896),
      onTertiaryFixedVariant: Color(4280291115),
      surfaceDim: Color(4279309336),
      surfaceBright: Color(4281743678),
      surfaceContainerLowest: Color(4278914579),
      surfaceContainerLow: Color(4279835680),
      surfaceContainer: Color(4280098852),
      surfaceContainerHigh: Color(4280756783),
      surfaceContainerHighest: Color(4281480506),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: textTheme.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    ),
    scaffoldBackgroundColor: colorScheme.background,
    canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary,
    required this.surfaceTint,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inverseSurface,
    required this.inverseOnSurface,
    required this.inversePrimary,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      background: background,
      onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
      surfaceVariant: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
