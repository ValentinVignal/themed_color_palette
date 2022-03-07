part of theme_color_palette;

/// The body to create utils extensions on the different values.
const valueExtensions = r'''
/// An extension on [Brightness] to translate to/from [String]s.
extension _BrightnessToString on Brightness {
  /// The [String] representation of the [Brightness].
  String get name {
    switch (this) {
      case Brightness.light:
        return 'light';
      case Brightness.dark:
        return 'dark';
    }
  }

  /// Returns the [Brightness] from its [String] representation.
  static Brightness? fromString(String? brightness) {
    switch (brightness) {
      case 'light':
        return Brightness.light;
      case 'dark':
        return Brightness.dark;
      default:
        return null;
    }
  }
}

/// An extension on [FontWeight] to translate to/from [String]s.
extension _FontWeightToString on FontWeight {
  /// The [String] representation of the [FontWeight].
  String get name {
    switch (this) {
      case FontWeight.w100:
        return 'w100';
      case FontWeight.w200:
        return 'w200';
      case FontWeight.w300:
        return 'w300';
      case FontWeight.w400:
        return 'w400';
      case FontWeight.w500:
        return 'w500';
      case FontWeight.w600:
        return 'w600';
      case FontWeight.w700:
        return 'w700';
      case FontWeight.w800:
        return 'w800';
      case FontWeight.w900:
        return 'w900';
      default:
        throw UnsupportedError('FontWeight $this is not supported');
    }
  }

  /// Returns the [FontWeight] from its [String] representation.
  static FontWeight? fromString(String? weight) {
    switch (weight) {
      case 'w100':
        return FontWeight.w100;
      case 'w200':
        return FontWeight.w200;
      case 'w300':
        return FontWeight.w300;
      case 'w400':
        return FontWeight.w400;
      case 'w500':
        return FontWeight.w500;
      case 'w600':
        return FontWeight.w600;
      case 'w700':
        return FontWeight.w700;
      case 'w800':
        return FontWeight.w800;
      case 'w900':
        return FontWeight.w900;
      default:
        return null;
    }
  }
}

/// An extension on [Color] to translate to/from [String]s.
extension _ColorToString on Color {
  /// The [String] representation of the [Color].
  String get stringValue {
    return value.toRadixString(16);
  }

  /// Returns the [Color] from its [String] representation.
  static Color? fromString(String? color) {
    try {
      return Color(int.parse(color!, radix: 16));
    } catch (_) {
      return null;
    }
  }
}
''';
