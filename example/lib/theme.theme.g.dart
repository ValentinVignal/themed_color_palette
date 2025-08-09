// ! GENERATED CODE - DO NOT MANUALLY EDIT
// ignore_for_file: type=lint
// dart format off

part of 'theme.dart';

// Version: 0.0.0.

/// Different Themes.
enum Themes {
  /// Light theme.
  light,

  /// Dark theme.
  dark,

  /// DarkCopy theme.
  darkCopy,
}

/// Extension on [Themes].
extension ThemesExtension on Themes {
  /// Returns the theme color palette.
  ThemeColorPalette get colorPalette {
    switch (this) {
      case Themes.light:
        return const ThemeColorPalette.light();
      case Themes.dark:
        return const ThemeColorPalette.dark();
      case Themes.darkCopy:
        return const ThemeColorPalette.darkCopy();
    }
  }
}

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

// -------------------- ThemeColorPalette --------------------

/// The Theme Color Palette
class ThemeColorPalette extends ThemeExtension<ThemeColorPalette> {
  /// The Theme Color Palette
  const ThemeColorPalette({
    required Brightness brightness,
    required Color accentColor,
    required Color primaryColor,
    required Color primaryColorLight,
    required this.secondaryColor,
    required Color errorColor,
    required Color disabledColor,
    required this.textEmphasis,
    required this.iconEmphasis,
    required this.border,
    required this.background,
    required this.floatingActionButton,
    required this.task,
    required this.form,
    required this.notification,
    required this.projectTimeline,
    required this.pin,
    required Color hoverColor,
    required this.appBarTheme,
    required this.bottomAppBarTheme,
    required ThemeColorPalette$TooltipTheme tooltipTheme,
    required ThemeColorPalette$PopupMenuTheme popupMenuTheme,
    required ThemeColorPalette$DividerTheme dividerTheme,
    required Color selectedRowColor,
  })  : _brightness = brightness,
        _accentColor = accentColor,
        _primaryColor = primaryColor,
        _primaryColorLight = primaryColorLight,
        _errorColor = errorColor,
        _disabledColor = disabledColor,
        _hoverColor = hoverColor,
        _tooltipTheme = tooltipTheme,
        _popupMenuTheme = popupMenuTheme,
        _dividerTheme = dividerTheme,
        _selectedRowColor = selectedRowColor;

  /// The Theme Color Palette
  const ThemeColorPalette.light()
      : _brightness = Brightness.light,
        _accentColor = const Color(0xff2864ac),
        _primaryColor = const Color(0xff5182bb),
        _primaryColorLight = const Color(0xffd5e0ee),
        secondaryColor = const Color(0xff7ec141),
        _errorColor = const Color(0xff354d39),
        _disabledColor = const Color(0x61000000),
        textEmphasis = const ThemeColorPalette$TextEmphasis.light(),
        iconEmphasis = const ThemeColorPalette$IconEmphasis.light(),
        border = const ThemeColorPalette$Border.light(),
        background = const ThemeColorPalette$Background.light(),
        floatingActionButton =
            const ThemeColorPalette$FloatingActionButton.light(),
        task = const ThemeColorPalette$Task.light(),
        form = const ThemeColorPalette$Form.light(),
        notification = const ThemeColorPalette$Notification.light(),
        projectTimeline = const ThemeColorPalette$ProjectTimeline.light(),
        pin = const ThemeColorPalette$Pin.light(),
        _hoverColor = const Color(0x0a000000),
        appBarTheme = const ThemeColorPalette$AppBarTheme.light(),
        bottomAppBarTheme = const ThemeColorPalette$BottomAppBarTheme.light(),
        _tooltipTheme = const ThemeColorPalette$TooltipTheme.light(),
        _popupMenuTheme = const ThemeColorPalette$PopupMenuTheme.light(),
        _dividerTheme = const ThemeColorPalette$DividerTheme.light(),
        _selectedRowColor = const Color(0x142864ac);

  /// The Theme Color Palette
  const ThemeColorPalette.dark()
      : _brightness = Brightness.dark,
        _accentColor = const Color(0xff699fcf),
        _primaryColor = const Color(0xffc1dbef),
        _primaryColorLight = const Color(0xff2c2c2c),
        secondaryColor = const Color(0xff7ec141),
        _errorColor = const Color(0xff354d39),
        _disabledColor = const Color(0x61ffffff),
        textEmphasis = const ThemeColorPalette$TextEmphasis.dark(),
        iconEmphasis = const ThemeColorPalette$IconEmphasis.dark(),
        border = const ThemeColorPalette$Border.dark(),
        background = const ThemeColorPalette$Background.dark(),
        floatingActionButton =
            const ThemeColorPalette$FloatingActionButton.dark(),
        task = const ThemeColorPalette$Task.dark(),
        form = const ThemeColorPalette$Form.dark(),
        notification = const ThemeColorPalette$Notification.dark(),
        projectTimeline = const ThemeColorPalette$ProjectTimeline.dark(),
        pin = const ThemeColorPalette$Pin.dark(),
        _hoverColor = const Color(0xa699fcf),
        appBarTheme = const ThemeColorPalette$AppBarTheme.dark(),
        bottomAppBarTheme = const ThemeColorPalette$BottomAppBarTheme.dark(),
        _tooltipTheme = const ThemeColorPalette$TooltipTheme.dark(),
        _popupMenuTheme = const ThemeColorPalette$PopupMenuTheme.dark(),
        _dividerTheme = const ThemeColorPalette$DividerTheme.dark(),
        _selectedRowColor = const Color(0x14699fcf);

  /// The Theme Color Palette
  const ThemeColorPalette.darkCopy()
      : _brightness = Brightness.dark,
        _accentColor = const Color(0xff699fcf),
        _primaryColor = const Color(0xffc1dbef),
        _primaryColorLight = const Color(0xff2c2c2c),
        secondaryColor = const Color(0xff7ec141),
        _errorColor = const Color(0xff354d39),
        _disabledColor = const Color(0x61ffffff),
        textEmphasis = const ThemeColorPalette$TextEmphasis.darkCopy(),
        iconEmphasis = const ThemeColorPalette$IconEmphasis.darkCopy(),
        border = const ThemeColorPalette$Border.darkCopy(),
        background = const ThemeColorPalette$Background.darkCopy(),
        floatingActionButton =
            const ThemeColorPalette$FloatingActionButton.darkCopy(),
        task = const ThemeColorPalette$Task.darkCopy(),
        form = const ThemeColorPalette$Form.darkCopy(),
        notification = const ThemeColorPalette$Notification.darkCopy(),
        projectTimeline = const ThemeColorPalette$ProjectTimeline.darkCopy(),
        pin = const ThemeColorPalette$Pin.darkCopy(),
        _hoverColor = const Color(0xa699fcf),
        appBarTheme = const ThemeColorPalette$AppBarTheme.darkCopy(),
        bottomAppBarTheme =
            const ThemeColorPalette$BottomAppBarTheme.darkCopy(),
        _tooltipTheme = const ThemeColorPalette$TooltipTheme.darkCopy(),
        _popupMenuTheme = const ThemeColorPalette$PopupMenuTheme.darkCopy(),
        _dividerTheme = const ThemeColorPalette$DividerTheme.darkCopy(),
        _selectedRowColor = const Color(0x14699fcf);

  /// From json.
  ThemeColorPalette.fromJson(Map<String, dynamic> json)
      : _brightness = json['brightness'] as Brightness,
        _accentColor = json['accentColor'] as Color,
        _primaryColor = json['primaryColor'] as Color,
        _primaryColorLight = json['primaryColorLight'] as Color,
        secondaryColor = json['secondaryColor'] as Color,
        _errorColor = json['errorColor'] as Color,
        _disabledColor = json['disabledColor'] as Color,
        textEmphasis = ThemeColorPalette$TextEmphasis.fromJson(
            Map<String, dynamic>.from(json['textEmphasis'] as Map)),
        iconEmphasis = ThemeColorPalette$IconEmphasis.fromJson(
            Map<String, dynamic>.from(json['iconEmphasis'] as Map)),
        border = ThemeColorPalette$Border.fromJson(
            Map<String, dynamic>.from(json['border'] as Map)),
        background = ThemeColorPalette$Background.fromJson(
            Map<String, dynamic>.from(json['background'] as Map)),
        floatingActionButton = ThemeColorPalette$FloatingActionButton.fromJson(
            Map<String, dynamic>.from(json['floatingActionButton'] as Map)),
        task = ThemeColorPalette$Task.fromJson(
            Map<String, dynamic>.from(json['task'] as Map)),
        form = ThemeColorPalette$Form.fromJson(
            Map<String, dynamic>.from(json['form'] as Map)),
        notification = ThemeColorPalette$Notification.fromJson(
            Map<String, dynamic>.from(json['notification'] as Map)),
        projectTimeline = ThemeColorPalette$ProjectTimeline.fromJson(
            Map<String, dynamic>.from(json['projectTimeline'] as Map)),
        pin = ThemeColorPalette$Pin.fromJson(
            Map<String, dynamic>.from(json['pin'] as Map)),
        _hoverColor = json['hoverColor'] as Color,
        appBarTheme = ThemeColorPalette$AppBarTheme.fromJson(
            Map<String, dynamic>.from(json['appBarTheme'] as Map)),
        bottomAppBarTheme = ThemeColorPalette$BottomAppBarTheme.fromJson(
            Map<String, dynamic>.from(json['bottomAppBarTheme'] as Map)),
        _tooltipTheme = ThemeColorPalette$TooltipTheme.fromJson(
            Map<String, dynamic>.from(json['tooltipTheme'] as Map)),
        _popupMenuTheme = ThemeColorPalette$PopupMenuTheme.fromJson(
            Map<String, dynamic>.from(json['popupMenuTheme'] as Map)),
        _dividerTheme = ThemeColorPalette$DividerTheme.fromJson(
            Map<String, dynamic>.from(json['dividerTheme'] as Map)),
        _selectedRowColor = json['selectedRowColor'] as Color;

  /// From yaml.
  ThemeColorPalette.fromYaml(Map<String, dynamic> yaml)
      : _brightness =
            _BrightnessToString.fromString(yaml['brightness'] as String)!,
        _accentColor =
            _ColorToString.fromString(yaml['accentColor'] as String)!,
        _primaryColor =
            _ColorToString.fromString(yaml['primaryColor'] as String)!,
        _primaryColorLight =
            _ColorToString.fromString(yaml['primaryColorLight'] as String)!,
        secondaryColor =
            _ColorToString.fromString(yaml['secondaryColor'] as String)!,
        _errorColor = _ColorToString.fromString(yaml['errorColor'] as String)!,
        _disabledColor =
            _ColorToString.fromString(yaml['disabledColor'] as String)!,
        textEmphasis = ThemeColorPalette$TextEmphasis.fromYaml(
            Map<String, dynamic>.from(yaml['textEmphasis'] as Map)),
        iconEmphasis = ThemeColorPalette$IconEmphasis.fromYaml(
            Map<String, dynamic>.from(yaml['iconEmphasis'] as Map)),
        border = ThemeColorPalette$Border.fromYaml(
            Map<String, dynamic>.from(yaml['border'] as Map)),
        background = ThemeColorPalette$Background.fromYaml(
            Map<String, dynamic>.from(yaml['background'] as Map)),
        floatingActionButton = ThemeColorPalette$FloatingActionButton.fromYaml(
            Map<String, dynamic>.from(yaml['floatingActionButton'] as Map)),
        task = ThemeColorPalette$Task.fromYaml(
            Map<String, dynamic>.from(yaml['task'] as Map)),
        form = ThemeColorPalette$Form.fromYaml(
            Map<String, dynamic>.from(yaml['form'] as Map)),
        notification = ThemeColorPalette$Notification.fromYaml(
            Map<String, dynamic>.from(yaml['notification'] as Map)),
        projectTimeline = ThemeColorPalette$ProjectTimeline.fromYaml(
            Map<String, dynamic>.from(yaml['projectTimeline'] as Map)),
        pin = ThemeColorPalette$Pin.fromYaml(
            Map<String, dynamic>.from(yaml['pin'] as Map)),
        _hoverColor = _ColorToString.fromString(yaml['hoverColor'] as String)!,
        appBarTheme = ThemeColorPalette$AppBarTheme.fromYaml(
            Map<String, dynamic>.from(yaml['appBarTheme'] as Map)),
        bottomAppBarTheme = ThemeColorPalette$BottomAppBarTheme.fromYaml(
            Map<String, dynamic>.from(yaml['bottomAppBarTheme'] as Map)),
        _tooltipTheme = ThemeColorPalette$TooltipTheme.fromYaml(
            Map<String, dynamic>.from(yaml['tooltipTheme'] as Map)),
        _popupMenuTheme = ThemeColorPalette$PopupMenuTheme.fromYaml(
            Map<String, dynamic>.from(yaml['popupMenuTheme'] as Map)),
        _dividerTheme = ThemeColorPalette$DividerTheme.fromYaml(
            Map<String, dynamic>.from(yaml['dividerTheme'] as Map)),
        _selectedRowColor =
            _ColorToString.fromString(yaml['selectedRowColor'] as String)!;

  /// Default radius
  static const radius = 4.0;

  /// Default padding
  static const defaultPadding = 16.0;

  /// High opacity
  static const opacity_high = 1.0;

  /// Medium opacity
  static const opacity_medium = 0.87;

  /// Low opacity
  static const opacity_low = 0.6;

  /// Low opacity
  static const opacity_disabled = 0.6;

  /// Hover opacity
  static const opacity_hover = 0.04;

  /// High elevation
  static const elevation_high = 3.0;

  /// Medium elevation
  static const elevation_medium = 2.0;

  /// Low elevation
  static const elevation_low = 1.0;

  /// None elevation
  static const elevation_none = 0.0;

  /// Thickness of the Dividers
  static const divider_thickness = 2.0;

  /// Global brightness of the theme
  ///
  /// Use `theme.brightness` instead.
  final Brightness _brightness;

  /// The accent Color
  ///
  /// Use `theme.accentColor` instead.
  @Deprecated('accent color is deprecated')
  final Color _accentColor;

  /// Primary color
  ///
  /// Use `theme.primaryColor` instead.
  final Color _primaryColor;

  /// Primary color light
  ///
  /// Use `theme.primaryColorLight` instead.
  final Color _primaryColorLight;

  /// Secondary color
  final Color secondaryColor;

  /// Error Color
  ///
  /// Use `theme.errorColor` instead.
  final Color _errorColor;

  /// Disabled color
  ///
  /// Use `theme.disabledColor` instead.
  final Color _disabledColor;

  /// The different text emphasis
  final ThemeColorPalette$TextEmphasis textEmphasis;

  /// The different icon emphasis
  final ThemeColorPalette$IconEmphasis iconEmphasis;

  /// Borders
  final ThemeColorPalette$Border border;

  /// Backgrounds
  final ThemeColorPalette$Background background;

  /// Floating action button
  final ThemeColorPalette$FloatingActionButton floatingActionButton;

  /// Task color palette
  final ThemeColorPalette$Task task;

  /// Form color palette
  final ThemeColorPalette$Form form;

  /// Notification color palette
  final ThemeColorPalette$Notification notification;

  /// Project time line color palette
  final ThemeColorPalette$ProjectTimeline projectTimeline;

  /// Pin theme
  final ThemeColorPalette$Pin pin;

  /// Overlay color
  ///
  /// Use `theme.hoverColor` instead.
  final Color _hoverColor;

  ///
  final ThemeColorPalette$AppBarTheme appBarTheme;

  ///
  final ThemeColorPalette$BottomAppBarTheme bottomAppBarTheme;

  /// Tooltip theme
  ///
  /// Use `theme.tooltipTheme` instead.
  final ThemeColorPalette$TooltipTheme _tooltipTheme;

  /// Popup menu theme
  ///
  /// Use `theme.popupMenuTheme` instead.
  final ThemeColorPalette$PopupMenuTheme _popupMenuTheme;

  /// Divider theme
  ///
  /// Use `theme.dividerTheme` instead.
  final ThemeColorPalette$DividerTheme _dividerTheme;

  /// Selected row color
  ///
  /// Use `theme.selectedRowColor` instead.
  final Color _selectedRowColor;

  @override
  ThemeColorPalette copyWith({
    covariant Brightness? brightness,
    @Deprecated('accent color is deprecated') covariant Color? accentColor,
    covariant Color? primaryColor,
    covariant Color? primaryColorLight,
    covariant Color? secondaryColor,
    covariant Color? errorColor,
    covariant Color? disabledColor,
    covariant ThemeColorPalette$TextEmphasis? textEmphasis,
    covariant ThemeColorPalette$IconEmphasis? iconEmphasis,
    covariant ThemeColorPalette$Border? border,
    covariant ThemeColorPalette$Background? background,
    covariant ThemeColorPalette$FloatingActionButton? floatingActionButton,
    covariant ThemeColorPalette$Task? task,
    covariant ThemeColorPalette$Form? form,
    covariant ThemeColorPalette$Notification? notification,
    covariant ThemeColorPalette$ProjectTimeline? projectTimeline,
    covariant ThemeColorPalette$Pin? pin,
    covariant Color? hoverColor,
    covariant ThemeColorPalette$AppBarTheme? appBarTheme,
    covariant ThemeColorPalette$BottomAppBarTheme? bottomAppBarTheme,
    covariant ThemeColorPalette$TooltipTheme? tooltipTheme,
    covariant ThemeColorPalette$PopupMenuTheme? popupMenuTheme,
    covariant ThemeColorPalette$DividerTheme? dividerTheme,
    covariant Color? selectedRowColor,
  }) {
    return ThemeColorPalette(
      brightness: brightness ?? _brightness,
      accentColor: accentColor ?? _accentColor,
      primaryColor: primaryColor ?? _primaryColor,
      primaryColorLight: primaryColorLight ?? _primaryColorLight,
      secondaryColor: secondaryColor ?? this.secondaryColor,
      errorColor: errorColor ?? _errorColor,
      disabledColor: disabledColor ?? _disabledColor,
      textEmphasis: textEmphasis ?? this.textEmphasis,
      iconEmphasis: iconEmphasis ?? this.iconEmphasis,
      border: border ?? this.border,
      background: background ?? this.background,
      floatingActionButton: floatingActionButton ?? this.floatingActionButton,
      task: task ?? this.task,
      form: form ?? this.form,
      notification: notification ?? this.notification,
      projectTimeline: projectTimeline ?? this.projectTimeline,
      pin: pin ?? this.pin,
      hoverColor: hoverColor ?? _hoverColor,
      appBarTheme: appBarTheme ?? this.appBarTheme,
      bottomAppBarTheme: bottomAppBarTheme ?? this.bottomAppBarTheme,
      tooltipTheme: tooltipTheme ?? _tooltipTheme,
      popupMenuTheme: popupMenuTheme ?? _popupMenuTheme,
      dividerTheme: dividerTheme ?? _dividerTheme,
      selectedRowColor: selectedRowColor ?? _selectedRowColor,
    );
  }

  /// Copy with json.
  ThemeColorPalette copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      brightness: json['brightness'] as Brightness?,
      accentColor: json['accentColor'] as Color?,
      primaryColor: json['primaryColor'] as Color?,
      primaryColorLight: json['primaryColorLight'] as Color?,
      secondaryColor: json['secondaryColor'] as Color?,
      errorColor: json['errorColor'] as Color?,
      disabledColor: json['disabledColor'] as Color?,
      textEmphasis: textEmphasis.copyWithJson(json['textEmphasis'] == null
          ? null
          : Map<String, dynamic>.from(json['textEmphasis'] as Map)),
      iconEmphasis: iconEmphasis.copyWithJson(json['iconEmphasis'] == null
          ? null
          : Map<String, dynamic>.from(json['iconEmphasis'] as Map)),
      border: border.copyWithJson(json['border'] == null
          ? null
          : Map<String, dynamic>.from(json['border'] as Map)),
      background: background.copyWithJson(json['background'] == null
          ? null
          : Map<String, dynamic>.from(json['background'] as Map)),
      floatingActionButton: floatingActionButton.copyWithJson(
          json['floatingActionButton'] == null
              ? null
              : Map<String, dynamic>.from(json['floatingActionButton'] as Map)),
      task: task.copyWithJson(json['task'] == null
          ? null
          : Map<String, dynamic>.from(json['task'] as Map)),
      form: form.copyWithJson(json['form'] == null
          ? null
          : Map<String, dynamic>.from(json['form'] as Map)),
      notification: notification.copyWithJson(json['notification'] == null
          ? null
          : Map<String, dynamic>.from(json['notification'] as Map)),
      projectTimeline: projectTimeline.copyWithJson(
          json['projectTimeline'] == null
              ? null
              : Map<String, dynamic>.from(json['projectTimeline'] as Map)),
      pin: pin.copyWithJson(json['pin'] == null
          ? null
          : Map<String, dynamic>.from(json['pin'] as Map)),
      hoverColor: json['hoverColor'] as Color?,
      appBarTheme: appBarTheme.copyWithJson(json['appBarTheme'] == null
          ? null
          : Map<String, dynamic>.from(json['appBarTheme'] as Map)),
      bottomAppBarTheme: bottomAppBarTheme.copyWithJson(
          json['bottomAppBarTheme'] == null
              ? null
              : Map<String, dynamic>.from(json['bottomAppBarTheme'] as Map)),
      tooltipTheme: _tooltipTheme.copyWithJson(json['tooltipTheme'] == null
          ? null
          : Map<String, dynamic>.from(json['tooltipTheme'] as Map)),
      popupMenuTheme: _popupMenuTheme.copyWithJson(
          json['popupMenuTheme'] == null
              ? null
              : Map<String, dynamic>.from(json['popupMenuTheme'] as Map)),
      dividerTheme: _dividerTheme.copyWithJson(json['dividerTheme'] == null
          ? null
          : Map<String, dynamic>.from(json['dividerTheme'] as Map)),
      selectedRowColor: json['selectedRowColor'] as Color?,
    );
  }

  /// Copy with yaml.
  ThemeColorPalette copyWithYaml([Map<String, dynamic>? yaml]) {
    if (yaml == null || yaml.isEmpty) {
      return this;
    }
    return copyWith(
      brightness: _BrightnessToString.fromString(yaml['brightness'] as String?),
      accentColor: _ColorToString.fromString(yaml['accentColor'] as String?),
      primaryColor: _ColorToString.fromString(yaml['primaryColor'] as String?),
      primaryColorLight:
          _ColorToString.fromString(yaml['primaryColorLight'] as String?),
      secondaryColor:
          _ColorToString.fromString(yaml['secondaryColor'] as String?),
      errorColor: _ColorToString.fromString(yaml['errorColor'] as String?),
      disabledColor:
          _ColorToString.fromString(yaml['disabledColor'] as String?),
      textEmphasis: textEmphasis.copyWithYaml(yaml['textEmphasis'] == null
          ? null
          : Map<String, dynamic>.from(yaml['textEmphasis'] as Map)),
      iconEmphasis: iconEmphasis.copyWithYaml(yaml['iconEmphasis'] == null
          ? null
          : Map<String, dynamic>.from(yaml['iconEmphasis'] as Map)),
      border: border.copyWithYaml(yaml['border'] == null
          ? null
          : Map<String, dynamic>.from(yaml['border'] as Map)),
      background: background.copyWithYaml(yaml['background'] == null
          ? null
          : Map<String, dynamic>.from(yaml['background'] as Map)),
      floatingActionButton: floatingActionButton.copyWithYaml(
          yaml['floatingActionButton'] == null
              ? null
              : Map<String, dynamic>.from(yaml['floatingActionButton'] as Map)),
      task: task.copyWithYaml(yaml['task'] == null
          ? null
          : Map<String, dynamic>.from(yaml['task'] as Map)),
      form: form.copyWithYaml(yaml['form'] == null
          ? null
          : Map<String, dynamic>.from(yaml['form'] as Map)),
      notification: notification.copyWithYaml(yaml['notification'] == null
          ? null
          : Map<String, dynamic>.from(yaml['notification'] as Map)),
      projectTimeline: projectTimeline.copyWithYaml(
          yaml['projectTimeline'] == null
              ? null
              : Map<String, dynamic>.from(yaml['projectTimeline'] as Map)),
      pin: pin.copyWithYaml(yaml['pin'] == null
          ? null
          : Map<String, dynamic>.from(yaml['pin'] as Map)),
      hoverColor: _ColorToString.fromString(yaml['hoverColor'] as String?),
      appBarTheme: appBarTheme.copyWithYaml(yaml['appBarTheme'] == null
          ? null
          : Map<String, dynamic>.from(yaml['appBarTheme'] as Map)),
      bottomAppBarTheme: bottomAppBarTheme.copyWithYaml(
          yaml['bottomAppBarTheme'] == null
              ? null
              : Map<String, dynamic>.from(yaml['bottomAppBarTheme'] as Map)),
      tooltipTheme: _tooltipTheme.copyWithYaml(yaml['tooltipTheme'] == null
          ? null
          : Map<String, dynamic>.from(yaml['tooltipTheme'] as Map)),
      popupMenuTheme: _popupMenuTheme.copyWithYaml(
          yaml['popupMenuTheme'] == null
              ? null
              : Map<String, dynamic>.from(yaml['popupMenuTheme'] as Map)),
      dividerTheme: _dividerTheme.copyWithYaml(yaml['dividerTheme'] == null
          ? null
          : Map<String, dynamic>.from(yaml['dividerTheme'] as Map)),
      selectedRowColor:
          _ColorToString.fromString(yaml['selectedRowColor'] as String?),
    );
  }

  /// To json.
  Map<String, dynamic> toJson() => {
        'brightness': _brightness,
        'accentColor': _accentColor,
        'primaryColor': _primaryColor,
        'primaryColorLight': _primaryColorLight,
        'secondaryColor': secondaryColor,
        'errorColor': _errorColor,
        'disabledColor': _disabledColor,
        'textEmphasis': textEmphasis.toJson(),
        'iconEmphasis': iconEmphasis.toJson(),
        'border': border.toJson(),
        'background': background.toJson(),
        'floatingActionButton': floatingActionButton.toJson(),
        'task': task.toJson(),
        'form': form.toJson(),
        'notification': notification.toJson(),
        'projectTimeline': projectTimeline.toJson(),
        'pin': pin.toJson(),
        'hoverColor': _hoverColor,
        'appBarTheme': appBarTheme.toJson(),
        'bottomAppBarTheme': bottomAppBarTheme.toJson(),
        'tooltipTheme': _tooltipTheme.toJson(),
        'popupMenuTheme': _popupMenuTheme.toJson(),
        'dividerTheme': _dividerTheme.toJson(),
        'selectedRowColor': _selectedRowColor,
      };

  /// To yaml.
  Map<String, dynamic> toYaml() => {
        'brightness': _brightness.name,
        'accentColor': _accentColor.stringValue,
        'primaryColor': _primaryColor.stringValue,
        'primaryColorLight': _primaryColorLight.stringValue,
        'secondaryColor': secondaryColor.stringValue,
        'errorColor': _errorColor.stringValue,
        'disabledColor': _disabledColor.stringValue,
        'textEmphasis': textEmphasis.toYaml(),
        'iconEmphasis': iconEmphasis.toYaml(),
        'border': border.toYaml(),
        'background': background.toYaml(),
        'floatingActionButton': floatingActionButton.toYaml(),
        'task': task.toYaml(),
        'form': form.toYaml(),
        'notification': notification.toYaml(),
        'projectTimeline': projectTimeline.toYaml(),
        'pin': pin.toYaml(),
        'hoverColor': _hoverColor.stringValue,
        'appBarTheme': appBarTheme.toYaml(),
        'bottomAppBarTheme': bottomAppBarTheme.toYaml(),
        'tooltipTheme': _tooltipTheme.toYaml(),
        'popupMenuTheme': _popupMenuTheme.toYaml(),
        'dividerTheme': _dividerTheme.toYaml(),
        'selectedRowColor': _selectedRowColor.stringValue,
      };

  @override
  ThemeColorPalette lerp(ThemeColorPalette other, double t) {
    return ThemeColorPalette(
      brightness: t < 0.5 ? this._brightness : other._brightness,
      accentColor: Color.lerp(this._accentColor, other._accentColor, t)!,
      primaryColor: Color.lerp(this._primaryColor, other._primaryColor, t)!,
      primaryColorLight:
          Color.lerp(this._primaryColorLight, other._primaryColorLight, t)!,
      secondaryColor: Color.lerp(this.secondaryColor, other.secondaryColor, t)!,
      errorColor: Color.lerp(this._errorColor, other._errorColor, t)!,
      disabledColor: Color.lerp(this._disabledColor, other._disabledColor, t)!,
      textEmphasis: this.textEmphasis.lerp(other.textEmphasis, t),
      iconEmphasis: this.iconEmphasis.lerp(other.iconEmphasis, t),
      border: this.border.lerp(other.border, t),
      background: this.background.lerp(other.background, t),
      floatingActionButton:
          this.floatingActionButton.lerp(other.floatingActionButton, t),
      task: this.task.lerp(other.task, t),
      form: this.form.lerp(other.form, t),
      notification: this.notification.lerp(other.notification, t),
      projectTimeline: this.projectTimeline.lerp(other.projectTimeline, t),
      pin: this.pin.lerp(other.pin, t),
      hoverColor: Color.lerp(this._hoverColor, other._hoverColor, t)!,
      appBarTheme: this.appBarTheme.lerp(other.appBarTheme, t),
      bottomAppBarTheme:
          this.bottomAppBarTheme.lerp(other.bottomAppBarTheme, t),
      tooltipTheme: this._tooltipTheme.lerp(other._tooltipTheme, t),
      popupMenuTheme: this._popupMenuTheme.lerp(other._popupMenuTheme, t),
      dividerTheme: this._dividerTheme.lerp(other._dividerTheme, t),
      selectedRowColor:
          Color.lerp(this._selectedRowColor, other._selectedRowColor, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ThemeColorPalette &&
        other.runtimeType == runtimeType &&
        other._brightness == _brightness &&
        other._accentColor == _accentColor &&
        other._primaryColor == _primaryColor &&
        other._primaryColorLight == _primaryColorLight &&
        other.secondaryColor == secondaryColor &&
        other._errorColor == _errorColor &&
        other._disabledColor == _disabledColor &&
        other.textEmphasis == textEmphasis &&
        other.iconEmphasis == iconEmphasis &&
        other.border == border &&
        other.background == background &&
        other.floatingActionButton == floatingActionButton &&
        other.task == task &&
        other.form == form &&
        other.notification == notification &&
        other.projectTimeline == projectTimeline &&
        other.pin == pin &&
        other._hoverColor == _hoverColor &&
        other.appBarTheme == appBarTheme &&
        other.bottomAppBarTheme == bottomAppBarTheme &&
        other._tooltipTheme == _tooltipTheme &&
        other._popupMenuTheme == _popupMenuTheme &&
        other._dividerTheme == _dividerTheme &&
        other._selectedRowColor == _selectedRowColor;
  }
}

// -------------------- ThemeColorPalette$TextEmphasis --------------------

/// The different text emphasis
class ThemeColorPalette$TextEmphasis
    extends ThemeExtension<ThemeColorPalette$TextEmphasis> {
  /// The different text emphasis
  const ThemeColorPalette$TextEmphasis({
    required Color accent,
    required this.success,
    required this.error,
    required this.high,
    required this.medium,
    required this.low,
    required this.disabled,
    required this.reversedMobile,
    required this.reversedWeb,
  }) : _accent = accent;

  /// The different text emphasis
  const ThemeColorPalette$TextEmphasis.light()
      : _accent = const Color(0xff2864ac),
        success = const Color(0xff7ec141),
        error = const Color(0xffe54d39),
        high = const Color(0xff000000),
        medium = const Color(0xde000000),
        low = const Color(0x99000000),
        disabled = const Color(0x99000000),
        reversedMobile =
            const ThemeColorPalette$TextEmphasis$ReversedMobile.light(),
        reversedWeb = const ThemeColorPalette$TextEmphasis$ReversedWeb.light();

  /// The different text emphasis
  const ThemeColorPalette$TextEmphasis.dark()
      : _accent = const Color(0xff699fcf),
        success = const Color(0xff7ec141),
        error = const Color(0xffe54d39),
        high = const Color(0xffffffff),
        medium = const Color(0xdeffffff),
        low = const Color(0x99ffffff),
        disabled = const Color(0x99ffffff),
        reversedMobile =
            const ThemeColorPalette$TextEmphasis$ReversedMobile.dark(),
        reversedWeb = const ThemeColorPalette$TextEmphasis$ReversedWeb.dark();

  /// The different text emphasis
  const ThemeColorPalette$TextEmphasis.darkCopy()
      : _accent = const Color(0xff699fcf),
        success = const Color(0xff7ec141),
        error = const Color(0xffe54d39),
        high = const Color(0xffffffff),
        medium = const Color(0xdeffffff),
        low = const Color(0x99ffffff),
        disabled = const Color(0x99ffffff),
        reversedMobile =
            const ThemeColorPalette$TextEmphasis$ReversedMobile.darkCopy(),
        reversedWeb =
            const ThemeColorPalette$TextEmphasis$ReversedWeb.darkCopy();

  /// From json.
  ThemeColorPalette$TextEmphasis.fromJson(Map<String, dynamic> json)
      : _accent = json['accent'] as Color,
        success = json['success'] as Color,
        error = json['error'] as Color,
        high = json['high'] as Color,
        medium = json['medium'] as Color,
        low = json['low'] as Color,
        disabled = json['disabled'] as Color,
        reversedMobile = ThemeColorPalette$TextEmphasis$ReversedMobile.fromJson(
            Map<String, dynamic>.from(json['reversedMobile'] as Map)),
        reversedWeb = ThemeColorPalette$TextEmphasis$ReversedWeb.fromJson(
            Map<String, dynamic>.from(json['reversedWeb'] as Map));

  /// From yaml.
  ThemeColorPalette$TextEmphasis.fromYaml(Map<String, dynamic> yaml)
      : _accent = _ColorToString.fromString(yaml['accent'] as String)!,
        success = _ColorToString.fromString(yaml['success'] as String)!,
        error = _ColorToString.fromString(yaml['error'] as String)!,
        high = _ColorToString.fromString(yaml['high'] as String)!,
        medium = _ColorToString.fromString(yaml['medium'] as String)!,
        low = _ColorToString.fromString(yaml['low'] as String)!,
        disabled = _ColorToString.fromString(yaml['disabled'] as String)!,
        reversedMobile = ThemeColorPalette$TextEmphasis$ReversedMobile.fromYaml(
            Map<String, dynamic>.from(yaml['reversedMobile'] as Map)),
        reversedWeb = ThemeColorPalette$TextEmphasis$ReversedWeb.fromYaml(
            Map<String, dynamic>.from(yaml['reversedWeb'] as Map));

  /// Accent color
  ///
  /// Use `theme.accentColor` instead.
  final Color _accent;

  /// Success Color
  final Color success;

  /// Error Color
  final Color error;

  /// High emphasis
  final Color high;

  /// Medium emphasis
  final Color medium;

  /// Low emphasis
  final Color low;

  /// Disabled emphasis
  final Color disabled;

  /// Reversed text emphasis
  final ThemeColorPalette$TextEmphasis$ReversedMobile reversedMobile;

  /// Reversed text emphasis
  final ThemeColorPalette$TextEmphasis$ReversedWeb reversedWeb;

  @override
  ThemeColorPalette$TextEmphasis copyWith({
    covariant Color? accent,
    covariant Color? success,
    covariant Color? error,
    covariant Color? high,
    covariant Color? medium,
    covariant Color? low,
    covariant Color? disabled,
    covariant ThemeColorPalette$TextEmphasis$ReversedMobile? reversedMobile,
    covariant ThemeColorPalette$TextEmphasis$ReversedWeb? reversedWeb,
  }) {
    return ThemeColorPalette$TextEmphasis(
      accent: accent ?? _accent,
      success: success ?? this.success,
      error: error ?? this.error,
      high: high ?? this.high,
      medium: medium ?? this.medium,
      low: low ?? this.low,
      disabled: disabled ?? this.disabled,
      reversedMobile: reversedMobile ?? this.reversedMobile,
      reversedWeb: reversedWeb ?? this.reversedWeb,
    );
  }

  /// Copy with json.
  ThemeColorPalette$TextEmphasis copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      accent: json['accent'] as Color?,
      success: json['success'] as Color?,
      error: json['error'] as Color?,
      high: json['high'] as Color?,
      medium: json['medium'] as Color?,
      low: json['low'] as Color?,
      disabled: json['disabled'] as Color?,
      reversedMobile: reversedMobile.copyWithJson(json['reversedMobile'] == null
          ? null
          : Map<String, dynamic>.from(json['reversedMobile'] as Map)),
      reversedWeb: reversedWeb.copyWithJson(json['reversedWeb'] == null
          ? null
          : Map<String, dynamic>.from(json['reversedWeb'] as Map)),
    );
  }

  /// Copy with yaml.
  ThemeColorPalette$TextEmphasis copyWithYaml([Map<String, dynamic>? yaml]) {
    if (yaml == null || yaml.isEmpty) {
      return this;
    }
    return copyWith(
      accent: _ColorToString.fromString(yaml['accent'] as String?),
      success: _ColorToString.fromString(yaml['success'] as String?),
      error: _ColorToString.fromString(yaml['error'] as String?),
      high: _ColorToString.fromString(yaml['high'] as String?),
      medium: _ColorToString.fromString(yaml['medium'] as String?),
      low: _ColorToString.fromString(yaml['low'] as String?),
      disabled: _ColorToString.fromString(yaml['disabled'] as String?),
      reversedMobile: reversedMobile.copyWithYaml(yaml['reversedMobile'] == null
          ? null
          : Map<String, dynamic>.from(yaml['reversedMobile'] as Map)),
      reversedWeb: reversedWeb.copyWithYaml(yaml['reversedWeb'] == null
          ? null
          : Map<String, dynamic>.from(yaml['reversedWeb'] as Map)),
    );
  }

  /// To json.
  Map<String, dynamic> toJson() => {
        'accent': _accent,
        'success': success,
        'error': error,
        'high': high,
        'medium': medium,
        'low': low,
        'disabled': disabled,
        'reversedMobile': reversedMobile.toJson(),
        'reversedWeb': reversedWeb.toJson(),
      };

  /// To yaml.
  Map<String, dynamic> toYaml() => {
        'accent': _accent.stringValue,
        'success': success.stringValue,
        'error': error.stringValue,
        'high': high.stringValue,
        'medium': medium.stringValue,
        'low': low.stringValue,
        'disabled': disabled.stringValue,
        'reversedMobile': reversedMobile.toYaml(),
        'reversedWeb': reversedWeb.toYaml(),
      };

  @override
  ThemeColorPalette$TextEmphasis lerp(
      ThemeColorPalette$TextEmphasis other, double t) {
    return ThemeColorPalette$TextEmphasis(
      accent: Color.lerp(this._accent, other._accent, t)!,
      success: Color.lerp(this.success, other.success, t)!,
      error: Color.lerp(this.error, other.error, t)!,
      high: Color.lerp(this.high, other.high, t)!,
      medium: Color.lerp(this.medium, other.medium, t)!,
      low: Color.lerp(this.low, other.low, t)!,
      disabled: Color.lerp(this.disabled, other.disabled, t)!,
      reversedMobile: this.reversedMobile.lerp(other.reversedMobile, t),
      reversedWeb: this.reversedWeb.lerp(other.reversedWeb, t),
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ThemeColorPalette$TextEmphasis &&
        other.runtimeType == runtimeType &&
        other._accent == _accent &&
        other.success == success &&
        other.error == error &&
        other.high == high &&
        other.medium == medium &&
        other.low == low &&
        other.disabled == disabled &&
        other.reversedMobile == reversedMobile &&
        other.reversedWeb == reversedWeb;
  }
}

// -------------------- ThemeColorPalette$TextEmphasis$ReversedMobile --------------------

/// Reversed text emphasis
class ThemeColorPalette$TextEmphasis$ReversedMobile
    extends ThemeExtension<ThemeColorPalette$TextEmphasis$ReversedMobile> {
  /// Reversed text emphasis
  const ThemeColorPalette$TextEmphasis$ReversedMobile({
    required this.high,
    required this.medium,
    required this.low,
    required this.disabled,
  });

  /// Reversed text emphasis
  const ThemeColorPalette$TextEmphasis$ReversedMobile.light()
      : high = const Color(0xffffffff),
        medium = const Color(0xdeffffff),
        low = const Color(0x99ffffff),
        disabled = const Color(0x99ffffff);

  /// Reversed text emphasis
  const ThemeColorPalette$TextEmphasis$ReversedMobile.dark()
      : high = const Color(0xff000000),
        medium = const Color(0xde000000),
        low = const Color(0x99000000),
        disabled = const Color(0x99000000);

  /// Reversed text emphasis
  const ThemeColorPalette$TextEmphasis$ReversedMobile.darkCopy()
      : high = const Color(0xff000000),
        medium = const Color(0xde000000),
        low = const Color(0x99000000),
        disabled = const Color(0x99000000);

  /// From json.
  ThemeColorPalette$TextEmphasis$ReversedMobile.fromJson(
      Map<String, dynamic> json)
      : high = json['high'] as Color,
        medium = json['medium'] as Color,
        low = json['low'] as Color,
        disabled = json['disabled'] as Color;

  /// From yaml.
  ThemeColorPalette$TextEmphasis$ReversedMobile.fromYaml(
      Map<String, dynamic> yaml)
      : high = _ColorToString.fromString(yaml['high'] as String)!,
        medium = _ColorToString.fromString(yaml['medium'] as String)!,
        low = _ColorToString.fromString(yaml['low'] as String)!,
        disabled = _ColorToString.fromString(yaml['disabled'] as String)!;

  /// Reversed high emphasis
  final Color high;

  /// Reversed medium emphasis
  final Color medium;

  /// Reversed low emphasis
  final Color low;

  /// Reversed disabled emphasis
  final Color disabled;

  @override
  ThemeColorPalette$TextEmphasis$ReversedMobile copyWith({
    covariant Color? high,
    covariant Color? medium,
    covariant Color? low,
    covariant Color? disabled,
  }) {
    return ThemeColorPalette$TextEmphasis$ReversedMobile(
      high: high ?? this.high,
      medium: medium ?? this.medium,
      low: low ?? this.low,
      disabled: disabled ?? this.disabled,
    );
  }

  /// Copy with json.
  ThemeColorPalette$TextEmphasis$ReversedMobile copyWithJson(
      [Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      high: json['high'] as Color?,
      medium: json['medium'] as Color?,
      low: json['low'] as Color?,
      disabled: json['disabled'] as Color?,
    );
  }

  /// Copy with yaml.
  ThemeColorPalette$TextEmphasis$ReversedMobile copyWithYaml(
      [Map<String, dynamic>? yaml]) {
    if (yaml == null || yaml.isEmpty) {
      return this;
    }
    return copyWith(
      high: _ColorToString.fromString(yaml['high'] as String?),
      medium: _ColorToString.fromString(yaml['medium'] as String?),
      low: _ColorToString.fromString(yaml['low'] as String?),
      disabled: _ColorToString.fromString(yaml['disabled'] as String?),
    );
  }

  /// To json.
  Map<String, dynamic> toJson() => {
        'high': high,
        'medium': medium,
        'low': low,
        'disabled': disabled,
      };

  /// To yaml.
  Map<String, dynamic> toYaml() => {
        'high': high.stringValue,
        'medium': medium.stringValue,
        'low': low.stringValue,
        'disabled': disabled.stringValue,
      };

  @override
  ThemeColorPalette$TextEmphasis$ReversedMobile lerp(
      ThemeColorPalette$TextEmphasis$ReversedMobile other, double t) {
    return ThemeColorPalette$TextEmphasis$ReversedMobile(
      high: Color.lerp(this.high, other.high, t)!,
      medium: Color.lerp(this.medium, other.medium, t)!,
      low: Color.lerp(this.low, other.low, t)!,
      disabled: Color.lerp(this.disabled, other.disabled, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ThemeColorPalette$TextEmphasis$ReversedMobile &&
        other.runtimeType == runtimeType &&
        other.high == high &&
        other.medium == medium &&
        other.low == low &&
        other.disabled == disabled;
  }
}

// -------------------- ThemeColorPalette$TextEmphasis$ReversedWeb --------------------

/// Reversed text emphasis
class ThemeColorPalette$TextEmphasis$ReversedWeb
    extends ThemeExtension<ThemeColorPalette$TextEmphasis$ReversedWeb> {
  /// Reversed text emphasis
  const ThemeColorPalette$TextEmphasis$ReversedWeb({
    required this.high,
    required this.medium,
    required this.low,
    required this.disabled,
  });

  /// Reversed text emphasis
  const ThemeColorPalette$TextEmphasis$ReversedWeb.light()
      : high = const Color(0xffffffff),
        medium = const Color(0xdeffffff),
        low = const Color(0x99ffffff),
        disabled = const Color(0x99ffffff);

  /// Reversed text emphasis
  const ThemeColorPalette$TextEmphasis$ReversedWeb.dark()
      : high = const Color(0xff000000),
        medium = const Color(0xde000000),
        low = const Color(0x99000000),
        disabled = const Color(0x99000000);

  /// Reversed text emphasis
  const ThemeColorPalette$TextEmphasis$ReversedWeb.darkCopy()
      : high = const Color(0xff000000),
        medium = const Color(0xde000000),
        low = const Color(0x99000000),
        disabled = const Color(0x99000000);

  /// From json.
  ThemeColorPalette$TextEmphasis$ReversedWeb.fromJson(Map<String, dynamic> json)
      : high = json['high'] as Color,
        medium = json['medium'] as Color,
        low = json['low'] as Color,
        disabled = json['disabled'] as Color;

  /// From yaml.
  ThemeColorPalette$TextEmphasis$ReversedWeb.fromYaml(Map<String, dynamic> yaml)
      : high = _ColorToString.fromString(yaml['high'] as String)!,
        medium = _ColorToString.fromString(yaml['medium'] as String)!,
        low = _ColorToString.fromString(yaml['low'] as String)!,
        disabled = _ColorToString.fromString(yaml['disabled'] as String)!;

  /// Reversed high emphasis
  final Color high;

  /// Reversed medium emphasis
  final Color medium;

  /// Reversed low emphasis
  final Color low;

  /// Reversed disabled emphasis
  final Color disabled;

  @override
  ThemeColorPalette$TextEmphasis$ReversedWeb copyWith({
    covariant Color? high,
    covariant Color? medium,
    covariant Color? low,
    covariant Color? disabled,
  }) {
    return ThemeColorPalette$TextEmphasis$ReversedWeb(
      high: high ?? this.high,
      medium: medium ?? this.medium,
      low: low ?? this.low,
      disabled: disabled ?? this.disabled,
    );
  }

  /// Copy with json.
  ThemeColorPalette$TextEmphasis$ReversedWeb copyWithJson(
      [Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      high: json['high'] as Color?,
      medium: json['medium'] as Color?,
      low: json['low'] as Color?,
      disabled: json['disabled'] as Color?,
    );
  }

  /// Copy with yaml.
  ThemeColorPalette$TextEmphasis$ReversedWeb copyWithYaml(
      [Map<String, dynamic>? yaml]) {
    if (yaml == null || yaml.isEmpty) {
      return this;
    }
    return copyWith(
      high: _ColorToString.fromString(yaml['high'] as String?),
      medium: _ColorToString.fromString(yaml['medium'] as String?),
      low: _ColorToString.fromString(yaml['low'] as String?),
      disabled: _ColorToString.fromString(yaml['disabled'] as String?),
    );
  }

  /// To json.
  Map<String, dynamic> toJson() => {
        'high': high,
        'medium': medium,
        'low': low,
        'disabled': disabled,
      };

  /// To yaml.
  Map<String, dynamic> toYaml() => {
        'high': high.stringValue,
        'medium': medium.stringValue,
        'low': low.stringValue,
        'disabled': disabled.stringValue,
      };

  @override
  ThemeColorPalette$TextEmphasis$ReversedWeb lerp(
      ThemeColorPalette$TextEmphasis$ReversedWeb other, double t) {
    return ThemeColorPalette$TextEmphasis$ReversedWeb(
      high: Color.lerp(this.high, other.high, t)!,
      medium: Color.lerp(this.medium, other.medium, t)!,
      low: Color.lerp(this.low, other.low, t)!,
      disabled: Color.lerp(this.disabled, other.disabled, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ThemeColorPalette$TextEmphasis$ReversedWeb &&
        other.runtimeType == runtimeType &&
        other.high == high &&
        other.medium == medium &&
        other.low == low &&
        other.disabled == disabled;
  }
}

// -------------------- ThemeColorPalette$IconEmphasis --------------------

/// The different icon emphasis
class ThemeColorPalette$IconEmphasis
    extends ThemeExtension<ThemeColorPalette$IconEmphasis> {
  /// The different icon emphasis
  const ThemeColorPalette$IconEmphasis({
    required this.high,
    required this.medium,
    required this.low,
    required this.disabled,
    required this.reversed,
  });

  /// The different icon emphasis
  const ThemeColorPalette$IconEmphasis.light()
      : high = const Color(0xff000000),
        medium = const Color(0xde000000),
        low = const Color(0x99000000),
        disabled = const Color(0x99000000),
        reversed = const ThemeColorPalette$IconEmphasis$Reversed.light();

  /// The different icon emphasis
  const ThemeColorPalette$IconEmphasis.dark()
      : high = const Color(0xffffffff),
        medium = const Color(0xdeffffff),
        low = const Color(0x99ffffff),
        disabled = const Color(0x99ffffff),
        reversed = const ThemeColorPalette$IconEmphasis$Reversed.dark();

  /// The different icon emphasis
  const ThemeColorPalette$IconEmphasis.darkCopy()
      : high = const Color(0xffffffff),
        medium = const Color(0xdeffffff),
        low = const Color(0x99ffffff),
        disabled = const Color(0x99ffffff),
        reversed = const ThemeColorPalette$IconEmphasis$Reversed.darkCopy();

  /// From json.
  ThemeColorPalette$IconEmphasis.fromJson(Map<String, dynamic> json)
      : high = json['high'] as Color,
        medium = json['medium'] as Color,
        low = json['low'] as Color,
        disabled = json['disabled'] as Color,
        reversed = ThemeColorPalette$IconEmphasis$Reversed.fromJson(
            Map<String, dynamic>.from(json['reversed'] as Map));

  /// From yaml.
  ThemeColorPalette$IconEmphasis.fromYaml(Map<String, dynamic> yaml)
      : high = _ColorToString.fromString(yaml['high'] as String)!,
        medium = _ColorToString.fromString(yaml['medium'] as String)!,
        low = _ColorToString.fromString(yaml['low'] as String)!,
        disabled = _ColorToString.fromString(yaml['disabled'] as String)!,
        reversed = ThemeColorPalette$IconEmphasis$Reversed.fromYaml(
            Map<String, dynamic>.from(yaml['reversed'] as Map));

  /// High emphasis
  final Color high;

  /// Medium emphasis
  final Color medium;

  /// Low emphasis
  final Color low;

  /// Disabled emphasis
  final Color disabled;

  /// Reversed icon emphasis
  final ThemeColorPalette$IconEmphasis$Reversed reversed;

  @override
  ThemeColorPalette$IconEmphasis copyWith({
    covariant Color? high,
    covariant Color? medium,
    covariant Color? low,
    covariant Color? disabled,
    covariant ThemeColorPalette$IconEmphasis$Reversed? reversed,
  }) {
    return ThemeColorPalette$IconEmphasis(
      high: high ?? this.high,
      medium: medium ?? this.medium,
      low: low ?? this.low,
      disabled: disabled ?? this.disabled,
      reversed: reversed ?? this.reversed,
    );
  }

  /// Copy with json.
  ThemeColorPalette$IconEmphasis copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      high: json['high'] as Color?,
      medium: json['medium'] as Color?,
      low: json['low'] as Color?,
      disabled: json['disabled'] as Color?,
      reversed: reversed.copyWithJson(json['reversed'] == null
          ? null
          : Map<String, dynamic>.from(json['reversed'] as Map)),
    );
  }

  /// Copy with yaml.
  ThemeColorPalette$IconEmphasis copyWithYaml([Map<String, dynamic>? yaml]) {
    if (yaml == null || yaml.isEmpty) {
      return this;
    }
    return copyWith(
      high: _ColorToString.fromString(yaml['high'] as String?),
      medium: _ColorToString.fromString(yaml['medium'] as String?),
      low: _ColorToString.fromString(yaml['low'] as String?),
      disabled: _ColorToString.fromString(yaml['disabled'] as String?),
      reversed: reversed.copyWithYaml(yaml['reversed'] == null
          ? null
          : Map<String, dynamic>.from(yaml['reversed'] as Map)),
    );
  }

  /// To json.
  Map<String, dynamic> toJson() => {
        'high': high,
        'medium': medium,
        'low': low,
        'disabled': disabled,
        'reversed': reversed.toJson(),
      };

  /// To yaml.
  Map<String, dynamic> toYaml() => {
        'high': high.stringValue,
        'medium': medium.stringValue,
        'low': low.stringValue,
        'disabled': disabled.stringValue,
        'reversed': reversed.toYaml(),
      };

  @override
  ThemeColorPalette$IconEmphasis lerp(
      ThemeColorPalette$IconEmphasis other, double t) {
    return ThemeColorPalette$IconEmphasis(
      high: Color.lerp(this.high, other.high, t)!,
      medium: Color.lerp(this.medium, other.medium, t)!,
      low: Color.lerp(this.low, other.low, t)!,
      disabled: Color.lerp(this.disabled, other.disabled, t)!,
      reversed: this.reversed.lerp(other.reversed, t),
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ThemeColorPalette$IconEmphasis &&
        other.runtimeType == runtimeType &&
        other.high == high &&
        other.medium == medium &&
        other.low == low &&
        other.disabled == disabled &&
        other.reversed == reversed;
  }
}

// -------------------- ThemeColorPalette$IconEmphasis$Reversed --------------------

/// Reversed icon emphasis
class ThemeColorPalette$IconEmphasis$Reversed
    extends ThemeExtension<ThemeColorPalette$IconEmphasis$Reversed> {
  /// Reversed icon emphasis
  const ThemeColorPalette$IconEmphasis$Reversed({
    required this.high,
    required this.medium,
    required this.low,
    required this.disabled,
  });

  /// Reversed icon emphasis
  const ThemeColorPalette$IconEmphasis$Reversed.light()
      : high = const Color(0xffffffff),
        medium = const Color(0xdeffffff),
        low = const Color(0x99ffffff),
        disabled = const Color(0x99ffffff);

  /// Reversed icon emphasis
  const ThemeColorPalette$IconEmphasis$Reversed.dark()
      : high = const Color(0xff000000),
        medium = const Color(0xde000000),
        low = const Color(0x99000000),
        disabled = const Color(0x99000000);

  /// Reversed icon emphasis
  const ThemeColorPalette$IconEmphasis$Reversed.darkCopy()
      : high = const Color(0xff000000),
        medium = const Color(0xde000000),
        low = const Color(0x99000000),
        disabled = const Color(0x99000000);

  /// From json.
  ThemeColorPalette$IconEmphasis$Reversed.fromJson(Map<String, dynamic> json)
      : high = json['high'] as Color,
        medium = json['medium'] as Color,
        low = json['low'] as Color,
        disabled = json['disabled'] as Color;

  /// From yaml.
  ThemeColorPalette$IconEmphasis$Reversed.fromYaml(Map<String, dynamic> yaml)
      : high = _ColorToString.fromString(yaml['high'] as String)!,
        medium = _ColorToString.fromString(yaml['medium'] as String)!,
        low = _ColorToString.fromString(yaml['low'] as String)!,
        disabled = _ColorToString.fromString(yaml['disabled'] as String)!;

  /// Reversed high emphasis
  final Color high;

  /// Reversed medium emphasis
  final Color medium;

  /// Reversed low emphasis
  final Color low;

  /// Reversed disabled emphasis
  final Color disabled;

  @override
  ThemeColorPalette$IconEmphasis$Reversed copyWith({
    covariant Color? high,
    covariant Color? medium,
    covariant Color? low,
    covariant Color? disabled,
  }) {
    return ThemeColorPalette$IconEmphasis$Reversed(
      high: high ?? this.high,
      medium: medium ?? this.medium,
      low: low ?? this.low,
      disabled: disabled ?? this.disabled,
    );
  }

  /// Copy with json.
  ThemeColorPalette$IconEmphasis$Reversed copyWithJson(
      [Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      high: json['high'] as Color?,
      medium: json['medium'] as Color?,
      low: json['low'] as Color?,
      disabled: json['disabled'] as Color?,
    );
  }

  /// Copy with yaml.
  ThemeColorPalette$IconEmphasis$Reversed copyWithYaml(
      [Map<String, dynamic>? yaml]) {
    if (yaml == null || yaml.isEmpty) {
      return this;
    }
    return copyWith(
      high: _ColorToString.fromString(yaml['high'] as String?),
      medium: _ColorToString.fromString(yaml['medium'] as String?),
      low: _ColorToString.fromString(yaml['low'] as String?),
      disabled: _ColorToString.fromString(yaml['disabled'] as String?),
    );
  }

  /// To json.
  Map<String, dynamic> toJson() => {
        'high': high,
        'medium': medium,
        'low': low,
        'disabled': disabled,
      };

  /// To yaml.
  Map<String, dynamic> toYaml() => {
        'high': high.stringValue,
        'medium': medium.stringValue,
        'low': low.stringValue,
        'disabled': disabled.stringValue,
      };

  @override
  ThemeColorPalette$IconEmphasis$Reversed lerp(
      ThemeColorPalette$IconEmphasis$Reversed other, double t) {
    return ThemeColorPalette$IconEmphasis$Reversed(
      high: Color.lerp(this.high, other.high, t)!,
      medium: Color.lerp(this.medium, other.medium, t)!,
      low: Color.lerp(this.low, other.low, t)!,
      disabled: Color.lerp(this.disabled, other.disabled, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ThemeColorPalette$IconEmphasis$Reversed &&
        other.runtimeType == runtimeType &&
        other.high == high &&
        other.medium == medium &&
        other.low == low &&
        other.disabled == disabled;
  }
}

// -------------------- ThemeColorPalette$Border --------------------

/// Borders
class ThemeColorPalette$Border
    extends ThemeExtension<ThemeColorPalette$Border> {
  /// Borders
  const ThemeColorPalette$Border({
    required this.high,
    required this.medium,
    required Color divider,
  }) : _divider = divider;

  /// Borders
  const ThemeColorPalette$Border.light()
      : high = const Color(0xff5c5c5c),
        medium = const Color(0xffe0e0e0),
        _divider = const Color(0x0a000000);

  /// Borders
  const ThemeColorPalette$Border.dark()
      : high = const Color(0xfff5f5f5),
        medium = const Color(0xff474747),
        _divider = const Color(0xff434343);

  /// Borders
  const ThemeColorPalette$Border.darkCopy()
      : high = const Color(0xfff5f5f5),
        medium = const Color(0xff474747),
        _divider = const Color(0xff434343);

  /// From json.
  ThemeColorPalette$Border.fromJson(Map<String, dynamic> json)
      : high = json['high'] as Color,
        medium = json['medium'] as Color,
        _divider = json['divider'] as Color;

  /// From yaml.
  ThemeColorPalette$Border.fromYaml(Map<String, dynamic> yaml)
      : high = _ColorToString.fromString(yaml['high'] as String)!,
        medium = _ColorToString.fromString(yaml['medium'] as String)!,
        _divider = _ColorToString.fromString(yaml['divider'] as String)!;

  /// High border
  final Color high;

  /// Medium border
  final Color medium;

  /// Color for the Dividers
  ///
  /// Use `theme.dividerColor` instead.
  final Color _divider;

  @override
  ThemeColorPalette$Border copyWith({
    covariant Color? high,
    covariant Color? medium,
    covariant Color? divider,
  }) {
    return ThemeColorPalette$Border(
      high: high ?? this.high,
      medium: medium ?? this.medium,
      divider: divider ?? _divider,
    );
  }

  /// Copy with json.
  ThemeColorPalette$Border copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      high: json['high'] as Color?,
      medium: json['medium'] as Color?,
      divider: json['divider'] as Color?,
    );
  }

  /// Copy with yaml.
  ThemeColorPalette$Border copyWithYaml([Map<String, dynamic>? yaml]) {
    if (yaml == null || yaml.isEmpty) {
      return this;
    }
    return copyWith(
      high: _ColorToString.fromString(yaml['high'] as String?),
      medium: _ColorToString.fromString(yaml['medium'] as String?),
      divider: _ColorToString.fromString(yaml['divider'] as String?),
    );
  }

  /// To json.
  Map<String, dynamic> toJson() => {
        'high': high,
        'medium': medium,
        'divider': _divider,
      };

  /// To yaml.
  Map<String, dynamic> toYaml() => {
        'high': high.stringValue,
        'medium': medium.stringValue,
        'divider': _divider.stringValue,
      };

  @override
  ThemeColorPalette$Border lerp(ThemeColorPalette$Border other, double t) {
    return ThemeColorPalette$Border(
      high: Color.lerp(this.high, other.high, t)!,
      medium: Color.lerp(this.medium, other.medium, t)!,
      divider: Color.lerp(this._divider, other._divider, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ThemeColorPalette$Border &&
        other.runtimeType == runtimeType &&
        other.high == high &&
        other.medium == medium &&
        other._divider == _divider;
  }
}

// -------------------- ThemeColorPalette$Background --------------------

/// Backgrounds
class ThemeColorPalette$Background
    extends ThemeExtension<ThemeColorPalette$Background> {
  /// Backgrounds
  const ThemeColorPalette$Background({
    required this.disabled,
    required Color backgroundColor,
    required this.background1,
    required Color scaffold,
    required Color canvas,
    required Color card,
  })  : _backgroundColor = backgroundColor,
        _scaffold = scaffold,
        _canvas = canvas,
        _card = card;

  /// Backgrounds
  const ThemeColorPalette$Background.light()
      : disabled = const Color(0xfff8f8f8),
        _backgroundColor = const Color(0xfff8f8f8),
        background1 = const Color(0xfff6f9fc),
        _scaffold = const Color(0xfff3f2ef),
        _canvas = const Color(0xfff8f8f8),
        _card = const Color(0xffffffff);

  /// Backgrounds
  const ThemeColorPalette$Background.dark()
      : disabled = const Color(0xff121212),
        _backgroundColor = const Color(0xff000000),
        background1 = const Color(0xff2e2e2e),
        _scaffold = const Color(0xff121212),
        _canvas = const Color(0xfff8f8f8),
        _card = const Color(0xff1e1e1e);

  /// Backgrounds
  const ThemeColorPalette$Background.darkCopy()
      : disabled = const Color(0xff121212),
        _backgroundColor = const Color(0xff000000),
        background1 = const Color(0xff2e2e2e),
        _scaffold = const Color(0xff121212),
        _canvas = const Color(0xfff8f8f8),
        _card = const Color(0xff1e1e1e);

  /// From json.
  ThemeColorPalette$Background.fromJson(Map<String, dynamic> json)
      : disabled = json['disabled'] as Color,
        _backgroundColor = json['backgroundColor'] as Color,
        background1 = json['background1'] as Color,
        _scaffold = json['scaffold'] as Color,
        _canvas = json['canvas'] as Color,
        _card = json['card'] as Color;

  /// From yaml.
  ThemeColorPalette$Background.fromYaml(Map<String, dynamic> yaml)
      : disabled = _ColorToString.fromString(yaml['disabled'] as String)!,
        _backgroundColor =
            _ColorToString.fromString(yaml['backgroundColor'] as String)!,
        background1 = _ColorToString.fromString(yaml['background1'] as String)!,
        _scaffold = _ColorToString.fromString(yaml['scaffold'] as String)!,
        _canvas = _ColorToString.fromString(yaml['canvas'] as String)!,
        _card = _ColorToString.fromString(yaml['card'] as String)!;

  /// Disabled background
  final Color disabled;

  /// Background color
  ///
  /// Use `theme.backgroundColor` instead.
  final Color _backgroundColor;

  /// Background 1
  final Color background1;

  /// Scaffold background color
  ///
  /// Use `theme.scaffoldBackgroundColor` instead.
  final Color _scaffold;

  /// Canvas background color
  ///
  /// Use `theme.canvasColor` instead.
  final Color _canvas;

  /// Card Color
  ///
  /// Use `theme.cardColor` instead.
  final Color _card;

  @override
  ThemeColorPalette$Background copyWith({
    covariant Color? disabled,
    covariant Color? backgroundColor,
    covariant Color? background1,
    covariant Color? scaffold,
    covariant Color? canvas,
    covariant Color? card,
  }) {
    return ThemeColorPalette$Background(
      disabled: disabled ?? this.disabled,
      backgroundColor: backgroundColor ?? _backgroundColor,
      background1: background1 ?? this.background1,
      scaffold: scaffold ?? _scaffold,
      canvas: canvas ?? _canvas,
      card: card ?? _card,
    );
  }

  /// Copy with json.
  ThemeColorPalette$Background copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      disabled: json['disabled'] as Color?,
      backgroundColor: json['backgroundColor'] as Color?,
      background1: json['background1'] as Color?,
      scaffold: json['scaffold'] as Color?,
      canvas: json['canvas'] as Color?,
      card: json['card'] as Color?,
    );
  }

  /// Copy with yaml.
  ThemeColorPalette$Background copyWithYaml([Map<String, dynamic>? yaml]) {
    if (yaml == null || yaml.isEmpty) {
      return this;
    }
    return copyWith(
      disabled: _ColorToString.fromString(yaml['disabled'] as String?),
      backgroundColor:
          _ColorToString.fromString(yaml['backgroundColor'] as String?),
      background1: _ColorToString.fromString(yaml['background1'] as String?),
      scaffold: _ColorToString.fromString(yaml['scaffold'] as String?),
      canvas: _ColorToString.fromString(yaml['canvas'] as String?),
      card: _ColorToString.fromString(yaml['card'] as String?),
    );
  }

  /// To json.
  Map<String, dynamic> toJson() => {
        'disabled': disabled,
        'backgroundColor': _backgroundColor,
        'background1': background1,
        'scaffold': _scaffold,
        'canvas': _canvas,
        'card': _card,
      };

  /// To yaml.
  Map<String, dynamic> toYaml() => {
        'disabled': disabled.stringValue,
        'backgroundColor': _backgroundColor.stringValue,
        'background1': background1.stringValue,
        'scaffold': _scaffold.stringValue,
        'canvas': _canvas.stringValue,
        'card': _card.stringValue,
      };

  @override
  ThemeColorPalette$Background lerp(
      ThemeColorPalette$Background other, double t) {
    return ThemeColorPalette$Background(
      disabled: Color.lerp(this.disabled, other.disabled, t)!,
      backgroundColor:
          Color.lerp(this._backgroundColor, other._backgroundColor, t)!,
      background1: Color.lerp(this.background1, other.background1, t)!,
      scaffold: Color.lerp(this._scaffold, other._scaffold, t)!,
      canvas: Color.lerp(this._canvas, other._canvas, t)!,
      card: Color.lerp(this._card, other._card, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ThemeColorPalette$Background &&
        other.runtimeType == runtimeType &&
        other.disabled == disabled &&
        other._backgroundColor == _backgroundColor &&
        other.background1 == background1 &&
        other._scaffold == _scaffold &&
        other._canvas == _canvas &&
        other._card == _card;
  }
}

// -------------------- ThemeColorPalette$FloatingActionButton --------------------

/// Floating action button
class ThemeColorPalette$FloatingActionButton
    extends ThemeExtension<ThemeColorPalette$FloatingActionButton> {
  /// Floating action button
  const ThemeColorPalette$FloatingActionButton({
    required this.disabledColor,
    required Color backgroundColor,
    required Color foregroundColor,
    required double disabledElevation,
  })  : _backgroundColor = backgroundColor,
        _foregroundColor = foregroundColor,
        _disabledElevation = disabledElevation;

  /// Floating action button
  const ThemeColorPalette$FloatingActionButton.light()
      : disabledColor = const Color(0xffadc4df),
        _backgroundColor = const Color(0xff2864ac),
        _foregroundColor = const Color(0xffffffff),
        _disabledElevation = 0.0;

  /// Floating action button
  const ThemeColorPalette$FloatingActionButton.dark()
      : disabledColor = const Color(0xff225281),
        _backgroundColor = const Color(0xff699fcf),
        _foregroundColor = const Color(0xff000000),
        _disabledElevation = 0.0;

  /// Floating action button
  const ThemeColorPalette$FloatingActionButton.darkCopy()
      : disabledColor = const Color(0xff225281),
        _backgroundColor = const Color(0xff699fcf),
        _foregroundColor = const Color(0xff000000),
        _disabledElevation = 0.0;

  /// From json.
  ThemeColorPalette$FloatingActionButton.fromJson(Map<String, dynamic> json)
      : disabledColor = json['disabledColor'] as Color,
        _backgroundColor = json['backgroundColor'] as Color,
        _foregroundColor = json['foregroundColor'] as Color,
        _disabledElevation = json['disabledElevation'] as double;

  /// From yaml.
  ThemeColorPalette$FloatingActionButton.fromYaml(Map<String, dynamic> yaml)
      : disabledColor =
            _ColorToString.fromString(yaml['disabledColor'] as String)!,
        _backgroundColor =
            _ColorToString.fromString(yaml['backgroundColor'] as String)!,
        _foregroundColor =
            _ColorToString.fromString(yaml['foregroundColor'] as String)!,
        _disabledElevation = yaml['disabledElevation'] as double;

  /// Disabled color
  final Color disabledColor;

  /// Background color of the floating action button
  ///
  /// Use `theme.floatingActionButtonTheme.backgroundColor` instead.
  final Color _backgroundColor;

  /// Icon color of the floating action button
  ///
  /// Use `theme.floatingActionButtonTheme.foregroundColor` instead.
  final Color _foregroundColor;

  /// Disabled elevation of the floating action button
  ///
  /// Use `theme.floatingActionButtonTheme.disabledElevation` instead.
  final double _disabledElevation;

  @override
  ThemeColorPalette$FloatingActionButton copyWith({
    covariant Color? disabledColor,
    covariant Color? backgroundColor,
    covariant Color? foregroundColor,
    covariant double? disabledElevation,
  }) {
    return ThemeColorPalette$FloatingActionButton(
      disabledColor: disabledColor ?? this.disabledColor,
      backgroundColor: backgroundColor ?? _backgroundColor,
      foregroundColor: foregroundColor ?? _foregroundColor,
      disabledElevation: disabledElevation ?? _disabledElevation,
    );
  }

  /// Copy with json.
  ThemeColorPalette$FloatingActionButton copyWithJson(
      [Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      disabledColor: json['disabledColor'] as Color?,
      backgroundColor: json['backgroundColor'] as Color?,
      foregroundColor: json['foregroundColor'] as Color?,
      disabledElevation: json['disabledElevation'] as double?,
    );
  }

  /// Copy with yaml.
  ThemeColorPalette$FloatingActionButton copyWithYaml(
      [Map<String, dynamic>? yaml]) {
    if (yaml == null || yaml.isEmpty) {
      return this;
    }
    return copyWith(
      disabledColor:
          _ColorToString.fromString(yaml['disabledColor'] as String?),
      backgroundColor:
          _ColorToString.fromString(yaml['backgroundColor'] as String?),
      foregroundColor:
          _ColorToString.fromString(yaml['foregroundColor'] as String?),
      disabledElevation: yaml['disabledElevation'] as double?,
    );
  }

  /// To json.
  Map<String, dynamic> toJson() => {
        'disabledColor': disabledColor,
        'backgroundColor': _backgroundColor,
        'foregroundColor': _foregroundColor,
        'disabledElevation': _disabledElevation,
      };

  /// To yaml.
  Map<String, dynamic> toYaml() => {
        'disabledColor': disabledColor.stringValue,
        'backgroundColor': _backgroundColor.stringValue,
        'foregroundColor': _foregroundColor.stringValue,
        'disabledElevation': _disabledElevation,
      };

  @override
  ThemeColorPalette$FloatingActionButton lerp(
      ThemeColorPalette$FloatingActionButton other, double t) {
    return ThemeColorPalette$FloatingActionButton(
      disabledColor: Color.lerp(this.disabledColor, other.disabledColor, t)!,
      backgroundColor:
          Color.lerp(this._backgroundColor, other._backgroundColor, t)!,
      foregroundColor:
          Color.lerp(this._foregroundColor, other._foregroundColor, t)!,
      disabledElevation:
          lerpDouble(this._disabledElevation, other._disabledElevation, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ThemeColorPalette$FloatingActionButton &&
        other.runtimeType == runtimeType &&
        other.disabledColor == disabledColor &&
        other._backgroundColor == _backgroundColor &&
        other._foregroundColor == _foregroundColor &&
        other._disabledElevation == _disabledElevation;
  }
}

// -------------------- ThemeColorPalette$Task --------------------

/// Task color palette
class ThemeColorPalette$Task extends ThemeExtension<ThemeColorPalette$Task> {
  /// Task color palette
  const ThemeColorPalette$Task({
    required this.notStarted,
    required this.workInProgress,
    required this.completed,
  });

  /// Task color palette
  const ThemeColorPalette$Task.light()
      : notStarted = const Color(0xffed6e19),
        workInProgress = const Color(0xffeaa60f),
        completed = const Color(0xff81bf48);

  /// Task color palette
  const ThemeColorPalette$Task.dark()
      : notStarted = const Color(0xffed6e19),
        workInProgress = const Color(0xffeaa60f),
        completed = const Color(0xff81bf48);

  /// Task color palette
  const ThemeColorPalette$Task.darkCopy()
      : notStarted = const Color(0xffed6e19),
        workInProgress = const Color(0xffeaa60f),
        completed = const Color(0xff81bf48);

  /// From json.
  ThemeColorPalette$Task.fromJson(Map<String, dynamic> json)
      : notStarted = json['notStarted'] as Color,
        workInProgress = json['workInProgress'] as Color,
        completed = json['completed'] as Color;

  /// From yaml.
  ThemeColorPalette$Task.fromYaml(Map<String, dynamic> yaml)
      : notStarted = _ColorToString.fromString(yaml['notStarted'] as String)!,
        workInProgress =
            _ColorToString.fromString(yaml['workInProgress'] as String)!,
        completed = _ColorToString.fromString(yaml['completed'] as String)!;

  /// Not started color
  final Color notStarted;

  /// Work in progress color
  final Color workInProgress;

  /// Completed color
  final Color completed;

  @override
  ThemeColorPalette$Task copyWith({
    covariant Color? notStarted,
    covariant Color? workInProgress,
    covariant Color? completed,
  }) {
    return ThemeColorPalette$Task(
      notStarted: notStarted ?? this.notStarted,
      workInProgress: workInProgress ?? this.workInProgress,
      completed: completed ?? this.completed,
    );
  }

  /// Copy with json.
  ThemeColorPalette$Task copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      notStarted: json['notStarted'] as Color?,
      workInProgress: json['workInProgress'] as Color?,
      completed: json['completed'] as Color?,
    );
  }

  /// Copy with yaml.
  ThemeColorPalette$Task copyWithYaml([Map<String, dynamic>? yaml]) {
    if (yaml == null || yaml.isEmpty) {
      return this;
    }
    return copyWith(
      notStarted: _ColorToString.fromString(yaml['notStarted'] as String?),
      workInProgress:
          _ColorToString.fromString(yaml['workInProgress'] as String?),
      completed: _ColorToString.fromString(yaml['completed'] as String?),
    );
  }

  /// To json.
  Map<String, dynamic> toJson() => {
        'notStarted': notStarted,
        'workInProgress': workInProgress,
        'completed': completed,
      };

  /// To yaml.
  Map<String, dynamic> toYaml() => {
        'notStarted': notStarted.stringValue,
        'workInProgress': workInProgress.stringValue,
        'completed': completed.stringValue,
      };

  @override
  ThemeColorPalette$Task lerp(ThemeColorPalette$Task other, double t) {
    return ThemeColorPalette$Task(
      notStarted: Color.lerp(this.notStarted, other.notStarted, t)!,
      workInProgress: Color.lerp(this.workInProgress, other.workInProgress, t)!,
      completed: Color.lerp(this.completed, other.completed, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ThemeColorPalette$Task &&
        other.runtimeType == runtimeType &&
        other.notStarted == notStarted &&
        other.workInProgress == workInProgress &&
        other.completed == completed;
  }
}

// -------------------- ThemeColorPalette$Form --------------------

/// Form color palette
class ThemeColorPalette$Form extends ThemeExtension<ThemeColorPalette$Form> {
  /// Form color palette
  const ThemeColorPalette$Form({
    required this.draft,
    required this.actionRequired,
    required this.completed,
    required this.rejected,
  });

  /// Form color palette
  const ThemeColorPalette$Form.light()
      : draft = const Color(0xffed6e19),
        actionRequired = const Color(0xffeaa60f),
        completed = const Color(0xff666666),
        rejected = const Color(0xffc73826);

  /// Form color palette
  const ThemeColorPalette$Form.dark()
      : draft = const Color(0xffed6e19),
        actionRequired = const Color(0xffeaa60f),
        completed = const Color(0xff666666),
        rejected = const Color(0xffc73826);

  /// Form color palette
  const ThemeColorPalette$Form.darkCopy()
      : draft = const Color(0xffed6e19),
        actionRequired = const Color(0xffeaa60f),
        completed = const Color(0xff666666),
        rejected = const Color(0xffc73826);

  /// From json.
  ThemeColorPalette$Form.fromJson(Map<String, dynamic> json)
      : draft = json['draft'] as Color,
        actionRequired = json['actionRequired'] as Color,
        completed = json['completed'] as Color,
        rejected = json['rejected'] as Color;

  /// From yaml.
  ThemeColorPalette$Form.fromYaml(Map<String, dynamic> yaml)
      : draft = _ColorToString.fromString(yaml['draft'] as String)!,
        actionRequired =
            _ColorToString.fromString(yaml['actionRequired'] as String)!,
        completed = _ColorToString.fromString(yaml['completed'] as String)!,
        rejected = _ColorToString.fromString(yaml['rejected'] as String)!;

  /// Draft color
  final Color draft;

  /// Action required color
  final Color actionRequired;

  /// Completed color
  final Color completed;

  /// Rejected color
  final Color rejected;

  @override
  ThemeColorPalette$Form copyWith({
    covariant Color? draft,
    covariant Color? actionRequired,
    covariant Color? completed,
    covariant Color? rejected,
  }) {
    return ThemeColorPalette$Form(
      draft: draft ?? this.draft,
      actionRequired: actionRequired ?? this.actionRequired,
      completed: completed ?? this.completed,
      rejected: rejected ?? this.rejected,
    );
  }

  /// Copy with json.
  ThemeColorPalette$Form copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      draft: json['draft'] as Color?,
      actionRequired: json['actionRequired'] as Color?,
      completed: json['completed'] as Color?,
      rejected: json['rejected'] as Color?,
    );
  }

  /// Copy with yaml.
  ThemeColorPalette$Form copyWithYaml([Map<String, dynamic>? yaml]) {
    if (yaml == null || yaml.isEmpty) {
      return this;
    }
    return copyWith(
      draft: _ColorToString.fromString(yaml['draft'] as String?),
      actionRequired:
          _ColorToString.fromString(yaml['actionRequired'] as String?),
      completed: _ColorToString.fromString(yaml['completed'] as String?),
      rejected: _ColorToString.fromString(yaml['rejected'] as String?),
    );
  }

  /// To json.
  Map<String, dynamic> toJson() => {
        'draft': draft,
        'actionRequired': actionRequired,
        'completed': completed,
        'rejected': rejected,
      };

  /// To yaml.
  Map<String, dynamic> toYaml() => {
        'draft': draft.stringValue,
        'actionRequired': actionRequired.stringValue,
        'completed': completed.stringValue,
        'rejected': rejected.stringValue,
      };

  @override
  ThemeColorPalette$Form lerp(ThemeColorPalette$Form other, double t) {
    return ThemeColorPalette$Form(
      draft: Color.lerp(this.draft, other.draft, t)!,
      actionRequired: Color.lerp(this.actionRequired, other.actionRequired, t)!,
      completed: Color.lerp(this.completed, other.completed, t)!,
      rejected: Color.lerp(this.rejected, other.rejected, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ThemeColorPalette$Form &&
        other.runtimeType == runtimeType &&
        other.draft == draft &&
        other.actionRequired == actionRequired &&
        other.completed == completed &&
        other.rejected == rejected;
  }
}

// -------------------- ThemeColorPalette$Notification --------------------

/// Notification color palette
class ThemeColorPalette$Notification
    extends ThemeExtension<ThemeColorPalette$Notification> {
  /// Notification color palette
  const ThemeColorPalette$Notification({
    required this.countBubbleColor,
  });

  /// Notification color palette
  const ThemeColorPalette$Notification.light()
      : countBubbleColor = const Color(0xfff26716);

  /// Notification color palette
  const ThemeColorPalette$Notification.dark()
      : countBubbleColor = const Color(0xfff26716);

  /// Notification color palette
  const ThemeColorPalette$Notification.darkCopy()
      : countBubbleColor = const Color(0xfff26716);

  /// From json.
  ThemeColorPalette$Notification.fromJson(Map<String, dynamic> json)
      : countBubbleColor = json['countBubbleColor'] as Color;

  /// From yaml.
  ThemeColorPalette$Notification.fromYaml(Map<String, dynamic> yaml)
      : countBubbleColor =
            _ColorToString.fromString(yaml['countBubbleColor'] as String)!;

  /// Color of the notification bubble
  final Color countBubbleColor;

  @override
  ThemeColorPalette$Notification copyWith({
    covariant Color? countBubbleColor,
  }) {
    return ThemeColorPalette$Notification(
      countBubbleColor: countBubbleColor ?? this.countBubbleColor,
    );
  }

  /// Copy with json.
  ThemeColorPalette$Notification copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      countBubbleColor: json['countBubbleColor'] as Color?,
    );
  }

  /// Copy with yaml.
  ThemeColorPalette$Notification copyWithYaml([Map<String, dynamic>? yaml]) {
    if (yaml == null || yaml.isEmpty) {
      return this;
    }
    return copyWith(
      countBubbleColor:
          _ColorToString.fromString(yaml['countBubbleColor'] as String?),
    );
  }

  /// To json.
  Map<String, dynamic> toJson() => {
        'countBubbleColor': countBubbleColor,
      };

  /// To yaml.
  Map<String, dynamic> toYaml() => {
        'countBubbleColor': countBubbleColor.stringValue,
      };

  @override
  ThemeColorPalette$Notification lerp(
      ThemeColorPalette$Notification other, double t) {
    return ThemeColorPalette$Notification(
      countBubbleColor:
          Color.lerp(this.countBubbleColor, other.countBubbleColor, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ThemeColorPalette$Notification &&
        other.runtimeType == runtimeType &&
        other.countBubbleColor == countBubbleColor;
  }
}

// -------------------- ThemeColorPalette$ProjectTimeline --------------------

/// Project time line color palette
class ThemeColorPalette$ProjectTimeline
    extends ThemeExtension<ThemeColorPalette$ProjectTimeline> {
  /// Project time line color palette
  const ThemeColorPalette$ProjectTimeline({
    required this.plannedLight,
    required this.planned,
    required this.start,
    required this.completed,
    required this.today,
    required this.active,
    required this.progress,
  });

  /// Project time line color palette
  const ThemeColorPalette$ProjectTimeline.light()
      : plannedLight = const Color(0xffeef3f8),
        planned = const Color(0xff647e9b),
        start = const Color(0xffeaa60f),
        completed = const Color(0xff7ec141),
        today = const Color(0xff2864ac),
        active = const Color(0xffeef3f8),
        progress = const Color(0xff2864ac);

  /// Project time line color palette
  const ThemeColorPalette$ProjectTimeline.dark()
      : plannedLight = const Color(0xffeef3f8),
        planned = const Color(0xff647e9b),
        start = const Color(0xffeaa60f),
        completed = const Color(0xff7ec141),
        today = const Color(0xffc1dbef),
        active = const Color(0xffeef3f8),
        progress = const Color(0xff2864ac);

  /// Project time line color palette
  const ThemeColorPalette$ProjectTimeline.darkCopy()
      : plannedLight = const Color(0xffeef3f8),
        planned = const Color(0xff647e9b),
        start = const Color(0xffeaa60f),
        completed = const Color(0xff7ec141),
        today = const Color(0xffc1dbef),
        active = const Color(0xffeef3f8),
        progress = const Color(0xff2864ac);

  /// From json.
  ThemeColorPalette$ProjectTimeline.fromJson(Map<String, dynamic> json)
      : plannedLight = json['plannedLight'] as Color,
        planned = json['planned'] as Color,
        start = json['start'] as Color,
        completed = json['completed'] as Color,
        today = json['today'] as Color,
        active = json['active'] as Color,
        progress = json['progress'] as Color;

  /// From yaml.
  ThemeColorPalette$ProjectTimeline.fromYaml(Map<String, dynamic> yaml)
      : plannedLight =
            _ColorToString.fromString(yaml['plannedLight'] as String)!,
        planned = _ColorToString.fromString(yaml['planned'] as String)!,
        start = _ColorToString.fromString(yaml['start'] as String)!,
        completed = _ColorToString.fromString(yaml['completed'] as String)!,
        today = _ColorToString.fromString(yaml['today'] as String)!,
        active = _ColorToString.fromString(yaml['active'] as String)!,
        progress = _ColorToString.fromString(yaml['progress'] as String)!;

  /// Planned disc color
  final Color plannedLight;

  /// Planned text color
  final Color planned;

  /// Start color
  final Color start;

  /// Completed color
  final Color completed;

  /// Today disc color
  final Color today;

  /// Color for the Timeline Base
  final Color active;

  /// Color for the active part of the Timeline bar (Start -> Today/Completed)
  final Color progress;

  @override
  ThemeColorPalette$ProjectTimeline copyWith({
    covariant Color? plannedLight,
    covariant Color? planned,
    covariant Color? start,
    covariant Color? completed,
    covariant Color? today,
    covariant Color? active,
    covariant Color? progress,
  }) {
    return ThemeColorPalette$ProjectTimeline(
      plannedLight: plannedLight ?? this.plannedLight,
      planned: planned ?? this.planned,
      start: start ?? this.start,
      completed: completed ?? this.completed,
      today: today ?? this.today,
      active: active ?? this.active,
      progress: progress ?? this.progress,
    );
  }

  /// Copy with json.
  ThemeColorPalette$ProjectTimeline copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      plannedLight: json['plannedLight'] as Color?,
      planned: json['planned'] as Color?,
      start: json['start'] as Color?,
      completed: json['completed'] as Color?,
      today: json['today'] as Color?,
      active: json['active'] as Color?,
      progress: json['progress'] as Color?,
    );
  }

  /// Copy with yaml.
  ThemeColorPalette$ProjectTimeline copyWithYaml([Map<String, dynamic>? yaml]) {
    if (yaml == null || yaml.isEmpty) {
      return this;
    }
    return copyWith(
      plannedLight: _ColorToString.fromString(yaml['plannedLight'] as String?),
      planned: _ColorToString.fromString(yaml['planned'] as String?),
      start: _ColorToString.fromString(yaml['start'] as String?),
      completed: _ColorToString.fromString(yaml['completed'] as String?),
      today: _ColorToString.fromString(yaml['today'] as String?),
      active: _ColorToString.fromString(yaml['active'] as String?),
      progress: _ColorToString.fromString(yaml['progress'] as String?),
    );
  }

  /// To json.
  Map<String, dynamic> toJson() => {
        'plannedLight': plannedLight,
        'planned': planned,
        'start': start,
        'completed': completed,
        'today': today,
        'active': active,
        'progress': progress,
      };

  /// To yaml.
  Map<String, dynamic> toYaml() => {
        'plannedLight': plannedLight.stringValue,
        'planned': planned.stringValue,
        'start': start.stringValue,
        'completed': completed.stringValue,
        'today': today.stringValue,
        'active': active.stringValue,
        'progress': progress.stringValue,
      };

  @override
  ThemeColorPalette$ProjectTimeline lerp(
      ThemeColorPalette$ProjectTimeline other, double t) {
    return ThemeColorPalette$ProjectTimeline(
      plannedLight: Color.lerp(this.plannedLight, other.plannedLight, t)!,
      planned: Color.lerp(this.planned, other.planned, t)!,
      start: Color.lerp(this.start, other.start, t)!,
      completed: Color.lerp(this.completed, other.completed, t)!,
      today: Color.lerp(this.today, other.today, t)!,
      active: Color.lerp(this.active, other.active, t)!,
      progress: Color.lerp(this.progress, other.progress, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ThemeColorPalette$ProjectTimeline &&
        other.runtimeType == runtimeType &&
        other.plannedLight == plannedLight &&
        other.planned == planned &&
        other.start == start &&
        other.completed == completed &&
        other.today == today &&
        other.active == active &&
        other.progress == progress;
  }
}

// -------------------- ThemeColorPalette$Pin --------------------

/// Pin theme
class ThemeColorPalette$Pin extends ThemeExtension<ThemeColorPalette$Pin> {
  /// Pin theme
  const ThemeColorPalette$Pin({
    required this.iconColor,
    required this.disabledBackgroundColor,
  });

  /// Pin theme
  const ThemeColorPalette$Pin.light()
      : iconColor = const Color(0xffffffff),
        disabledBackgroundColor = const Color(0xff8d8d8d);

  /// Pin theme
  const ThemeColorPalette$Pin.dark()
      : iconColor = const Color(0xffffffff),
        disabledBackgroundColor = const Color(0xff8d8d8d);

  /// Pin theme
  const ThemeColorPalette$Pin.darkCopy()
      : iconColor = const Color(0xffffffff),
        disabledBackgroundColor = const Color(0xff8d8d8d);

  /// From json.
  ThemeColorPalette$Pin.fromJson(Map<String, dynamic> json)
      : iconColor = json['iconColor'] as Color,
        disabledBackgroundColor = json['disabledBackgroundColor'] as Color;

  /// From yaml.
  ThemeColorPalette$Pin.fromYaml(Map<String, dynamic> yaml)
      : iconColor = _ColorToString.fromString(yaml['iconColor'] as String)!,
        disabledBackgroundColor = _ColorToString.fromString(
            yaml['disabledBackgroundColor'] as String)!;

  /// Icon Color
  final Color iconColor;

  /// The background color when the pin is disabled
  final Color disabledBackgroundColor;

  @override
  ThemeColorPalette$Pin copyWith({
    covariant Color? iconColor,
    covariant Color? disabledBackgroundColor,
  }) {
    return ThemeColorPalette$Pin(
      iconColor: iconColor ?? this.iconColor,
      disabledBackgroundColor:
          disabledBackgroundColor ?? this.disabledBackgroundColor,
    );
  }

  /// Copy with json.
  ThemeColorPalette$Pin copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      iconColor: json['iconColor'] as Color?,
      disabledBackgroundColor: json['disabledBackgroundColor'] as Color?,
    );
  }

  /// Copy with yaml.
  ThemeColorPalette$Pin copyWithYaml([Map<String, dynamic>? yaml]) {
    if (yaml == null || yaml.isEmpty) {
      return this;
    }
    return copyWith(
      iconColor: _ColorToString.fromString(yaml['iconColor'] as String?),
      disabledBackgroundColor:
          _ColorToString.fromString(yaml['disabledBackgroundColor'] as String?),
    );
  }

  /// To json.
  Map<String, dynamic> toJson() => {
        'iconColor': iconColor,
        'disabledBackgroundColor': disabledBackgroundColor,
      };

  /// To yaml.
  Map<String, dynamic> toYaml() => {
        'iconColor': iconColor.stringValue,
        'disabledBackgroundColor': disabledBackgroundColor.stringValue,
      };

  @override
  ThemeColorPalette$Pin lerp(ThemeColorPalette$Pin other, double t) {
    return ThemeColorPalette$Pin(
      iconColor: Color.lerp(this.iconColor, other.iconColor, t)!,
      disabledBackgroundColor: Color.lerp(
          this.disabledBackgroundColor, other.disabledBackgroundColor, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ThemeColorPalette$Pin &&
        other.runtimeType == runtimeType &&
        other.iconColor == iconColor &&
        other.disabledBackgroundColor == disabledBackgroundColor;
  }
}

// -------------------- ThemeColorPalette$AppBarTheme --------------------

///
class ThemeColorPalette$AppBarTheme
    extends ThemeExtension<ThemeColorPalette$AppBarTheme> {
  ///
  const ThemeColorPalette$AppBarTheme({
    required Color color,
    required Color foregroundColor,
  })  : _color = color,
        _foregroundColor = foregroundColor;

  ///
  const ThemeColorPalette$AppBarTheme.light()
      : _color = const Color(0xff5182bb),
        _foregroundColor = const Color(0xffffffff);

  ///
  const ThemeColorPalette$AppBarTheme.dark()
      : _color = const Color(0xff1e1e1e),
        _foregroundColor = const Color(0xffffffff);

  ///
  const ThemeColorPalette$AppBarTheme.darkCopy()
      : _color = const Color(0xff1e1e1e),
        _foregroundColor = const Color(0xffffffff);

  /// From json.
  ThemeColorPalette$AppBarTheme.fromJson(Map<String, dynamic> json)
      : _color = json['color'] as Color,
        _foregroundColor = json['foregroundColor'] as Color;

  /// From yaml.
  ThemeColorPalette$AppBarTheme.fromYaml(Map<String, dynamic> yaml)
      : _color = _ColorToString.fromString(yaml['color'] as String)!,
        _foregroundColor =
            _ColorToString.fromString(yaml['foregroundColor'] as String)!;

  /// Color of the app bar
  ///
  /// Use `theme.appBarTheme.color` instead.
  final Color _color;

  /// Text and icon color of the app bar
  ///
  /// Use `theme.appBarTheme.foregroundColor` instead.
  final Color _foregroundColor;

  @override
  ThemeColorPalette$AppBarTheme copyWith({
    covariant Color? color,
    covariant Color? foregroundColor,
  }) {
    return ThemeColorPalette$AppBarTheme(
      color: color ?? _color,
      foregroundColor: foregroundColor ?? _foregroundColor,
    );
  }

  /// Copy with json.
  ThemeColorPalette$AppBarTheme copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      color: json['color'] as Color?,
      foregroundColor: json['foregroundColor'] as Color?,
    );
  }

  /// Copy with yaml.
  ThemeColorPalette$AppBarTheme copyWithYaml([Map<String, dynamic>? yaml]) {
    if (yaml == null || yaml.isEmpty) {
      return this;
    }
    return copyWith(
      color: _ColorToString.fromString(yaml['color'] as String?),
      foregroundColor:
          _ColorToString.fromString(yaml['foregroundColor'] as String?),
    );
  }

  /// To json.
  Map<String, dynamic> toJson() => {
        'color': _color,
        'foregroundColor': _foregroundColor,
      };

  /// To yaml.
  Map<String, dynamic> toYaml() => {
        'color': _color.stringValue,
        'foregroundColor': _foregroundColor.stringValue,
      };

  @override
  ThemeColorPalette$AppBarTheme lerp(
      ThemeColorPalette$AppBarTheme other, double t) {
    return ThemeColorPalette$AppBarTheme(
      color: Color.lerp(this._color, other._color, t)!,
      foregroundColor:
          Color.lerp(this._foregroundColor, other._foregroundColor, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ThemeColorPalette$AppBarTheme &&
        other.runtimeType == runtimeType &&
        other._color == _color &&
        other._foregroundColor == _foregroundColor;
  }
}

// -------------------- ThemeColorPalette$BottomAppBarTheme --------------------

///
class ThemeColorPalette$BottomAppBarTheme
    extends ThemeExtension<ThemeColorPalette$BottomAppBarTheme> {
  ///
  const ThemeColorPalette$BottomAppBarTheme({
    required Color color,
  }) : _color = color;

  ///
  const ThemeColorPalette$BottomAppBarTheme.light()
      : _color = const Color(0xfff8f8f8);

  ///
  const ThemeColorPalette$BottomAppBarTheme.dark()
      : _color = const Color(0xff2e2e2e);

  ///
  const ThemeColorPalette$BottomAppBarTheme.darkCopy()
      : _color = const Color(0xff2e2e2e);

  /// From json.
  ThemeColorPalette$BottomAppBarTheme.fromJson(Map<String, dynamic> json)
      : _color = json['color'] as Color;

  /// From yaml.
  ThemeColorPalette$BottomAppBarTheme.fromYaml(Map<String, dynamic> yaml)
      : _color = _ColorToString.fromString(yaml['color'] as String)!;

  /// Color of the bottom app bar
  ///
  /// Use `theme.bottomAppBarTheme.color` instead.
  final Color _color;

  @override
  ThemeColorPalette$BottomAppBarTheme copyWith({
    covariant Color? color,
  }) {
    return ThemeColorPalette$BottomAppBarTheme(
      color: color ?? _color,
    );
  }

  /// Copy with json.
  ThemeColorPalette$BottomAppBarTheme copyWithJson(
      [Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      color: json['color'] as Color?,
    );
  }

  /// Copy with yaml.
  ThemeColorPalette$BottomAppBarTheme copyWithYaml(
      [Map<String, dynamic>? yaml]) {
    if (yaml == null || yaml.isEmpty) {
      return this;
    }
    return copyWith(
      color: _ColorToString.fromString(yaml['color'] as String?),
    );
  }

  /// To json.
  Map<String, dynamic> toJson() => {
        'color': _color,
      };

  /// To yaml.
  Map<String, dynamic> toYaml() => {
        'color': _color.stringValue,
      };

  @override
  ThemeColorPalette$BottomAppBarTheme lerp(
      ThemeColorPalette$BottomAppBarTheme other, double t) {
    return ThemeColorPalette$BottomAppBarTheme(
      color: Color.lerp(this._color, other._color, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ThemeColorPalette$BottomAppBarTheme &&
        other.runtimeType == runtimeType &&
        other._color == _color;
  }
}

// -------------------- ThemeColorPalette$TooltipTheme --------------------

/// Tooltip theme
///
/// Use `theme.tooltipTheme` instead.
class ThemeColorPalette$TooltipTheme
    extends ThemeExtension<ThemeColorPalette$TooltipTheme> {
  /// Tooltip theme
  const ThemeColorPalette$TooltipTheme({
    required ThemeColorPalette$TooltipTheme$Decoration decoration,
    required ThemeColorPalette$TooltipTheme$TextStyle textStyle,
  })  : _decoration = decoration,
        _textStyle = textStyle;

  /// Tooltip theme
  const ThemeColorPalette$TooltipTheme.light()
      : _decoration = const ThemeColorPalette$TooltipTheme$Decoration.light(),
        _textStyle = const ThemeColorPalette$TooltipTheme$TextStyle.light();

  /// Tooltip theme
  const ThemeColorPalette$TooltipTheme.dark()
      : _decoration = const ThemeColorPalette$TooltipTheme$Decoration.dark(),
        _textStyle = const ThemeColorPalette$TooltipTheme$TextStyle.dark();

  /// Tooltip theme
  const ThemeColorPalette$TooltipTheme.darkCopy()
      : _decoration =
            const ThemeColorPalette$TooltipTheme$Decoration.darkCopy(),
        _textStyle = const ThemeColorPalette$TooltipTheme$TextStyle.darkCopy();

  /// From json.
  ThemeColorPalette$TooltipTheme.fromJson(Map<String, dynamic> json)
      : _decoration = ThemeColorPalette$TooltipTheme$Decoration.fromJson(
            Map<String, dynamic>.from(json['decoration'] as Map)),
        _textStyle = ThemeColorPalette$TooltipTheme$TextStyle.fromJson(
            Map<String, dynamic>.from(json['textStyle'] as Map));

  /// From yaml.
  ThemeColorPalette$TooltipTheme.fromYaml(Map<String, dynamic> yaml)
      : _decoration = ThemeColorPalette$TooltipTheme$Decoration.fromYaml(
            Map<String, dynamic>.from(yaml['decoration'] as Map)),
        _textStyle = ThemeColorPalette$TooltipTheme$TextStyle.fromYaml(
            Map<String, dynamic>.from(yaml['textStyle'] as Map));

  /// Tooltip decoration
  ///
  /// Use `theme.decoration` instead.
  final ThemeColorPalette$TooltipTheme$Decoration _decoration;

  /// Tooltip text textStyle
  ///
  /// Use `theme.tooltipTheme.textStyle` instead.
  final ThemeColorPalette$TooltipTheme$TextStyle _textStyle;

  @override
  ThemeColorPalette$TooltipTheme copyWith({
    covariant ThemeColorPalette$TooltipTheme$Decoration? decoration,
    covariant ThemeColorPalette$TooltipTheme$TextStyle? textStyle,
  }) {
    return ThemeColorPalette$TooltipTheme(
      decoration: decoration ?? _decoration,
      textStyle: textStyle ?? _textStyle,
    );
  }

  /// Copy with json.
  ThemeColorPalette$TooltipTheme copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      decoration: _decoration.copyWithJson(json['decoration'] == null
          ? null
          : Map<String, dynamic>.from(json['decoration'] as Map)),
      textStyle: _textStyle.copyWithJson(json['textStyle'] == null
          ? null
          : Map<String, dynamic>.from(json['textStyle'] as Map)),
    );
  }

  /// Copy with yaml.
  ThemeColorPalette$TooltipTheme copyWithYaml([Map<String, dynamic>? yaml]) {
    if (yaml == null || yaml.isEmpty) {
      return this;
    }
    return copyWith(
      decoration: _decoration.copyWithYaml(yaml['decoration'] == null
          ? null
          : Map<String, dynamic>.from(yaml['decoration'] as Map)),
      textStyle: _textStyle.copyWithYaml(yaml['textStyle'] == null
          ? null
          : Map<String, dynamic>.from(yaml['textStyle'] as Map)),
    );
  }

  /// To json.
  Map<String, dynamic> toJson() => {
        'decoration': _decoration.toJson(),
        'textStyle': _textStyle.toJson(),
      };

  /// To yaml.
  Map<String, dynamic> toYaml() => {
        'decoration': _decoration.toYaml(),
        'textStyle': _textStyle.toYaml(),
      };

  @override
  ThemeColorPalette$TooltipTheme lerp(
      ThemeColorPalette$TooltipTheme other, double t) {
    return ThemeColorPalette$TooltipTheme(
      decoration: this._decoration.lerp(other._decoration, t),
      textStyle: this._textStyle.lerp(other._textStyle, t),
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ThemeColorPalette$TooltipTheme &&
        other.runtimeType == runtimeType &&
        other._decoration == _decoration &&
        other._textStyle == _textStyle;
  }
}

// -------------------- ThemeColorPalette$TooltipTheme$Decoration --------------------

/// Tooltip decoration
///
/// Use `theme.decoration` instead.
class ThemeColorPalette$TooltipTheme$Decoration
    extends ThemeExtension<ThemeColorPalette$TooltipTheme$Decoration> {
  /// Tooltip decoration
  const ThemeColorPalette$TooltipTheme$Decoration({
    required Color color,
    required double borderRadius,
  })  : _color = color,
        _borderRadius = borderRadius;

  /// Tooltip decoration
  const ThemeColorPalette$TooltipTheme$Decoration.light()
      : _color = const Color(0xff000000),
        _borderRadius = 4.0;

  /// Tooltip decoration
  const ThemeColorPalette$TooltipTheme$Decoration.dark()
      : _color = const Color(0xffffffff),
        _borderRadius = 4.0;

  /// Tooltip decoration
  const ThemeColorPalette$TooltipTheme$Decoration.darkCopy()
      : _color = const Color(0xffffffff),
        _borderRadius = 4.0;

  /// From json.
  ThemeColorPalette$TooltipTheme$Decoration.fromJson(Map<String, dynamic> json)
      : _color = json['color'] as Color,
        _borderRadius = json['borderRadius'] as double;

  /// From yaml.
  ThemeColorPalette$TooltipTheme$Decoration.fromYaml(Map<String, dynamic> yaml)
      : _color = _ColorToString.fromString(yaml['color'] as String)!,
        _borderRadius = yaml['borderRadius'] as double;

  /// Tooltip decoration color
  ///
  /// Use `theme.tooltipTheme.decoration` instead.
  final Color _color;

  /// Tooltip decoration radius
  ///
  /// Use `theme.tooltipTheme.decoration` instead.
  final double _borderRadius;

  @override
  ThemeColorPalette$TooltipTheme$Decoration copyWith({
    covariant Color? color,
    covariant double? borderRadius,
  }) {
    return ThemeColorPalette$TooltipTheme$Decoration(
      color: color ?? _color,
      borderRadius: borderRadius ?? _borderRadius,
    );
  }

  /// Copy with json.
  ThemeColorPalette$TooltipTheme$Decoration copyWithJson(
      [Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      color: json['color'] as Color?,
      borderRadius: json['borderRadius'] as double?,
    );
  }

  /// Copy with yaml.
  ThemeColorPalette$TooltipTheme$Decoration copyWithYaml(
      [Map<String, dynamic>? yaml]) {
    if (yaml == null || yaml.isEmpty) {
      return this;
    }
    return copyWith(
      color: _ColorToString.fromString(yaml['color'] as String?),
      borderRadius: yaml['borderRadius'] as double?,
    );
  }

  /// To json.
  Map<String, dynamic> toJson() => {
        'color': _color,
        'borderRadius': _borderRadius,
      };

  /// To yaml.
  Map<String, dynamic> toYaml() => {
        'color': _color.stringValue,
        'borderRadius': _borderRadius,
      };

  @override
  ThemeColorPalette$TooltipTheme$Decoration lerp(
      ThemeColorPalette$TooltipTheme$Decoration other, double t) {
    return ThemeColorPalette$TooltipTheme$Decoration(
      color: Color.lerp(this._color, other._color, t)!,
      borderRadius: lerpDouble(this._borderRadius, other._borderRadius, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ThemeColorPalette$TooltipTheme$Decoration &&
        other.runtimeType == runtimeType &&
        other._color == _color &&
        other._borderRadius == _borderRadius;
  }
}

// -------------------- ThemeColorPalette$TooltipTheme$TextStyle --------------------

/// Tooltip text textStyle
///
/// Use `theme.tooltipTheme.textStyle` instead.
class ThemeColorPalette$TooltipTheme$TextStyle
    extends ThemeExtension<ThemeColorPalette$TooltipTheme$TextStyle> {
  /// Tooltip text textStyle
  const ThemeColorPalette$TooltipTheme$TextStyle({
    required Color color,
  }) : _color = color;

  /// Tooltip text textStyle
  const ThemeColorPalette$TooltipTheme$TextStyle.light()
      : _color = const Color(0xffffffff);

  /// Tooltip text textStyle
  const ThemeColorPalette$TooltipTheme$TextStyle.dark()
      : _color = const Color(0xff000000);

  /// Tooltip text textStyle
  const ThemeColorPalette$TooltipTheme$TextStyle.darkCopy()
      : _color = const Color(0xff000000);

  /// From json.
  ThemeColorPalette$TooltipTheme$TextStyle.fromJson(Map<String, dynamic> json)
      : _color = json['color'] as Color;

  /// From yaml.
  ThemeColorPalette$TooltipTheme$TextStyle.fromYaml(Map<String, dynamic> yaml)
      : _color = _ColorToString.fromString(yaml['color'] as String)!;

  /// Tooltip text textStyle color
  ///
  /// Use `theme.tooltipTheme.textStyle.color` instead.
  final Color _color;

  @override
  ThemeColorPalette$TooltipTheme$TextStyle copyWith({
    covariant Color? color,
  }) {
    return ThemeColorPalette$TooltipTheme$TextStyle(
      color: color ?? _color,
    );
  }

  /// Copy with json.
  ThemeColorPalette$TooltipTheme$TextStyle copyWithJson(
      [Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      color: json['color'] as Color?,
    );
  }

  /// Copy with yaml.
  ThemeColorPalette$TooltipTheme$TextStyle copyWithYaml(
      [Map<String, dynamic>? yaml]) {
    if (yaml == null || yaml.isEmpty) {
      return this;
    }
    return copyWith(
      color: _ColorToString.fromString(yaml['color'] as String?),
    );
  }

  /// To json.
  Map<String, dynamic> toJson() => {
        'color': _color,
      };

  /// To yaml.
  Map<String, dynamic> toYaml() => {
        'color': _color.stringValue,
      };

  @override
  ThemeColorPalette$TooltipTheme$TextStyle lerp(
      ThemeColorPalette$TooltipTheme$TextStyle other, double t) {
    return ThemeColorPalette$TooltipTheme$TextStyle(
      color: Color.lerp(this._color, other._color, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ThemeColorPalette$TooltipTheme$TextStyle &&
        other.runtimeType == runtimeType &&
        other._color == _color;
  }
}

// -------------------- ThemeColorPalette$PopupMenuTheme --------------------

/// Popup menu theme
///
/// Use `theme.popupMenuTheme` instead.
class ThemeColorPalette$PopupMenuTheme
    extends ThemeExtension<ThemeColorPalette$PopupMenuTheme> {
  /// Popup menu theme
  const ThemeColorPalette$PopupMenuTheme({
    required ThemeColorPalette$PopupMenuTheme$TextStyle textStyle,
  }) : _textStyle = textStyle;

  /// Popup menu theme
  const ThemeColorPalette$PopupMenuTheme.light()
      : _textStyle = const ThemeColorPalette$PopupMenuTheme$TextStyle.light();

  /// Popup menu theme
  const ThemeColorPalette$PopupMenuTheme.dark()
      : _textStyle = const ThemeColorPalette$PopupMenuTheme$TextStyle.dark();

  /// Popup menu theme
  const ThemeColorPalette$PopupMenuTheme.darkCopy()
      : _textStyle =
            const ThemeColorPalette$PopupMenuTheme$TextStyle.darkCopy();

  /// From json.
  ThemeColorPalette$PopupMenuTheme.fromJson(Map<String, dynamic> json)
      : _textStyle = ThemeColorPalette$PopupMenuTheme$TextStyle.fromJson(
            Map<String, dynamic>.from(json['textStyle'] as Map));

  /// From yaml.
  ThemeColorPalette$PopupMenuTheme.fromYaml(Map<String, dynamic> yaml)
      : _textStyle = ThemeColorPalette$PopupMenuTheme$TextStyle.fromYaml(
            Map<String, dynamic>.from(yaml['textStyle'] as Map));

  /// Popup menu theme text style
  ///
  /// Use `theme.popupMenuTheme.textStyle` instead.
  final ThemeColorPalette$PopupMenuTheme$TextStyle _textStyle;

  @override
  ThemeColorPalette$PopupMenuTheme copyWith({
    covariant ThemeColorPalette$PopupMenuTheme$TextStyle? textStyle,
  }) {
    return ThemeColorPalette$PopupMenuTheme(
      textStyle: textStyle ?? _textStyle,
    );
  }

  /// Copy with json.
  ThemeColorPalette$PopupMenuTheme copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      textStyle: _textStyle.copyWithJson(json['textStyle'] == null
          ? null
          : Map<String, dynamic>.from(json['textStyle'] as Map)),
    );
  }

  /// Copy with yaml.
  ThemeColorPalette$PopupMenuTheme copyWithYaml([Map<String, dynamic>? yaml]) {
    if (yaml == null || yaml.isEmpty) {
      return this;
    }
    return copyWith(
      textStyle: _textStyle.copyWithYaml(yaml['textStyle'] == null
          ? null
          : Map<String, dynamic>.from(yaml['textStyle'] as Map)),
    );
  }

  /// To json.
  Map<String, dynamic> toJson() => {
        'textStyle': _textStyle.toJson(),
      };

  /// To yaml.
  Map<String, dynamic> toYaml() => {
        'textStyle': _textStyle.toYaml(),
      };

  @override
  ThemeColorPalette$PopupMenuTheme lerp(
      ThemeColorPalette$PopupMenuTheme other, double t) {
    return ThemeColorPalette$PopupMenuTheme(
      textStyle: this._textStyle.lerp(other._textStyle, t),
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ThemeColorPalette$PopupMenuTheme &&
        other.runtimeType == runtimeType &&
        other._textStyle == _textStyle;
  }
}

// -------------------- ThemeColorPalette$PopupMenuTheme$TextStyle --------------------

/// Popup menu theme text style
///
/// Use `theme.popupMenuTheme.textStyle` instead.
class ThemeColorPalette$PopupMenuTheme$TextStyle
    extends ThemeExtension<ThemeColorPalette$PopupMenuTheme$TextStyle> {
  /// Popup menu theme text style
  const ThemeColorPalette$PopupMenuTheme$TextStyle({
    required Color color,
  }) : _color = color;

  /// Popup menu theme text style
  const ThemeColorPalette$PopupMenuTheme$TextStyle.light()
      : _color = const Color(0xff2864ac);

  /// Popup menu theme text style
  const ThemeColorPalette$PopupMenuTheme$TextStyle.dark()
      : _color = const Color(0xff699fcf);

  /// Popup menu theme text style
  const ThemeColorPalette$PopupMenuTheme$TextStyle.darkCopy()
      : _color = const Color(0xff699fcf);

  /// From json.
  ThemeColorPalette$PopupMenuTheme$TextStyle.fromJson(Map<String, dynamic> json)
      : _color = json['color'] as Color;

  /// From yaml.
  ThemeColorPalette$PopupMenuTheme$TextStyle.fromYaml(Map<String, dynamic> yaml)
      : _color = _ColorToString.fromString(yaml['color'] as String)!;

  /// Popup menu theme text style color
  ///
  /// Use `theme.popupMenuTheme.textStyle.color` instead.
  final Color _color;

  @override
  ThemeColorPalette$PopupMenuTheme$TextStyle copyWith({
    covariant Color? color,
  }) {
    return ThemeColorPalette$PopupMenuTheme$TextStyle(
      color: color ?? _color,
    );
  }

  /// Copy with json.
  ThemeColorPalette$PopupMenuTheme$TextStyle copyWithJson(
      [Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      color: json['color'] as Color?,
    );
  }

  /// Copy with yaml.
  ThemeColorPalette$PopupMenuTheme$TextStyle copyWithYaml(
      [Map<String, dynamic>? yaml]) {
    if (yaml == null || yaml.isEmpty) {
      return this;
    }
    return copyWith(
      color: _ColorToString.fromString(yaml['color'] as String?),
    );
  }

  /// To json.
  Map<String, dynamic> toJson() => {
        'color': _color,
      };

  /// To yaml.
  Map<String, dynamic> toYaml() => {
        'color': _color.stringValue,
      };

  @override
  ThemeColorPalette$PopupMenuTheme$TextStyle lerp(
      ThemeColorPalette$PopupMenuTheme$TextStyle other, double t) {
    return ThemeColorPalette$PopupMenuTheme$TextStyle(
      color: Color.lerp(this._color, other._color, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ThemeColorPalette$PopupMenuTheme$TextStyle &&
        other.runtimeType == runtimeType &&
        other._color == _color;
  }
}

// -------------------- ThemeColorPalette$DividerTheme --------------------

/// Divider theme
///
/// Use `theme.dividerTheme` instead.
class ThemeColorPalette$DividerTheme
    extends ThemeExtension<ThemeColorPalette$DividerTheme> {
  /// Divider theme
  const ThemeColorPalette$DividerTheme({
    required Color color,
    required double thickness,
  })  : _color = color,
        _thickness = thickness;

  /// Divider theme
  const ThemeColorPalette$DividerTheme.light()
      : _color = const Color(0x0a000000),
        _thickness = 2.0;

  /// Divider theme
  const ThemeColorPalette$DividerTheme.dark()
      : _color = const Color(0xff434343),
        _thickness = 2.0;

  /// Divider theme
  const ThemeColorPalette$DividerTheme.darkCopy()
      : _color = const Color(0xff434343),
        _thickness = 2.0;

  /// From json.
  ThemeColorPalette$DividerTheme.fromJson(Map<String, dynamic> json)
      : _color = json['color'] as Color,
        _thickness = json['thickness'] as double;

  /// From yaml.
  ThemeColorPalette$DividerTheme.fromYaml(Map<String, dynamic> yaml)
      : _color = _ColorToString.fromString(yaml['color'] as String)!,
        _thickness = yaml['thickness'] as double;

  /// Divider color
  ///
  /// Use `theme.dividerColor` instead.
  final Color _color;

  /// Divider thickness
  ///
  /// Use `theme.dividerTheme.thickness` instead.
  final double _thickness;

  @override
  ThemeColorPalette$DividerTheme copyWith({
    covariant Color? color,
    covariant double? thickness,
  }) {
    return ThemeColorPalette$DividerTheme(
      color: color ?? _color,
      thickness: thickness ?? _thickness,
    );
  }

  /// Copy with json.
  ThemeColorPalette$DividerTheme copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      color: json['color'] as Color?,
      thickness: json['thickness'] as double?,
    );
  }

  /// Copy with yaml.
  ThemeColorPalette$DividerTheme copyWithYaml([Map<String, dynamic>? yaml]) {
    if (yaml == null || yaml.isEmpty) {
      return this;
    }
    return copyWith(
      color: _ColorToString.fromString(yaml['color'] as String?),
      thickness: yaml['thickness'] as double?,
    );
  }

  /// To json.
  Map<String, dynamic> toJson() => {
        'color': _color,
        'thickness': _thickness,
      };

  /// To yaml.
  Map<String, dynamic> toYaml() => {
        'color': _color.stringValue,
        'thickness': _thickness,
      };

  @override
  ThemeColorPalette$DividerTheme lerp(
      ThemeColorPalette$DividerTheme other, double t) {
    return ThemeColorPalette$DividerTheme(
      color: Color.lerp(this._color, other._color, t)!,
      thickness: lerpDouble(this._thickness, other._thickness, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ThemeColorPalette$DividerTheme &&
        other.runtimeType == runtimeType &&
        other._color == _color &&
        other._thickness == _thickness;
  }
}
