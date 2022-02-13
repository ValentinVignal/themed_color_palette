// ! GENERATED CODE - DO NOT MANUALLY EDIT

part of 'theme.dart';

// Version: 0.0.0.

/// Different Themes.
enum Themes {
  /// Light theme.
  light,
  /// Dark theme.
  dark,
}

/// Extension on [Themes].
extension ThemesExtension on Themes {

  /// Returns the theme color palette.
  ThemeColorPalette get colorPalette {
    switch (this) {
      case Themes.dark:
        return const ThemeColorPalette.dark();
      case Themes.light:
      default:
        return const ThemeColorPalette.light();
    }
  }

  /// Returns the mobile theme color palette.
  ThemeColorPalette_mobile get colorPaletteMobile {
    switch (this) {
      case Themes.dark:
        return const ThemeColorPalette_mobile.dark();
      case Themes.light:
      default:
        return const ThemeColorPalette_mobile.light();
    }
  }

  /// Returns the web theme color palette.
  ThemeColorPalette_web get colorPaletteWeb {
    switch (this) {
      case Themes.dark:
        return const ThemeColorPalette_web.dark();
      case Themes.light:
      default:
        return const ThemeColorPalette_web.light();
    }
  }
}

// -------------------- ThemeColorPalette --------------------

/// The Theme Color Palette
class ThemeColorPalette {
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
  }):
    _brightness = brightness,
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
  const ThemeColorPalette.light():
    _brightness = Brightness.light,
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
    floatingActionButton = const ThemeColorPalette$FloatingActionButton.light(),
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
  const ThemeColorPalette.dark():
    _brightness = Brightness.dark,
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
    floatingActionButton = const ThemeColorPalette$FloatingActionButton.dark(),
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

  /// From json.
  ThemeColorPalette.fromJson(Map<String, dynamic> json):
    _brightness = json['brightness'] as Brightness,
    _accentColor = json['accentColor'] as Color,
    _primaryColor = json['primaryColor'] as Color,
    _primaryColorLight = json['primaryColorLight'] as Color,
    secondaryColor = json['secondaryColor'] as Color,
    _errorColor = json['errorColor'] as Color,
    _disabledColor = json['disabledColor'] as Color,
    textEmphasis = ThemeColorPalette$TextEmphasis.fromJson(json['textEmphasis'] as Map<String, dynamic>),
    iconEmphasis = ThemeColorPalette$IconEmphasis.fromJson(json['iconEmphasis'] as Map<String, dynamic>),
    border = ThemeColorPalette$Border.fromJson(json['border'] as Map<String, dynamic>),
    background = ThemeColorPalette$Background.fromJson(json['background'] as Map<String, dynamic>),
    floatingActionButton = ThemeColorPalette$FloatingActionButton.fromJson(json['floatingActionButton'] as Map<String, dynamic>),
    task = ThemeColorPalette$Task.fromJson(json['task'] as Map<String, dynamic>),
    form = ThemeColorPalette$Form.fromJson(json['form'] as Map<String, dynamic>),
    notification = ThemeColorPalette$Notification.fromJson(json['notification'] as Map<String, dynamic>),
    projectTimeline = ThemeColorPalette$ProjectTimeline.fromJson(json['projectTimeline'] as Map<String, dynamic>),
    pin = ThemeColorPalette$Pin.fromJson(json['pin'] as Map<String, dynamic>),
    _hoverColor = json['hoverColor'] as Color,
    appBarTheme = ThemeColorPalette$AppBarTheme.fromJson(json['appBarTheme'] as Map<String, dynamic>),
    bottomAppBarTheme = ThemeColorPalette$BottomAppBarTheme.fromJson(json['bottomAppBarTheme'] as Map<String, dynamic>),
    _tooltipTheme = ThemeColorPalette$TooltipTheme.fromJson(json['tooltipTheme'] as Map<String, dynamic>),
    _popupMenuTheme = ThemeColorPalette$PopupMenuTheme.fromJson(json['popupMenuTheme'] as Map<String, dynamic>),
    _dividerTheme = ThemeColorPalette$DividerTheme.fromJson(json['dividerTheme'] as Map<String, dynamic>),
    _selectedRowColor = json['selectedRowColor'] as Color;

  /// Default radius
  static const radius = 4.0;

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

  ThemeColorPalette copyWith({
    Brightness? brightness,
    @Deprecated('accent color is deprecated')
    Color? accentColor,
    Color? primaryColor,
    Color? primaryColorLight,
    Color? secondaryColor,
    Color? errorColor,
    Color? disabledColor,
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
    Color? hoverColor,
    covariant ThemeColorPalette$AppBarTheme? appBarTheme,
    covariant ThemeColorPalette$BottomAppBarTheme? bottomAppBarTheme,
    covariant ThemeColorPalette$TooltipTheme? tooltipTheme,
    covariant ThemeColorPalette$PopupMenuTheme? popupMenuTheme,
    covariant ThemeColorPalette$DividerTheme? dividerTheme,
    Color? selectedRowColor,
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

  /// Copy with json method.
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
      textEmphasis: textEmphasis.copyWithJson(json['textEmphasis'] as Map<String, dynamic>?),
      iconEmphasis: iconEmphasis.copyWithJson(json['iconEmphasis'] as Map<String, dynamic>?),
      border: border.copyWithJson(json['border'] as Map<String, dynamic>?),
      background: background.copyWithJson(json['background'] as Map<String, dynamic>?),
      floatingActionButton: floatingActionButton.copyWithJson(json['floatingActionButton'] as Map<String, dynamic>?),
      task: task.copyWithJson(json['task'] as Map<String, dynamic>?),
      form: form.copyWithJson(json['form'] as Map<String, dynamic>?),
      notification: notification.copyWithJson(json['notification'] as Map<String, dynamic>?),
      projectTimeline: projectTimeline.copyWithJson(json['projectTimeline'] as Map<String, dynamic>?),
      pin: pin.copyWithJson(json['pin'] as Map<String, dynamic>?),
      hoverColor: json['hoverColor'] as Color?,
      appBarTheme: appBarTheme.copyWithJson(json['appBarTheme'] as Map<String, dynamic>?),
      bottomAppBarTheme: bottomAppBarTheme.copyWithJson(json['bottomAppBarTheme'] as Map<String, dynamic>?),
      tooltipTheme: _tooltipTheme.copyWithJson(json['tooltipTheme'] as Map<String, dynamic>?),
      popupMenuTheme: _popupMenuTheme.copyWithJson(json['popupMenuTheme'] as Map<String, dynamic>?),
      dividerTheme: _dividerTheme.copyWithJson(json['dividerTheme'] as Map<String, dynamic>?),
      selectedRowColor: json['selectedRowColor'] as Color?,
    );
  }

  /// To json method.
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
}


// -------------------- ThemeColorPalette_mobile --------------------

/// The Theme Color Palette
class ThemeColorPalette_mobile implements ThemeColorPalette {
  /// The Theme Color Palette
  const ThemeColorPalette_mobile({
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
    required ThemeColorPalette$TooltipTheme_mobile tooltipTheme,
    required ThemeColorPalette$PopupMenuTheme_mobile popupMenuTheme,
    required ThemeColorPalette$DividerTheme_mobile dividerTheme,
    required Color selectedRowColor,
  }):
    _brightness = brightness,
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
  const ThemeColorPalette_mobile.light():
    _brightness = Brightness.light,
    _accentColor = const Color(0xff2864ac),
    _primaryColor = const Color(0xff5182bb),
    _primaryColorLight = const Color(0xffd5e0ee),
    secondaryColor = const Color(0xff7ec141),
    _errorColor = const Color(0xff354d39),
    _disabledColor = const Color(0x61000000),
    textEmphasis = const ThemeColorPalette$TextEmphasis_mobile.light(),
    iconEmphasis = const ThemeColorPalette$IconEmphasis_mobile.light(),
    border = const ThemeColorPalette$Border_mobile.light(),
    background = const ThemeColorPalette$Background_mobile.light(),
    floatingActionButton = const ThemeColorPalette$FloatingActionButton_mobile.light(),
    task = const ThemeColorPalette$Task_mobile.light(),
    form = const ThemeColorPalette$Form_mobile.light(),
    notification = const ThemeColorPalette$Notification_mobile.light(),
    projectTimeline = const ThemeColorPalette$ProjectTimeline_mobile.light(),
    pin = const ThemeColorPalette$Pin_mobile.light(),
    _hoverColor = const Color(0x0a000000),
    appBarTheme = const ThemeColorPalette$AppBarTheme_mobile.light(),
    bottomAppBarTheme = const ThemeColorPalette$BottomAppBarTheme_mobile.light(),
    _tooltipTheme = const ThemeColorPalette$TooltipTheme_mobile.light(),
    _popupMenuTheme = const ThemeColorPalette$PopupMenuTheme_mobile.light(),
    _dividerTheme = const ThemeColorPalette$DividerTheme_mobile.light(),
    _selectedRowColor = const Color(0x142864ac);

  /// The Theme Color Palette
  const ThemeColorPalette_mobile.dark():
    _brightness = Brightness.dark,
    _accentColor = const Color(0xff699fcf),
    _primaryColor = const Color(0xffc1dbef),
    _primaryColorLight = const Color(0xff2c2c2c),
    secondaryColor = const Color(0xff7ec141),
    _errorColor = const Color(0xff354d39),
    _disabledColor = const Color(0x61ffffff),
    textEmphasis = const ThemeColorPalette$TextEmphasis_mobile.dark(),
    iconEmphasis = const ThemeColorPalette$IconEmphasis_mobile.dark(),
    border = const ThemeColorPalette$Border_mobile.dark(),
    background = const ThemeColorPalette$Background_mobile.dark(),
    floatingActionButton = const ThemeColorPalette$FloatingActionButton_mobile.dark(),
    task = const ThemeColorPalette$Task_mobile.dark(),
    form = const ThemeColorPalette$Form_mobile.dark(),
    notification = const ThemeColorPalette$Notification_mobile.dark(),
    projectTimeline = const ThemeColorPalette$ProjectTimeline_mobile.dark(),
    pin = const ThemeColorPalette$Pin_mobile.dark(),
    _hoverColor = const Color(0xa699fcf),
    appBarTheme = const ThemeColorPalette$AppBarTheme_mobile.dark(),
    bottomAppBarTheme = const ThemeColorPalette$BottomAppBarTheme_mobile.dark(),
    _tooltipTheme = const ThemeColorPalette$TooltipTheme_mobile.dark(),
    _popupMenuTheme = const ThemeColorPalette$PopupMenuTheme_mobile.dark(),
    _dividerTheme = const ThemeColorPalette$DividerTheme_mobile.dark(),
    _selectedRowColor = const Color(0x14699fcf);

  /// From json.
  ThemeColorPalette_mobile.fromJson(Map<String, dynamic> json):
    _brightness = json['brightness'] as Brightness,
    _accentColor = json['accentColor'] as Color,
    _primaryColor = json['primaryColor'] as Color,
    _primaryColorLight = json['primaryColorLight'] as Color,
    secondaryColor = json['secondaryColor'] as Color,
    _errorColor = json['errorColor'] as Color,
    _disabledColor = json['disabledColor'] as Color,
    textEmphasis = ThemeColorPalette$TextEmphasis_mobile.fromJson(json['textEmphasis'] as Map<String, dynamic>),
    iconEmphasis = ThemeColorPalette$IconEmphasis_mobile.fromJson(json['iconEmphasis'] as Map<String, dynamic>),
    border = ThemeColorPalette$Border_mobile.fromJson(json['border'] as Map<String, dynamic>),
    background = ThemeColorPalette$Background_mobile.fromJson(json['background'] as Map<String, dynamic>),
    floatingActionButton = ThemeColorPalette$FloatingActionButton_mobile.fromJson(json['floatingActionButton'] as Map<String, dynamic>),
    task = ThemeColorPalette$Task_mobile.fromJson(json['task'] as Map<String, dynamic>),
    form = ThemeColorPalette$Form_mobile.fromJson(json['form'] as Map<String, dynamic>),
    notification = ThemeColorPalette$Notification_mobile.fromJson(json['notification'] as Map<String, dynamic>),
    projectTimeline = ThemeColorPalette$ProjectTimeline_mobile.fromJson(json['projectTimeline'] as Map<String, dynamic>),
    pin = ThemeColorPalette$Pin_mobile.fromJson(json['pin'] as Map<String, dynamic>),
    _hoverColor = json['hoverColor'] as Color,
    appBarTheme = ThemeColorPalette$AppBarTheme_mobile.fromJson(json['appBarTheme'] as Map<String, dynamic>),
    bottomAppBarTheme = ThemeColorPalette$BottomAppBarTheme_mobile.fromJson(json['bottomAppBarTheme'] as Map<String, dynamic>),
    _tooltipTheme = ThemeColorPalette$TooltipTheme_mobile.fromJson(json['tooltipTheme'] as Map<String, dynamic>),
    _popupMenuTheme = ThemeColorPalette$PopupMenuTheme_mobile.fromJson(json['popupMenuTheme'] as Map<String, dynamic>),
    _dividerTheme = ThemeColorPalette$DividerTheme_mobile.fromJson(json['dividerTheme'] as Map<String, dynamic>),
    _selectedRowColor = json['selectedRowColor'] as Color;

  /// Default radius
  static const radius = 4.0;

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
  @override
  final Brightness _brightness;

  /// The accent Color
  ///
  /// Use `theme.accentColor` instead.
  @Deprecated('accent color is deprecated')
  @override
  final Color _accentColor;

  /// Primary color
  ///
  /// Use `theme.primaryColor` instead.
  @override
  final Color _primaryColor;

  /// Primary color light
  ///
  /// Use `theme.primaryColorLight` instead.
  @override
  final Color _primaryColorLight;

  /// Secondary color
  @override
  final Color secondaryColor;

  /// Error Color
  ///
  /// Use `theme.errorColor` instead.
  @override
  final Color _errorColor;

  /// Disabled color
  ///
  /// Use `theme.disabledColor` instead.
  @override
  final Color _disabledColor;

  /// The different text emphasis
  @override
  final ThemeColorPalette$TextEmphasis_mobile textEmphasis;

  /// The different icon emphasis
  @override
  final ThemeColorPalette$IconEmphasis_mobile iconEmphasis;

  /// Borders
  @override
  final ThemeColorPalette$Border_mobile border;

  /// Backgrounds
  @override
  final ThemeColorPalette$Background_mobile background;

  /// Floating action button
  @override
  final ThemeColorPalette$FloatingActionButton_mobile floatingActionButton;

  /// Task color palette
  @override
  final ThemeColorPalette$Task_mobile task;

  /// Form color palette
  @override
  final ThemeColorPalette$Form_mobile form;

  /// Notification color palette
  @override
  final ThemeColorPalette$Notification_mobile notification;

  /// Project time line color palette
  @override
  final ThemeColorPalette$ProjectTimeline_mobile projectTimeline;

  /// Pin theme
  @override
  final ThemeColorPalette$Pin_mobile pin;

  /// Overlay color
  ///
  /// Use `theme.hoverColor` instead.
  @override
  final Color _hoverColor;

  /// 
  @override
  final ThemeColorPalette$AppBarTheme_mobile appBarTheme;

  /// 
  @override
  final ThemeColorPalette$BottomAppBarTheme_mobile bottomAppBarTheme;

  /// Tooltip theme
  ///
  /// Use `theme.tooltipTheme` instead.
  @override
  final ThemeColorPalette$TooltipTheme_mobile _tooltipTheme;

  /// Popup menu theme
  ///
  /// Use `theme.popupMenuTheme` instead.
  @override
  final ThemeColorPalette$PopupMenuTheme_mobile _popupMenuTheme;

  /// Divider theme
  ///
  /// Use `theme.dividerTheme` instead.
  @override
  final ThemeColorPalette$DividerTheme_mobile _dividerTheme;

  /// Selected row color
  ///
  /// Use `theme.selectedRowColor` instead.
  @override
  final Color _selectedRowColor;

  @override
  ThemeColorPalette_mobile copyWith({
    Brightness? brightness,
    @Deprecated('accent color is deprecated')
    Color? accentColor,
    Color? primaryColor,
    Color? primaryColorLight,
    Color? secondaryColor,
    Color? errorColor,
    Color? disabledColor,
    covariant ThemeColorPalette$TextEmphasis_mobile? textEmphasis,
    covariant ThemeColorPalette$IconEmphasis_mobile? iconEmphasis,
    covariant ThemeColorPalette$Border_mobile? border,
    covariant ThemeColorPalette$Background_mobile? background,
    covariant ThemeColorPalette$FloatingActionButton_mobile? floatingActionButton,
    covariant ThemeColorPalette$Task_mobile? task,
    covariant ThemeColorPalette$Form_mobile? form,
    covariant ThemeColorPalette$Notification_mobile? notification,
    covariant ThemeColorPalette$ProjectTimeline_mobile? projectTimeline,
    covariant ThemeColorPalette$Pin_mobile? pin,
    Color? hoverColor,
    covariant ThemeColorPalette$AppBarTheme_mobile? appBarTheme,
    covariant ThemeColorPalette$BottomAppBarTheme_mobile? bottomAppBarTheme,
    covariant ThemeColorPalette$TooltipTheme_mobile? tooltipTheme,
    covariant ThemeColorPalette$PopupMenuTheme_mobile? popupMenuTheme,
    covariant ThemeColorPalette$DividerTheme_mobile? dividerTheme,
    Color? selectedRowColor,
  }) {
    return ThemeColorPalette_mobile(
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

  @override
  /// Copy with json method.
  ThemeColorPalette_mobile copyWithJson([Map<String, dynamic>? json]) {
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
      textEmphasis: textEmphasis.copyWithJson(json['textEmphasis'] as Map<String, dynamic>?),
      iconEmphasis: iconEmphasis.copyWithJson(json['iconEmphasis'] as Map<String, dynamic>?),
      border: border.copyWithJson(json['border'] as Map<String, dynamic>?),
      background: background.copyWithJson(json['background'] as Map<String, dynamic>?),
      floatingActionButton: floatingActionButton.copyWithJson(json['floatingActionButton'] as Map<String, dynamic>?),
      task: task.copyWithJson(json['task'] as Map<String, dynamic>?),
      form: form.copyWithJson(json['form'] as Map<String, dynamic>?),
      notification: notification.copyWithJson(json['notification'] as Map<String, dynamic>?),
      projectTimeline: projectTimeline.copyWithJson(json['projectTimeline'] as Map<String, dynamic>?),
      pin: pin.copyWithJson(json['pin'] as Map<String, dynamic>?),
      hoverColor: json['hoverColor'] as Color?,
      appBarTheme: appBarTheme.copyWithJson(json['appBarTheme'] as Map<String, dynamic>?),
      bottomAppBarTheme: bottomAppBarTheme.copyWithJson(json['bottomAppBarTheme'] as Map<String, dynamic>?),
      tooltipTheme: _tooltipTheme.copyWithJson(json['tooltipTheme'] as Map<String, dynamic>?),
      popupMenuTheme: _popupMenuTheme.copyWithJson(json['popupMenuTheme'] as Map<String, dynamic>?),
      dividerTheme: _dividerTheme.copyWithJson(json['dividerTheme'] as Map<String, dynamic>?),
      selectedRowColor: json['selectedRowColor'] as Color?,
    );
  }

  /// To json method.
  @override
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
}


// -------------------- ThemeColorPalette_web --------------------

/// The Theme Color Palette
class ThemeColorPalette_web implements ThemeColorPalette {
  /// The Theme Color Palette
  const ThemeColorPalette_web({
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
    required ThemeColorPalette$TooltipTheme_web tooltipTheme,
    required ThemeColorPalette$PopupMenuTheme_web popupMenuTheme,
    required ThemeColorPalette$DividerTheme_web dividerTheme,
    required Color selectedRowColor,
  }):
    _brightness = brightness,
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
  const ThemeColorPalette_web.light():
    _brightness = Brightness.light,
    _accentColor = const Color(0xff2864ac),
    _primaryColor = const Color(0xff5182bb),
    _primaryColorLight = const Color(0xffd5e0ee),
    secondaryColor = const Color(0xff7ec141),
    _errorColor = const Color(0xff354d39),
    _disabledColor = const Color(0x61000000),
    textEmphasis = const ThemeColorPalette$TextEmphasis_web.light(),
    iconEmphasis = const ThemeColorPalette$IconEmphasis_web.light(),
    border = const ThemeColorPalette$Border_web.light(),
    background = const ThemeColorPalette$Background_web.light(),
    floatingActionButton = const ThemeColorPalette$FloatingActionButton_web.light(),
    task = const ThemeColorPalette$Task_web.light(),
    form = const ThemeColorPalette$Form_web.light(),
    notification = const ThemeColorPalette$Notification_web.light(),
    projectTimeline = const ThemeColorPalette$ProjectTimeline_web.light(),
    pin = const ThemeColorPalette$Pin_web.light(),
    _hoverColor = const Color(0x0a000000),
    appBarTheme = const ThemeColorPalette$AppBarTheme_web.light(),
    bottomAppBarTheme = const ThemeColorPalette$BottomAppBarTheme_web.light(),
    _tooltipTheme = const ThemeColorPalette$TooltipTheme_web.light(),
    _popupMenuTheme = const ThemeColorPalette$PopupMenuTheme_web.light(),
    _dividerTheme = const ThemeColorPalette$DividerTheme_web.light(),
    _selectedRowColor = const Color(0x142864ac);

  /// The Theme Color Palette
  const ThemeColorPalette_web.dark():
    _brightness = Brightness.dark,
    _accentColor = const Color(0xff699fcf),
    _primaryColor = const Color(0xffc1dbef),
    _primaryColorLight = const Color(0xff2c2c2c),
    secondaryColor = const Color(0xff7ec141),
    _errorColor = const Color(0xff354d39),
    _disabledColor = const Color(0x61ffffff),
    textEmphasis = const ThemeColorPalette$TextEmphasis_web.dark(),
    iconEmphasis = const ThemeColorPalette$IconEmphasis_web.dark(),
    border = const ThemeColorPalette$Border_web.dark(),
    background = const ThemeColorPalette$Background_web.dark(),
    floatingActionButton = const ThemeColorPalette$FloatingActionButton_web.dark(),
    task = const ThemeColorPalette$Task_web.dark(),
    form = const ThemeColorPalette$Form_web.dark(),
    notification = const ThemeColorPalette$Notification_web.dark(),
    projectTimeline = const ThemeColorPalette$ProjectTimeline_web.dark(),
    pin = const ThemeColorPalette$Pin_web.dark(),
    _hoverColor = const Color(0xa699fcf),
    appBarTheme = const ThemeColorPalette$AppBarTheme_web.dark(),
    bottomAppBarTheme = const ThemeColorPalette$BottomAppBarTheme_web.dark(),
    _tooltipTheme = const ThemeColorPalette$TooltipTheme_web.dark(),
    _popupMenuTheme = const ThemeColorPalette$PopupMenuTheme_web.dark(),
    _dividerTheme = const ThemeColorPalette$DividerTheme_web.dark(),
    _selectedRowColor = const Color(0x14699fcf);

  /// From json.
  ThemeColorPalette_web.fromJson(Map<String, dynamic> json):
    _brightness = json['brightness'] as Brightness,
    _accentColor = json['accentColor'] as Color,
    _primaryColor = json['primaryColor'] as Color,
    _primaryColorLight = json['primaryColorLight'] as Color,
    secondaryColor = json['secondaryColor'] as Color,
    _errorColor = json['errorColor'] as Color,
    _disabledColor = json['disabledColor'] as Color,
    textEmphasis = ThemeColorPalette$TextEmphasis_web.fromJson(json['textEmphasis'] as Map<String, dynamic>),
    iconEmphasis = ThemeColorPalette$IconEmphasis_web.fromJson(json['iconEmphasis'] as Map<String, dynamic>),
    border = ThemeColorPalette$Border_web.fromJson(json['border'] as Map<String, dynamic>),
    background = ThemeColorPalette$Background_web.fromJson(json['background'] as Map<String, dynamic>),
    floatingActionButton = ThemeColorPalette$FloatingActionButton_web.fromJson(json['floatingActionButton'] as Map<String, dynamic>),
    task = ThemeColorPalette$Task_web.fromJson(json['task'] as Map<String, dynamic>),
    form = ThemeColorPalette$Form_web.fromJson(json['form'] as Map<String, dynamic>),
    notification = ThemeColorPalette$Notification_web.fromJson(json['notification'] as Map<String, dynamic>),
    projectTimeline = ThemeColorPalette$ProjectTimeline_web.fromJson(json['projectTimeline'] as Map<String, dynamic>),
    pin = ThemeColorPalette$Pin_web.fromJson(json['pin'] as Map<String, dynamic>),
    _hoverColor = json['hoverColor'] as Color,
    appBarTheme = ThemeColorPalette$AppBarTheme_web.fromJson(json['appBarTheme'] as Map<String, dynamic>),
    bottomAppBarTheme = ThemeColorPalette$BottomAppBarTheme_web.fromJson(json['bottomAppBarTheme'] as Map<String, dynamic>),
    _tooltipTheme = ThemeColorPalette$TooltipTheme_web.fromJson(json['tooltipTheme'] as Map<String, dynamic>),
    _popupMenuTheme = ThemeColorPalette$PopupMenuTheme_web.fromJson(json['popupMenuTheme'] as Map<String, dynamic>),
    _dividerTheme = ThemeColorPalette$DividerTheme_web.fromJson(json['dividerTheme'] as Map<String, dynamic>),
    _selectedRowColor = json['selectedRowColor'] as Color;

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

  /// Thickness of the Dividers
  static const divider_thickness = 2.0;

  /// Global brightness of the theme
  ///
  /// Use `theme.brightness` instead.
  @override
  final Brightness _brightness;

  /// The accent Color
  ///
  /// Use `theme.accentColor` instead.
  @Deprecated('accent color is deprecated')
  @override
  final Color _accentColor;

  /// Primary color
  ///
  /// Use `theme.primaryColor` instead.
  @override
  final Color _primaryColor;

  /// Primary color light
  ///
  /// Use `theme.primaryColorLight` instead.
  @override
  final Color _primaryColorLight;

  /// Secondary color
  @override
  final Color secondaryColor;

  /// Error Color
  ///
  /// Use `theme.errorColor` instead.
  @override
  final Color _errorColor;

  /// Disabled color
  ///
  /// Use `theme.disabledColor` instead.
  @override
  final Color _disabledColor;

  /// The different text emphasis
  @override
  final ThemeColorPalette$TextEmphasis_web textEmphasis;

  /// The different icon emphasis
  @override
  final ThemeColorPalette$IconEmphasis_web iconEmphasis;

  /// Borders
  @override
  final ThemeColorPalette$Border_web border;

  /// Backgrounds
  @override
  final ThemeColorPalette$Background_web background;

  /// Floating action button
  @override
  final ThemeColorPalette$FloatingActionButton_web floatingActionButton;

  /// Task color palette
  @override
  final ThemeColorPalette$Task_web task;

  /// Form color palette
  @override
  final ThemeColorPalette$Form_web form;

  /// Notification color palette
  @override
  final ThemeColorPalette$Notification_web notification;

  /// Project time line color palette
  @override
  final ThemeColorPalette$ProjectTimeline_web projectTimeline;

  /// Pin theme
  @override
  final ThemeColorPalette$Pin_web pin;

  /// Overlay color
  ///
  /// Use `theme.hoverColor` instead.
  @override
  final Color _hoverColor;

  /// 
  @override
  final ThemeColorPalette$AppBarTheme_web appBarTheme;

  /// 
  @override
  final ThemeColorPalette$BottomAppBarTheme_web bottomAppBarTheme;

  /// Tooltip theme
  ///
  /// Use `theme.tooltipTheme` instead.
  @override
  final ThemeColorPalette$TooltipTheme_web _tooltipTheme;

  /// Popup menu theme
  ///
  /// Use `theme.popupMenuTheme` instead.
  @override
  final ThemeColorPalette$PopupMenuTheme_web _popupMenuTheme;

  /// Divider theme
  ///
  /// Use `theme.dividerTheme` instead.
  @override
  final ThemeColorPalette$DividerTheme_web _dividerTheme;

  /// Selected row color
  ///
  /// Use `theme.selectedRowColor` instead.
  @override
  final Color _selectedRowColor;

  @override
  ThemeColorPalette_web copyWith({
    Brightness? brightness,
    @Deprecated('accent color is deprecated')
    Color? accentColor,
    Color? primaryColor,
    Color? primaryColorLight,
    Color? secondaryColor,
    Color? errorColor,
    Color? disabledColor,
    covariant ThemeColorPalette$TextEmphasis_web? textEmphasis,
    covariant ThemeColorPalette$IconEmphasis_web? iconEmphasis,
    covariant ThemeColorPalette$Border_web? border,
    covariant ThemeColorPalette$Background_web? background,
    covariant ThemeColorPalette$FloatingActionButton_web? floatingActionButton,
    covariant ThemeColorPalette$Task_web? task,
    covariant ThemeColorPalette$Form_web? form,
    covariant ThemeColorPalette$Notification_web? notification,
    covariant ThemeColorPalette$ProjectTimeline_web? projectTimeline,
    covariant ThemeColorPalette$Pin_web? pin,
    Color? hoverColor,
    covariant ThemeColorPalette$AppBarTheme_web? appBarTheme,
    covariant ThemeColorPalette$BottomAppBarTheme_web? bottomAppBarTheme,
    covariant ThemeColorPalette$TooltipTheme_web? tooltipTheme,
    covariant ThemeColorPalette$PopupMenuTheme_web? popupMenuTheme,
    covariant ThemeColorPalette$DividerTheme_web? dividerTheme,
    Color? selectedRowColor,
  }) {
    return ThemeColorPalette_web(
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

  @override
  /// Copy with json method.
  ThemeColorPalette_web copyWithJson([Map<String, dynamic>? json]) {
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
      textEmphasis: textEmphasis.copyWithJson(json['textEmphasis'] as Map<String, dynamic>?),
      iconEmphasis: iconEmphasis.copyWithJson(json['iconEmphasis'] as Map<String, dynamic>?),
      border: border.copyWithJson(json['border'] as Map<String, dynamic>?),
      background: background.copyWithJson(json['background'] as Map<String, dynamic>?),
      floatingActionButton: floatingActionButton.copyWithJson(json['floatingActionButton'] as Map<String, dynamic>?),
      task: task.copyWithJson(json['task'] as Map<String, dynamic>?),
      form: form.copyWithJson(json['form'] as Map<String, dynamic>?),
      notification: notification.copyWithJson(json['notification'] as Map<String, dynamic>?),
      projectTimeline: projectTimeline.copyWithJson(json['projectTimeline'] as Map<String, dynamic>?),
      pin: pin.copyWithJson(json['pin'] as Map<String, dynamic>?),
      hoverColor: json['hoverColor'] as Color?,
      appBarTheme: appBarTheme.copyWithJson(json['appBarTheme'] as Map<String, dynamic>?),
      bottomAppBarTheme: bottomAppBarTheme.copyWithJson(json['bottomAppBarTheme'] as Map<String, dynamic>?),
      tooltipTheme: _tooltipTheme.copyWithJson(json['tooltipTheme'] as Map<String, dynamic>?),
      popupMenuTheme: _popupMenuTheme.copyWithJson(json['popupMenuTheme'] as Map<String, dynamic>?),
      dividerTheme: _dividerTheme.copyWithJson(json['dividerTheme'] as Map<String, dynamic>?),
      selectedRowColor: json['selectedRowColor'] as Color?,
    );
  }

  /// To json method.
  @override
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
}


// -------------------- ThemeColorPalette$TextEmphasis --------------------

/// The different text emphasis
class ThemeColorPalette$TextEmphasis {
  /// The different text emphasis
  const ThemeColorPalette$TextEmphasis({
    required Color accent,
    required this.success,
    required this.error,
    required this.high,
    required this.medium,
    required this.low,
    required this.disabled,
  }):
    _accent = accent;

  /// The different text emphasis
  const ThemeColorPalette$TextEmphasis.light():
    _accent = const Color(0xff2864ac),
    success = const Color(0xff7ec141),
    error = const Color(0xffe54d39),
    high = const Color(0xff000000),
    medium = const Color(0xde000000),
    low = const Color(0x99000000),
    disabled = const Color(0x99000000);

  /// The different text emphasis
  const ThemeColorPalette$TextEmphasis.dark():
    _accent = const Color(0xff699fcf),
    success = const Color(0xff7ec141),
    error = const Color(0xffe54d39),
    high = const Color(0xffffffff),
    medium = const Color(0xdeffffff),
    low = const Color(0x99ffffff),
    disabled = const Color(0x99ffffff);

  /// From json.
  ThemeColorPalette$TextEmphasis.fromJson(Map<String, dynamic> json):
    _accent = json['accent'] as Color,
    success = json['success'] as Color,
    error = json['error'] as Color,
    high = json['high'] as Color,
    medium = json['medium'] as Color,
    low = json['low'] as Color,
    disabled = json['disabled'] as Color;

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

  ThemeColorPalette$TextEmphasis copyWith({
    Color? accent,
    Color? success,
    Color? error,
    Color? high,
    Color? medium,
    Color? low,
    Color? disabled,
  }) {
    return ThemeColorPalette$TextEmphasis(
      accent: accent ?? _accent,
      success: success ?? this.success,
      error: error ?? this.error,
      high: high ?? this.high,
      medium: medium ?? this.medium,
      low: low ?? this.low,
      disabled: disabled ?? this.disabled,
    );
  }

  /// Copy with json method.
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
    );
  }

  /// To json method.
  Map<String, dynamic> toJson() => {
    'accent': _accent,
    'success': success,
    'error': error,
    'high': high,
    'medium': medium,
    'low': low,
    'disabled': disabled,
  };
}


// -------------------- ThemeColorPalette$TextEmphasis_mobile --------------------

/// The different text emphasis
class ThemeColorPalette$TextEmphasis_mobile implements ThemeColorPalette$TextEmphasis {
  /// The different text emphasis
  const ThemeColorPalette$TextEmphasis_mobile({
    required Color accent,
    required this.success,
    required this.error,
    required this.high,
    required this.medium,
    required this.low,
    required this.disabled,
    required this.reversedMobile,
  }):
    _accent = accent;

  /// The different text emphasis
  const ThemeColorPalette$TextEmphasis_mobile.light():
    _accent = const Color(0xff2864ac),
    success = const Color(0xff7ec141),
    error = const Color(0xffe54d39),
    high = const Color(0xff000000),
    medium = const Color(0xde000000),
    low = const Color(0x99000000),
    disabled = const Color(0x99000000),
    reversedMobile = const ThemeColorPalette$TextEmphasis$ReversedMobile_mobile.light();

  /// The different text emphasis
  const ThemeColorPalette$TextEmphasis_mobile.dark():
    _accent = const Color(0xff699fcf),
    success = const Color(0xff7ec141),
    error = const Color(0xffe54d39),
    high = const Color(0xffffffff),
    medium = const Color(0xdeffffff),
    low = const Color(0x99ffffff),
    disabled = const Color(0x99ffffff),
    reversedMobile = const ThemeColorPalette$TextEmphasis$ReversedMobile_mobile.dark();

  /// From json.
  ThemeColorPalette$TextEmphasis_mobile.fromJson(Map<String, dynamic> json):
    _accent = json['accent'] as Color,
    success = json['success'] as Color,
    error = json['error'] as Color,
    high = json['high'] as Color,
    medium = json['medium'] as Color,
    low = json['low'] as Color,
    disabled = json['disabled'] as Color,
    reversedMobile = ThemeColorPalette$TextEmphasis$ReversedMobile_mobile.fromJson(json['reversedMobile'] as Map<String, dynamic>);

  /// Accent color
  ///
  /// Use `theme.accentColor` instead.
  @override
  final Color _accent;

  /// Success Color
  @override
  final Color success;

  /// Error Color
  @override
  final Color error;

  /// High emphasis
  @override
  final Color high;

  /// Medium emphasis
  @override
  final Color medium;

  /// Low emphasis
  @override
  final Color low;

  /// Disabled emphasis
  @override
  final Color disabled;

  /// Reversed text emphasis
  final ThemeColorPalette$TextEmphasis$ReversedMobile_mobile reversedMobile;

  @override
  ThemeColorPalette$TextEmphasis_mobile copyWith({
    Color? accent,
    Color? success,
    Color? error,
    Color? high,
    Color? medium,
    Color? low,
    Color? disabled,
    ThemeColorPalette$TextEmphasis$ReversedMobile_mobile? reversedMobile,
  }) {
    return ThemeColorPalette$TextEmphasis_mobile(
      accent: accent ?? _accent,
      success: success ?? this.success,
      error: error ?? this.error,
      high: high ?? this.high,
      medium: medium ?? this.medium,
      low: low ?? this.low,
      disabled: disabled ?? this.disabled,
      reversedMobile: reversedMobile ?? this.reversedMobile,
    );
  }

  @override
  /// Copy with json method.
  ThemeColorPalette$TextEmphasis_mobile copyWithJson([Map<String, dynamic>? json]) {
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
      reversedMobile: reversedMobile.copyWithJson(json['reversedMobile'] as Map<String, dynamic>?),
    );
  }

  /// To json method.
  @override
  Map<String, dynamic> toJson() => {
    'accent': _accent,
    'success': success,
    'error': error,
    'high': high,
    'medium': medium,
    'low': low,
    'disabled': disabled,
    'reversedMobile': reversedMobile.toJson(),
  };
}


// -------------------- ThemeColorPalette$TextEmphasis_web --------------------

/// The different text emphasis
class ThemeColorPalette$TextEmphasis_web implements ThemeColorPalette$TextEmphasis {
  /// The different text emphasis
  const ThemeColorPalette$TextEmphasis_web({
    required Color accent,
    required this.success,
    required this.error,
    required this.high,
    required this.medium,
    required this.low,
    required this.disabled,
    required this.reversedWeb,
  }):
    _accent = accent;

  /// The different text emphasis
  const ThemeColorPalette$TextEmphasis_web.light():
    _accent = const Color(0xff2864ac),
    success = const Color(0xff7ec141),
    error = const Color(0xffe54d39),
    high = const Color(0xff000000),
    medium = const Color(0xde000000),
    low = const Color(0x99000000),
    disabled = const Color(0x99000000),
    reversedWeb = const ThemeColorPalette$TextEmphasis$ReversedWeb_web.light();

  /// The different text emphasis
  const ThemeColorPalette$TextEmphasis_web.dark():
    _accent = const Color(0xff699fcf),
    success = const Color(0xff7ec141),
    error = const Color(0xffe54d39),
    high = const Color(0xffffffff),
    medium = const Color(0xdeffffff),
    low = const Color(0x99ffffff),
    disabled = const Color(0x99ffffff),
    reversedWeb = const ThemeColorPalette$TextEmphasis$ReversedWeb_web.dark();

  /// From json.
  ThemeColorPalette$TextEmphasis_web.fromJson(Map<String, dynamic> json):
    _accent = json['accent'] as Color,
    success = json['success'] as Color,
    error = json['error'] as Color,
    high = json['high'] as Color,
    medium = json['medium'] as Color,
    low = json['low'] as Color,
    disabled = json['disabled'] as Color,
    reversedWeb = ThemeColorPalette$TextEmphasis$ReversedWeb_web.fromJson(json['reversedWeb'] as Map<String, dynamic>);

  /// Accent color
  ///
  /// Use `theme.accentColor` instead.
  @override
  final Color _accent;

  /// Success Color
  @override
  final Color success;

  /// Error Color
  @override
  final Color error;

  /// High emphasis
  @override
  final Color high;

  /// Medium emphasis
  @override
  final Color medium;

  /// Low emphasis
  @override
  final Color low;

  /// Disabled emphasis
  @override
  final Color disabled;

  /// Reversed text emphasis
  final ThemeColorPalette$TextEmphasis$ReversedWeb_web reversedWeb;

  @override
  ThemeColorPalette$TextEmphasis_web copyWith({
    Color? accent,
    Color? success,
    Color? error,
    Color? high,
    Color? medium,
    Color? low,
    Color? disabled,
    ThemeColorPalette$TextEmphasis$ReversedWeb_web? reversedWeb,
  }) {
    return ThemeColorPalette$TextEmphasis_web(
      accent: accent ?? _accent,
      success: success ?? this.success,
      error: error ?? this.error,
      high: high ?? this.high,
      medium: medium ?? this.medium,
      low: low ?? this.low,
      disabled: disabled ?? this.disabled,
      reversedWeb: reversedWeb ?? this.reversedWeb,
    );
  }

  @override
  /// Copy with json method.
  ThemeColorPalette$TextEmphasis_web copyWithJson([Map<String, dynamic>? json]) {
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
      reversedWeb: reversedWeb.copyWithJson(json['reversedWeb'] as Map<String, dynamic>?),
    );
  }

  /// To json method.
  @override
  Map<String, dynamic> toJson() => {
    'accent': _accent,
    'success': success,
    'error': error,
    'high': high,
    'medium': medium,
    'low': low,
    'disabled': disabled,
    'reversedWeb': reversedWeb.toJson(),
  };
}


// -------------------- ThemeColorPalette$TextEmphasis$ReversedMobile --------------------

/// Reversed text emphasis
class ThemeColorPalette$TextEmphasis$ReversedMobile {
  /// Reversed text emphasis
  const ThemeColorPalette$TextEmphasis$ReversedMobile();

  /// Reversed text emphasis
  const ThemeColorPalette$TextEmphasis$ReversedMobile.light();

  /// Reversed text emphasis
  const ThemeColorPalette$TextEmphasis$ReversedMobile.dark();

  /// From json.
  ThemeColorPalette$TextEmphasis$ReversedMobile.fromJson(Map<String, dynamic> json);

  ThemeColorPalette$TextEmphasis$ReversedMobile copyWith(){
    return ThemeColorPalette$TextEmphasis$ReversedMobile(
    );
  }

  /// Copy with json method.
  ThemeColorPalette$TextEmphasis$ReversedMobile copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
    );
  }

  /// To json method.
  Map<String, dynamic> toJson() => {
  };
}


// -------------------- ThemeColorPalette$TextEmphasis$ReversedMobile_mobile --------------------

/// Reversed text emphasis
class ThemeColorPalette$TextEmphasis$ReversedMobile_mobile implements ThemeColorPalette$TextEmphasis$ReversedMobile {
  /// Reversed text emphasis
  const ThemeColorPalette$TextEmphasis$ReversedMobile_mobile({
    required this.high,
    required this.medium,
    required this.low,
    required this.disabled,
  });

  /// Reversed text emphasis
  const ThemeColorPalette$TextEmphasis$ReversedMobile_mobile.light():
    high = const Color(0xffffffff),
    medium = const Color(0xdeffffff),
    low = const Color(0x99ffffff),
    disabled = const Color(0x99ffffff);

  /// Reversed text emphasis
  const ThemeColorPalette$TextEmphasis$ReversedMobile_mobile.dark():
    high = const Color(0xff000000),
    medium = const Color(0xde000000),
    low = const Color(0x99000000),
    disabled = const Color(0x99000000);

  /// From json.
  ThemeColorPalette$TextEmphasis$ReversedMobile_mobile.fromJson(Map<String, dynamic> json):
    high = json['high'] as Color,
    medium = json['medium'] as Color,
    low = json['low'] as Color,
    disabled = json['disabled'] as Color;

  /// Reversed high emphasis
  final Color high;

  /// Reversed medium emphasis
  final Color medium;

  /// Reversed low emphasis
  final Color low;

  /// Reversed disabled emphasis
  final Color disabled;

  @override
  ThemeColorPalette$TextEmphasis$ReversedMobile_mobile copyWith({
    Color? high,
    Color? medium,
    Color? low,
    Color? disabled,
  }) {
    return ThemeColorPalette$TextEmphasis$ReversedMobile_mobile(
      high: high ?? this.high,
      medium: medium ?? this.medium,
      low: low ?? this.low,
      disabled: disabled ?? this.disabled,
    );
  }

  @override
  /// Copy with json method.
  ThemeColorPalette$TextEmphasis$ReversedMobile_mobile copyWithJson([Map<String, dynamic>? json]) {
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

  /// To json method.
  @override
  Map<String, dynamic> toJson() => {
    'high': high,
    'medium': medium,
    'low': low,
    'disabled': disabled,
  };
}


// -------------------- ThemeColorPalette$TextEmphasis$ReversedWeb --------------------

/// Reversed text emphasis
class ThemeColorPalette$TextEmphasis$ReversedWeb {
  /// Reversed text emphasis
  const ThemeColorPalette$TextEmphasis$ReversedWeb();

  /// Reversed text emphasis
  const ThemeColorPalette$TextEmphasis$ReversedWeb.light();

  /// Reversed text emphasis
  const ThemeColorPalette$TextEmphasis$ReversedWeb.dark();

  /// From json.
  ThemeColorPalette$TextEmphasis$ReversedWeb.fromJson(Map<String, dynamic> json);

  ThemeColorPalette$TextEmphasis$ReversedWeb copyWith(){
    return ThemeColorPalette$TextEmphasis$ReversedWeb(
    );
  }

  /// Copy with json method.
  ThemeColorPalette$TextEmphasis$ReversedWeb copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
    );
  }

  /// To json method.
  Map<String, dynamic> toJson() => {
  };
}


// -------------------- ThemeColorPalette$TextEmphasis$ReversedWeb_web --------------------

/// Reversed text emphasis
class ThemeColorPalette$TextEmphasis$ReversedWeb_web implements ThemeColorPalette$TextEmphasis$ReversedWeb {
  /// Reversed text emphasis
  const ThemeColorPalette$TextEmphasis$ReversedWeb_web({
    required this.high,
    required this.medium,
    required this.low,
    required this.disabled,
  });

  /// Reversed text emphasis
  const ThemeColorPalette$TextEmphasis$ReversedWeb_web.light():
    high = const Color(0xffffffff),
    medium = const Color(0xdeffffff),
    low = const Color(0x99ffffff),
    disabled = const Color(0x99ffffff);

  /// Reversed text emphasis
  const ThemeColorPalette$TextEmphasis$ReversedWeb_web.dark():
    high = const Color(0xff000000),
    medium = const Color(0xde000000),
    low = const Color(0x99000000),
    disabled = const Color(0x99000000);

  /// From json.
  ThemeColorPalette$TextEmphasis$ReversedWeb_web.fromJson(Map<String, dynamic> json):
    high = json['high'] as Color,
    medium = json['medium'] as Color,
    low = json['low'] as Color,
    disabled = json['disabled'] as Color;

  /// Reversed high emphasis
  final Color high;

  /// Reversed medium emphasis
  final Color medium;

  /// Reversed low emphasis
  final Color low;

  /// Reversed disabled emphasis
  final Color disabled;

  @override
  ThemeColorPalette$TextEmphasis$ReversedWeb_web copyWith({
    Color? high,
    Color? medium,
    Color? low,
    Color? disabled,
  }) {
    return ThemeColorPalette$TextEmphasis$ReversedWeb_web(
      high: high ?? this.high,
      medium: medium ?? this.medium,
      low: low ?? this.low,
      disabled: disabled ?? this.disabled,
    );
  }

  @override
  /// Copy with json method.
  ThemeColorPalette$TextEmphasis$ReversedWeb_web copyWithJson([Map<String, dynamic>? json]) {
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

  /// To json method.
  @override
  Map<String, dynamic> toJson() => {
    'high': high,
    'medium': medium,
    'low': low,
    'disabled': disabled,
  };
}


// -------------------- ThemeColorPalette$IconEmphasis --------------------

/// The different icon emphasis
class ThemeColorPalette$IconEmphasis {
  /// The different icon emphasis
  const ThemeColorPalette$IconEmphasis({
    required this.high,
    required this.medium,
    required this.low,
    required this.disabled,
    required this.reversed,
  });

  /// The different icon emphasis
  const ThemeColorPalette$IconEmphasis.light():
    high = const Color(0xff000000),
    medium = const Color(0xde000000),
    low = const Color(0x99000000),
    disabled = const Color(0x99000000),
    reversed = const ThemeColorPalette$IconEmphasis$Reversed.light();

  /// The different icon emphasis
  const ThemeColorPalette$IconEmphasis.dark():
    high = const Color(0xffffffff),
    medium = const Color(0xdeffffff),
    low = const Color(0x99ffffff),
    disabled = const Color(0x99ffffff),
    reversed = const ThemeColorPalette$IconEmphasis$Reversed.dark();

  /// From json.
  ThemeColorPalette$IconEmphasis.fromJson(Map<String, dynamic> json):
    high = json['high'] as Color,
    medium = json['medium'] as Color,
    low = json['low'] as Color,
    disabled = json['disabled'] as Color,
    reversed = ThemeColorPalette$IconEmphasis$Reversed.fromJson(json['reversed'] as Map<String, dynamic>);

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

  ThemeColorPalette$IconEmphasis copyWith({
    Color? high,
    Color? medium,
    Color? low,
    Color? disabled,
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

  /// Copy with json method.
  ThemeColorPalette$IconEmphasis copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      high: json['high'] as Color?,
      medium: json['medium'] as Color?,
      low: json['low'] as Color?,
      disabled: json['disabled'] as Color?,
      reversed: reversed.copyWithJson(json['reversed'] as Map<String, dynamic>?),
    );
  }

  /// To json method.
  Map<String, dynamic> toJson() => {
    'high': high,
    'medium': medium,
    'low': low,
    'disabled': disabled,
    'reversed': reversed.toJson(),
  };
}


// -------------------- ThemeColorPalette$IconEmphasis_mobile --------------------

/// The different icon emphasis
class ThemeColorPalette$IconEmphasis_mobile implements ThemeColorPalette$IconEmphasis {
  /// The different icon emphasis
  const ThemeColorPalette$IconEmphasis_mobile({
    required this.high,
    required this.medium,
    required this.low,
    required this.disabled,
    required this.reversed,
  });

  /// The different icon emphasis
  const ThemeColorPalette$IconEmphasis_mobile.light():
    high = const Color(0xff000000),
    medium = const Color(0xde000000),
    low = const Color(0x99000000),
    disabled = const Color(0x99000000),
    reversed = const ThemeColorPalette$IconEmphasis$Reversed_mobile.light();

  /// The different icon emphasis
  const ThemeColorPalette$IconEmphasis_mobile.dark():
    high = const Color(0xffffffff),
    medium = const Color(0xdeffffff),
    low = const Color(0x99ffffff),
    disabled = const Color(0x99ffffff),
    reversed = const ThemeColorPalette$IconEmphasis$Reversed_mobile.dark();

  /// From json.
  ThemeColorPalette$IconEmphasis_mobile.fromJson(Map<String, dynamic> json):
    high = json['high'] as Color,
    medium = json['medium'] as Color,
    low = json['low'] as Color,
    disabled = json['disabled'] as Color,
    reversed = ThemeColorPalette$IconEmphasis$Reversed_mobile.fromJson(json['reversed'] as Map<String, dynamic>);

  /// High emphasis
  @override
  final Color high;

  /// Medium emphasis
  @override
  final Color medium;

  /// Low emphasis
  @override
  final Color low;

  /// Disabled emphasis
  @override
  final Color disabled;

  /// Reversed icon emphasis
  @override
  final ThemeColorPalette$IconEmphasis$Reversed_mobile reversed;

  @override
  ThemeColorPalette$IconEmphasis_mobile copyWith({
    Color? high,
    Color? medium,
    Color? low,
    Color? disabled,
    covariant ThemeColorPalette$IconEmphasis$Reversed_mobile? reversed,
  }) {
    return ThemeColorPalette$IconEmphasis_mobile(
      high: high ?? this.high,
      medium: medium ?? this.medium,
      low: low ?? this.low,
      disabled: disabled ?? this.disabled,
      reversed: reversed ?? this.reversed,
    );
  }

  @override
  /// Copy with json method.
  ThemeColorPalette$IconEmphasis_mobile copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      high: json['high'] as Color?,
      medium: json['medium'] as Color?,
      low: json['low'] as Color?,
      disabled: json['disabled'] as Color?,
      reversed: reversed.copyWithJson(json['reversed'] as Map<String, dynamic>?),
    );
  }

  /// To json method.
  @override
  Map<String, dynamic> toJson() => {
    'high': high,
    'medium': medium,
    'low': low,
    'disabled': disabled,
    'reversed': reversed.toJson(),
  };
}


// -------------------- ThemeColorPalette$IconEmphasis_web --------------------

/// The different icon emphasis
class ThemeColorPalette$IconEmphasis_web implements ThemeColorPalette$IconEmphasis {
  /// The different icon emphasis
  const ThemeColorPalette$IconEmphasis_web({
    required this.high,
    required this.medium,
    required this.low,
    required this.disabled,
    required this.reversed,
  });

  /// The different icon emphasis
  const ThemeColorPalette$IconEmphasis_web.light():
    high = const Color(0xff000000),
    medium = const Color(0xde000000),
    low = const Color(0x99000000),
    disabled = const Color(0x99000000),
    reversed = const ThemeColorPalette$IconEmphasis$Reversed_web.light();

  /// The different icon emphasis
  const ThemeColorPalette$IconEmphasis_web.dark():
    high = const Color(0xffffffff),
    medium = const Color(0xdeffffff),
    low = const Color(0x99ffffff),
    disabled = const Color(0x99ffffff),
    reversed = const ThemeColorPalette$IconEmphasis$Reversed_web.dark();

  /// From json.
  ThemeColorPalette$IconEmphasis_web.fromJson(Map<String, dynamic> json):
    high = json['high'] as Color,
    medium = json['medium'] as Color,
    low = json['low'] as Color,
    disabled = json['disabled'] as Color,
    reversed = ThemeColorPalette$IconEmphasis$Reversed_web.fromJson(json['reversed'] as Map<String, dynamic>);

  /// High emphasis
  @override
  final Color high;

  /// Medium emphasis
  @override
  final Color medium;

  /// Low emphasis
  @override
  final Color low;

  /// Disabled emphasis
  @override
  final Color disabled;

  /// Reversed icon emphasis
  @override
  final ThemeColorPalette$IconEmphasis$Reversed_web reversed;

  @override
  ThemeColorPalette$IconEmphasis_web copyWith({
    Color? high,
    Color? medium,
    Color? low,
    Color? disabled,
    covariant ThemeColorPalette$IconEmphasis$Reversed_web? reversed,
  }) {
    return ThemeColorPalette$IconEmphasis_web(
      high: high ?? this.high,
      medium: medium ?? this.medium,
      low: low ?? this.low,
      disabled: disabled ?? this.disabled,
      reversed: reversed ?? this.reversed,
    );
  }

  @override
  /// Copy with json method.
  ThemeColorPalette$IconEmphasis_web copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      high: json['high'] as Color?,
      medium: json['medium'] as Color?,
      low: json['low'] as Color?,
      disabled: json['disabled'] as Color?,
      reversed: reversed.copyWithJson(json['reversed'] as Map<String, dynamic>?),
    );
  }

  /// To json method.
  @override
  Map<String, dynamic> toJson() => {
    'high': high,
    'medium': medium,
    'low': low,
    'disabled': disabled,
    'reversed': reversed.toJson(),
  };
}


// -------------------- ThemeColorPalette$IconEmphasis$Reversed --------------------

/// Reversed icon emphasis
class ThemeColorPalette$IconEmphasis$Reversed {
  /// Reversed icon emphasis
  const ThemeColorPalette$IconEmphasis$Reversed({
    required this.high,
    required this.medium,
    required this.low,
    required this.disabled,
  });

  /// Reversed icon emphasis
  const ThemeColorPalette$IconEmphasis$Reversed.light():
    high = const Color(0xffffffff),
    medium = const Color(0xdeffffff),
    low = const Color(0x99ffffff),
    disabled = const Color(0x99ffffff);

  /// Reversed icon emphasis
  const ThemeColorPalette$IconEmphasis$Reversed.dark():
    high = const Color(0xff000000),
    medium = const Color(0xde000000),
    low = const Color(0x99000000),
    disabled = const Color(0x99000000);

  /// From json.
  ThemeColorPalette$IconEmphasis$Reversed.fromJson(Map<String, dynamic> json):
    high = json['high'] as Color,
    medium = json['medium'] as Color,
    low = json['low'] as Color,
    disabled = json['disabled'] as Color;

  /// Reversed high emphasis
  final Color high;

  /// Reversed medium emphasis
  final Color medium;

  /// Reversed low emphasis
  final Color low;

  /// Reversed disabled emphasis
  final Color disabled;

  ThemeColorPalette$IconEmphasis$Reversed copyWith({
    Color? high,
    Color? medium,
    Color? low,
    Color? disabled,
  }) {
    return ThemeColorPalette$IconEmphasis$Reversed(
      high: high ?? this.high,
      medium: medium ?? this.medium,
      low: low ?? this.low,
      disabled: disabled ?? this.disabled,
    );
  }

  /// Copy with json method.
  ThemeColorPalette$IconEmphasis$Reversed copyWithJson([Map<String, dynamic>? json]) {
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

  /// To json method.
  Map<String, dynamic> toJson() => {
    'high': high,
    'medium': medium,
    'low': low,
    'disabled': disabled,
  };
}


// -------------------- ThemeColorPalette$IconEmphasis$Reversed_mobile --------------------

/// Reversed icon emphasis
class ThemeColorPalette$IconEmphasis$Reversed_mobile implements ThemeColorPalette$IconEmphasis$Reversed {
  /// Reversed icon emphasis
  const ThemeColorPalette$IconEmphasis$Reversed_mobile({
    required this.high,
    required this.medium,
    required this.low,
    required this.disabled,
  });

  /// Reversed icon emphasis
  const ThemeColorPalette$IconEmphasis$Reversed_mobile.light():
    high = const Color(0xffffffff),
    medium = const Color(0xdeffffff),
    low = const Color(0x99ffffff),
    disabled = const Color(0x99ffffff);

  /// Reversed icon emphasis
  const ThemeColorPalette$IconEmphasis$Reversed_mobile.dark():
    high = const Color(0xff000000),
    medium = const Color(0xde000000),
    low = const Color(0x99000000),
    disabled = const Color(0x99000000);

  /// From json.
  ThemeColorPalette$IconEmphasis$Reversed_mobile.fromJson(Map<String, dynamic> json):
    high = json['high'] as Color,
    medium = json['medium'] as Color,
    low = json['low'] as Color,
    disabled = json['disabled'] as Color;

  /// Reversed high emphasis
  @override
  final Color high;

  /// Reversed medium emphasis
  @override
  final Color medium;

  /// Reversed low emphasis
  @override
  final Color low;

  /// Reversed disabled emphasis
  @override
  final Color disabled;

  @override
  ThemeColorPalette$IconEmphasis$Reversed_mobile copyWith({
    Color? high,
    Color? medium,
    Color? low,
    Color? disabled,
  }) {
    return ThemeColorPalette$IconEmphasis$Reversed_mobile(
      high: high ?? this.high,
      medium: medium ?? this.medium,
      low: low ?? this.low,
      disabled: disabled ?? this.disabled,
    );
  }

  @override
  /// Copy with json method.
  ThemeColorPalette$IconEmphasis$Reversed_mobile copyWithJson([Map<String, dynamic>? json]) {
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

  /// To json method.
  @override
  Map<String, dynamic> toJson() => {
    'high': high,
    'medium': medium,
    'low': low,
    'disabled': disabled,
  };
}


// -------------------- ThemeColorPalette$IconEmphasis$Reversed_web --------------------

/// Reversed icon emphasis
class ThemeColorPalette$IconEmphasis$Reversed_web implements ThemeColorPalette$IconEmphasis$Reversed {
  /// Reversed icon emphasis
  const ThemeColorPalette$IconEmphasis$Reversed_web({
    required this.high,
    required this.medium,
    required this.low,
    required this.disabled,
  });

  /// Reversed icon emphasis
  const ThemeColorPalette$IconEmphasis$Reversed_web.light():
    high = const Color(0xffffffff),
    medium = const Color(0xdeffffff),
    low = const Color(0x99ffffff),
    disabled = const Color(0x99ffffff);

  /// Reversed icon emphasis
  const ThemeColorPalette$IconEmphasis$Reversed_web.dark():
    high = const Color(0xff000000),
    medium = const Color(0xde000000),
    low = const Color(0x99000000),
    disabled = const Color(0x99000000);

  /// From json.
  ThemeColorPalette$IconEmphasis$Reversed_web.fromJson(Map<String, dynamic> json):
    high = json['high'] as Color,
    medium = json['medium'] as Color,
    low = json['low'] as Color,
    disabled = json['disabled'] as Color;

  /// Reversed high emphasis
  @override
  final Color high;

  /// Reversed medium emphasis
  @override
  final Color medium;

  /// Reversed low emphasis
  @override
  final Color low;

  /// Reversed disabled emphasis
  @override
  final Color disabled;

  @override
  ThemeColorPalette$IconEmphasis$Reversed_web copyWith({
    Color? high,
    Color? medium,
    Color? low,
    Color? disabled,
  }) {
    return ThemeColorPalette$IconEmphasis$Reversed_web(
      high: high ?? this.high,
      medium: medium ?? this.medium,
      low: low ?? this.low,
      disabled: disabled ?? this.disabled,
    );
  }

  @override
  /// Copy with json method.
  ThemeColorPalette$IconEmphasis$Reversed_web copyWithJson([Map<String, dynamic>? json]) {
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

  /// To json method.
  @override
  Map<String, dynamic> toJson() => {
    'high': high,
    'medium': medium,
    'low': low,
    'disabled': disabled,
  };
}


// -------------------- ThemeColorPalette$Border --------------------

/// Borders
class ThemeColorPalette$Border {
  /// Borders
  const ThemeColorPalette$Border({
    required this.high,
    required this.medium,
    required Color divider,
  }):
    _divider = divider;

  /// Borders
  const ThemeColorPalette$Border.light():
    high = const Color(0xff5c5c5c),
    medium = const Color(0xffe0e0e0),
    _divider = const Color(0x0a000000);

  /// Borders
  const ThemeColorPalette$Border.dark():
    high = const Color(0xfff5f5f5),
    medium = const Color(0xff474747),
    _divider = const Color(0xff434343);

  /// From json.
  ThemeColorPalette$Border.fromJson(Map<String, dynamic> json):
    high = json['high'] as Color,
    medium = json['medium'] as Color,
    _divider = json['divider'] as Color;

  /// High border
  final Color high;

  /// Medium border
  final Color medium;

  /// Color for the Dividers
  ///
  /// Use `theme.dividerColor` instead.
  final Color _divider;

  ThemeColorPalette$Border copyWith({
    Color? high,
    Color? medium,
    Color? divider,
  }) {
    return ThemeColorPalette$Border(
      high: high ?? this.high,
      medium: medium ?? this.medium,
      divider: divider ?? _divider,
    );
  }

  /// Copy with json method.
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

  /// To json method.
  Map<String, dynamic> toJson() => {
    'high': high,
    'medium': medium,
    'divider': _divider,
  };
}


// -------------------- ThemeColorPalette$Border_mobile --------------------

/// Borders
class ThemeColorPalette$Border_mobile implements ThemeColorPalette$Border {
  /// Borders
  const ThemeColorPalette$Border_mobile({
    required this.high,
    required this.medium,
    required Color divider,
  }):
    _divider = divider;

  /// Borders
  const ThemeColorPalette$Border_mobile.light():
    high = const Color(0xff5c5c5c),
    medium = const Color(0xffe0e0e0),
    _divider = const Color(0x0a000000);

  /// Borders
  const ThemeColorPalette$Border_mobile.dark():
    high = const Color(0xfff5f5f5),
    medium = const Color(0xff474747),
    _divider = const Color(0xff434343);

  /// From json.
  ThemeColorPalette$Border_mobile.fromJson(Map<String, dynamic> json):
    high = json['high'] as Color,
    medium = json['medium'] as Color,
    _divider = json['divider'] as Color;

  /// High border
  @override
  final Color high;

  /// Medium border
  @override
  final Color medium;

  /// Color for the Dividers
  ///
  /// Use `theme.dividerColor` instead.
  @override
  final Color _divider;

  @override
  ThemeColorPalette$Border_mobile copyWith({
    Color? high,
    Color? medium,
    Color? divider,
  }) {
    return ThemeColorPalette$Border_mobile(
      high: high ?? this.high,
      medium: medium ?? this.medium,
      divider: divider ?? _divider,
    );
  }

  @override
  /// Copy with json method.
  ThemeColorPalette$Border_mobile copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      high: json['high'] as Color?,
      medium: json['medium'] as Color?,
      divider: json['divider'] as Color?,
    );
  }

  /// To json method.
  @override
  Map<String, dynamic> toJson() => {
    'high': high,
    'medium': medium,
    'divider': _divider,
  };
}


// -------------------- ThemeColorPalette$Border_web --------------------

/// Borders
class ThemeColorPalette$Border_web implements ThemeColorPalette$Border {
  /// Borders
  const ThemeColorPalette$Border_web({
    required this.high,
    required this.medium,
    required Color divider,
  }):
    _divider = divider;

  /// Borders
  const ThemeColorPalette$Border_web.light():
    high = const Color(0xff5c5c5c),
    medium = const Color(0xffe0e0e0),
    _divider = const Color(0x0a000000);

  /// Borders
  const ThemeColorPalette$Border_web.dark():
    high = const Color(0xfff5f5f5),
    medium = const Color(0xff474747),
    _divider = const Color(0xff434343);

  /// From json.
  ThemeColorPalette$Border_web.fromJson(Map<String, dynamic> json):
    high = json['high'] as Color,
    medium = json['medium'] as Color,
    _divider = json['divider'] as Color;

  /// High border
  @override
  final Color high;

  /// Medium border
  @override
  final Color medium;

  /// Color for the Dividers
  ///
  /// Use `theme.dividerColor` instead.
  @override
  final Color _divider;

  @override
  ThemeColorPalette$Border_web copyWith({
    Color? high,
    Color? medium,
    Color? divider,
  }) {
    return ThemeColorPalette$Border_web(
      high: high ?? this.high,
      medium: medium ?? this.medium,
      divider: divider ?? _divider,
    );
  }

  @override
  /// Copy with json method.
  ThemeColorPalette$Border_web copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      high: json['high'] as Color?,
      medium: json['medium'] as Color?,
      divider: json['divider'] as Color?,
    );
  }

  /// To json method.
  @override
  Map<String, dynamic> toJson() => {
    'high': high,
    'medium': medium,
    'divider': _divider,
  };
}


// -------------------- ThemeColorPalette$Background --------------------

/// Backgrounds
class ThemeColorPalette$Background {
  /// Backgrounds
  const ThemeColorPalette$Background({
    required this.disabled,
    required Color backgroundColor,
    required this.background1,
    required Color scaffold,
    required Color canvas,
    required Color card,
  }):
    _backgroundColor = backgroundColor,
    _scaffold = scaffold,
    _canvas = canvas,
    _card = card;

  /// Backgrounds
  const ThemeColorPalette$Background.light():
    disabled = const Color(0xfff8f8f8),
    _backgroundColor = const Color(0xfff8f8f8),
    background1 = const Color(0xfff6f9fc),
    _scaffold = const Color(0xfff3f2ef),
    _canvas = const Color(0xfff8f8f8),
    _card = const Color(0xffffffff);

  /// Backgrounds
  const ThemeColorPalette$Background.dark():
    disabled = const Color(0xff121212),
    _backgroundColor = const Color(0xff000000),
    background1 = const Color(0xff2e2e2e),
    _scaffold = const Color(0xff121212),
    _canvas = const Color(0xfff8f8f8),
    _card = const Color(0xff1e1e1e);

  /// From json.
  ThemeColorPalette$Background.fromJson(Map<String, dynamic> json):
    disabled = json['disabled'] as Color,
    _backgroundColor = json['backgroundColor'] as Color,
    background1 = json['background1'] as Color,
    _scaffold = json['scaffold'] as Color,
    _canvas = json['canvas'] as Color,
    _card = json['card'] as Color;

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

  ThemeColorPalette$Background copyWith({
    Color? disabled,
    Color? backgroundColor,
    Color? background1,
    Color? scaffold,
    Color? canvas,
    Color? card,
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

  /// Copy with json method.
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

  /// To json method.
  Map<String, dynamic> toJson() => {
    'disabled': disabled,
    'backgroundColor': _backgroundColor,
    'background1': background1,
    'scaffold': _scaffold,
    'canvas': _canvas,
    'card': _card,
  };
}


// -------------------- ThemeColorPalette$Background_mobile --------------------

/// Backgrounds
class ThemeColorPalette$Background_mobile implements ThemeColorPalette$Background {
  /// Backgrounds
  const ThemeColorPalette$Background_mobile({
    required this.disabled,
    required Color backgroundColor,
    required this.background1,
    required Color scaffold,
    required Color canvas,
    required Color card,
  }):
    _backgroundColor = backgroundColor,
    _scaffold = scaffold,
    _canvas = canvas,
    _card = card;

  /// Backgrounds
  const ThemeColorPalette$Background_mobile.light():
    disabled = const Color(0xfff8f8f8),
    _backgroundColor = const Color(0xfff8f8f8),
    background1 = const Color(0xfff6f9fc),
    _scaffold = const Color(0xfff3f2ef),
    _canvas = const Color(0xfff8f8f8),
    _card = const Color(0xffffffff);

  /// Backgrounds
  const ThemeColorPalette$Background_mobile.dark():
    disabled = const Color(0xff121212),
    _backgroundColor = const Color(0xff000000),
    background1 = const Color(0xff2e2e2e),
    _scaffold = const Color(0xff121212),
    _canvas = const Color(0xfff8f8f8),
    _card = const Color(0xff1e1e1e);

  /// From json.
  ThemeColorPalette$Background_mobile.fromJson(Map<String, dynamic> json):
    disabled = json['disabled'] as Color,
    _backgroundColor = json['backgroundColor'] as Color,
    background1 = json['background1'] as Color,
    _scaffold = json['scaffold'] as Color,
    _canvas = json['canvas'] as Color,
    _card = json['card'] as Color;

  /// Disabled background
  @override
  final Color disabled;

  /// Background color
  ///
  /// Use `theme.backgroundColor` instead.
  @override
  final Color _backgroundColor;

  /// Background 1
  @override
  final Color background1;

  /// Scaffold background color
  ///
  /// Use `theme.scaffoldBackgroundColor` instead.
  @override
  final Color _scaffold;

  /// Canvas background color
  ///
  /// Use `theme.canvasColor` instead.
  @override
  final Color _canvas;

  /// Card Color
  ///
  /// Use `theme.cardColor` instead.
  @override
  final Color _card;

  @override
  ThemeColorPalette$Background_mobile copyWith({
    Color? disabled,
    Color? backgroundColor,
    Color? background1,
    Color? scaffold,
    Color? canvas,
    Color? card,
  }) {
    return ThemeColorPalette$Background_mobile(
      disabled: disabled ?? this.disabled,
      backgroundColor: backgroundColor ?? _backgroundColor,
      background1: background1 ?? this.background1,
      scaffold: scaffold ?? _scaffold,
      canvas: canvas ?? _canvas,
      card: card ?? _card,
    );
  }

  @override
  /// Copy with json method.
  ThemeColorPalette$Background_mobile copyWithJson([Map<String, dynamic>? json]) {
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

  /// To json method.
  @override
  Map<String, dynamic> toJson() => {
    'disabled': disabled,
    'backgroundColor': _backgroundColor,
    'background1': background1,
    'scaffold': _scaffold,
    'canvas': _canvas,
    'card': _card,
  };
}


// -------------------- ThemeColorPalette$Background_web --------------------

/// Backgrounds
class ThemeColorPalette$Background_web implements ThemeColorPalette$Background {
  /// Backgrounds
  const ThemeColorPalette$Background_web({
    required this.disabled,
    required Color backgroundColor,
    required this.background1,
    required Color scaffold,
    required Color canvas,
    required Color card,
  }):
    _backgroundColor = backgroundColor,
    _scaffold = scaffold,
    _canvas = canvas,
    _card = card;

  /// Backgrounds
  const ThemeColorPalette$Background_web.light():
    disabled = const Color(0xfff8f8f8),
    _backgroundColor = const Color(0xfff8f8f8),
    background1 = const Color(0xfff6f9fc),
    _scaffold = const Color(0xfff3f2ef),
    _canvas = const Color(0xfff8f8f8),
    _card = const Color(0xffffffff);

  /// Backgrounds
  const ThemeColorPalette$Background_web.dark():
    disabled = const Color(0xff121212),
    _backgroundColor = const Color(0xff000000),
    background1 = const Color(0xff2e2e2e),
    _scaffold = const Color(0xff121212),
    _canvas = const Color(0xfff8f8f8),
    _card = const Color(0xff1e1e1e);

  /// From json.
  ThemeColorPalette$Background_web.fromJson(Map<String, dynamic> json):
    disabled = json['disabled'] as Color,
    _backgroundColor = json['backgroundColor'] as Color,
    background1 = json['background1'] as Color,
    _scaffold = json['scaffold'] as Color,
    _canvas = json['canvas'] as Color,
    _card = json['card'] as Color;

  /// Disabled background
  @override
  final Color disabled;

  /// Background color
  ///
  /// Use `theme.backgroundColor` instead.
  @override
  final Color _backgroundColor;

  /// Background 1
  @override
  final Color background1;

  /// Scaffold background color
  ///
  /// Use `theme.scaffoldBackgroundColor` instead.
  @override
  final Color _scaffold;

  /// Canvas background color
  ///
  /// Use `theme.canvasColor` instead.
  @override
  final Color _canvas;

  /// Card Color
  ///
  /// Use `theme.cardColor` instead.
  @override
  final Color _card;

  @override
  ThemeColorPalette$Background_web copyWith({
    Color? disabled,
    Color? backgroundColor,
    Color? background1,
    Color? scaffold,
    Color? canvas,
    Color? card,
  }) {
    return ThemeColorPalette$Background_web(
      disabled: disabled ?? this.disabled,
      backgroundColor: backgroundColor ?? _backgroundColor,
      background1: background1 ?? this.background1,
      scaffold: scaffold ?? _scaffold,
      canvas: canvas ?? _canvas,
      card: card ?? _card,
    );
  }

  @override
  /// Copy with json method.
  ThemeColorPalette$Background_web copyWithJson([Map<String, dynamic>? json]) {
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

  /// To json method.
  @override
  Map<String, dynamic> toJson() => {
    'disabled': disabled,
    'backgroundColor': _backgroundColor,
    'background1': background1,
    'scaffold': _scaffold,
    'canvas': _canvas,
    'card': _card,
  };
}


// -------------------- ThemeColorPalette$FloatingActionButton --------------------

/// Floating action button
class ThemeColorPalette$FloatingActionButton {
  /// Floating action button
  const ThemeColorPalette$FloatingActionButton({
    required this.disabledColor,
    required Color backgroundColor,
    required Color foregroundColor,
    required double disabledElevation,
  }):
    _backgroundColor = backgroundColor,
    _foregroundColor = foregroundColor,
    _disabledElevation = disabledElevation;

  /// Floating action button
  const ThemeColorPalette$FloatingActionButton.light():
    disabledColor = const Color(0xffadc4df),
    _backgroundColor = const Color(0xff2864ac),
    _foregroundColor = const Color(0xffffffff),
    _disabledElevation = 0.0;

  /// Floating action button
  const ThemeColorPalette$FloatingActionButton.dark():
    disabledColor = const Color(0xff225281),
    _backgroundColor = const Color(0xff699fcf),
    _foregroundColor = const Color(0xff000000),
    _disabledElevation = 0.0;

  /// From json.
  ThemeColorPalette$FloatingActionButton.fromJson(Map<String, dynamic> json):
    disabledColor = json['disabledColor'] as Color,
    _backgroundColor = json['backgroundColor'] as Color,
    _foregroundColor = json['foregroundColor'] as Color,
    _disabledElevation = json['disabledElevation'] as double;

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

  ThemeColorPalette$FloatingActionButton copyWith({
    Color? disabledColor,
    Color? backgroundColor,
    Color? foregroundColor,
    double? disabledElevation,
  }) {
    return ThemeColorPalette$FloatingActionButton(
      disabledColor: disabledColor ?? this.disabledColor,
      backgroundColor: backgroundColor ?? _backgroundColor,
      foregroundColor: foregroundColor ?? _foregroundColor,
      disabledElevation: disabledElevation ?? _disabledElevation,
    );
  }

  /// Copy with json method.
  ThemeColorPalette$FloatingActionButton copyWithJson([Map<String, dynamic>? json]) {
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

  /// To json method.
  Map<String, dynamic> toJson() => {
    'disabledColor': disabledColor,
    'backgroundColor': _backgroundColor,
    'foregroundColor': _foregroundColor,
    'disabledElevation': _disabledElevation,
  };
}


// -------------------- ThemeColorPalette$FloatingActionButton_mobile --------------------

/// Floating action button
class ThemeColorPalette$FloatingActionButton_mobile implements ThemeColorPalette$FloatingActionButton {
  /// Floating action button
  const ThemeColorPalette$FloatingActionButton_mobile({
    required this.disabledColor,
    required Color backgroundColor,
    required Color foregroundColor,
    required double disabledElevation,
  }):
    _backgroundColor = backgroundColor,
    _foregroundColor = foregroundColor,
    _disabledElevation = disabledElevation;

  /// Floating action button
  const ThemeColorPalette$FloatingActionButton_mobile.light():
    disabledColor = const Color(0xffadc4df),
    _backgroundColor = const Color(0xff2864ac),
    _foregroundColor = const Color(0xffffffff),
    _disabledElevation = 0.0;

  /// Floating action button
  const ThemeColorPalette$FloatingActionButton_mobile.dark():
    disabledColor = const Color(0xff225281),
    _backgroundColor = const Color(0xff699fcf),
    _foregroundColor = const Color(0xff000000),
    _disabledElevation = 0.0;

  /// From json.
  ThemeColorPalette$FloatingActionButton_mobile.fromJson(Map<String, dynamic> json):
    disabledColor = json['disabledColor'] as Color,
    _backgroundColor = json['backgroundColor'] as Color,
    _foregroundColor = json['foregroundColor'] as Color,
    _disabledElevation = json['disabledElevation'] as double;

  /// Disabled color
  @override
  final Color disabledColor;

  /// Background color of the floating action button
  ///
  /// Use `theme.floatingActionButtonTheme.backgroundColor` instead.
  @override
  final Color _backgroundColor;

  /// Icon color of the floating action button
  ///
  /// Use `theme.floatingActionButtonTheme.foregroundColor` instead.
  @override
  final Color _foregroundColor;

  /// Disabled elevation of the floating action button
  ///
  /// Use `theme.floatingActionButtonTheme.disabledElevation` instead.
  @override
  final double _disabledElevation;

  @override
  ThemeColorPalette$FloatingActionButton_mobile copyWith({
    Color? disabledColor,
    Color? backgroundColor,
    Color? foregroundColor,
    double? disabledElevation,
  }) {
    return ThemeColorPalette$FloatingActionButton_mobile(
      disabledColor: disabledColor ?? this.disabledColor,
      backgroundColor: backgroundColor ?? _backgroundColor,
      foregroundColor: foregroundColor ?? _foregroundColor,
      disabledElevation: disabledElevation ?? _disabledElevation,
    );
  }

  @override
  /// Copy with json method.
  ThemeColorPalette$FloatingActionButton_mobile copyWithJson([Map<String, dynamic>? json]) {
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

  /// To json method.
  @override
  Map<String, dynamic> toJson() => {
    'disabledColor': disabledColor,
    'backgroundColor': _backgroundColor,
    'foregroundColor': _foregroundColor,
    'disabledElevation': _disabledElevation,
  };
}


// -------------------- ThemeColorPalette$FloatingActionButton_web --------------------

/// Floating action button
class ThemeColorPalette$FloatingActionButton_web implements ThemeColorPalette$FloatingActionButton {
  /// Floating action button
  const ThemeColorPalette$FloatingActionButton_web({
    required this.disabledColor,
    required Color backgroundColor,
    required Color foregroundColor,
    required double disabledElevation,
  }):
    _backgroundColor = backgroundColor,
    _foregroundColor = foregroundColor,
    _disabledElevation = disabledElevation;

  /// Floating action button
  const ThemeColorPalette$FloatingActionButton_web.light():
    disabledColor = const Color(0xffadc4df),
    _backgroundColor = const Color(0xff2864ac),
    _foregroundColor = const Color(0xffffffff),
    _disabledElevation = 0.0;

  /// Floating action button
  const ThemeColorPalette$FloatingActionButton_web.dark():
    disabledColor = const Color(0xff225281),
    _backgroundColor = const Color(0xff699fcf),
    _foregroundColor = const Color(0xff000000),
    _disabledElevation = 0.0;

  /// From json.
  ThemeColorPalette$FloatingActionButton_web.fromJson(Map<String, dynamic> json):
    disabledColor = json['disabledColor'] as Color,
    _backgroundColor = json['backgroundColor'] as Color,
    _foregroundColor = json['foregroundColor'] as Color,
    _disabledElevation = json['disabledElevation'] as double;

  /// Disabled color
  @override
  final Color disabledColor;

  /// Background color of the floating action button
  ///
  /// Use `theme.floatingActionButtonTheme.backgroundColor` instead.
  @override
  final Color _backgroundColor;

  /// Icon color of the floating action button
  ///
  /// Use `theme.floatingActionButtonTheme.foregroundColor` instead.
  @override
  final Color _foregroundColor;

  /// Disabled elevation of the floating action button
  ///
  /// Use `theme.floatingActionButtonTheme.disabledElevation` instead.
  @override
  final double _disabledElevation;

  @override
  ThemeColorPalette$FloatingActionButton_web copyWith({
    Color? disabledColor,
    Color? backgroundColor,
    Color? foregroundColor,
    double? disabledElevation,
  }) {
    return ThemeColorPalette$FloatingActionButton_web(
      disabledColor: disabledColor ?? this.disabledColor,
      backgroundColor: backgroundColor ?? _backgroundColor,
      foregroundColor: foregroundColor ?? _foregroundColor,
      disabledElevation: disabledElevation ?? _disabledElevation,
    );
  }

  @override
  /// Copy with json method.
  ThemeColorPalette$FloatingActionButton_web copyWithJson([Map<String, dynamic>? json]) {
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

  /// To json method.
  @override
  Map<String, dynamic> toJson() => {
    'disabledColor': disabledColor,
    'backgroundColor': _backgroundColor,
    'foregroundColor': _foregroundColor,
    'disabledElevation': _disabledElevation,
  };
}


// -------------------- ThemeColorPalette$Task --------------------

/// Task color palette
class ThemeColorPalette$Task {
  /// Task color palette
  const ThemeColorPalette$Task({
    required this.notStarted,
    required this.workInProgress,
    required this.completed,
  });

  /// Task color palette
  const ThemeColorPalette$Task.light():
    notStarted = const Color(0xffed6e19),
    workInProgress = const Color(0xffeaa60f),
    completed = const Color(0xff81bf48);

  /// Task color palette
  const ThemeColorPalette$Task.dark():
    notStarted = const Color(0xffed6e19),
    workInProgress = const Color(0xffeaa60f),
    completed = const Color(0xff81bf48);

  /// From json.
  ThemeColorPalette$Task.fromJson(Map<String, dynamic> json):
    notStarted = json['notStarted'] as Color,
    workInProgress = json['workInProgress'] as Color,
    completed = json['completed'] as Color;

  /// Not started color
  final Color notStarted;

  /// Work in progress color
  final Color workInProgress;

  /// Completed color
  final Color completed;

  ThemeColorPalette$Task copyWith({
    Color? notStarted,
    Color? workInProgress,
    Color? completed,
  }) {
    return ThemeColorPalette$Task(
      notStarted: notStarted ?? this.notStarted,
      workInProgress: workInProgress ?? this.workInProgress,
      completed: completed ?? this.completed,
    );
  }

  /// Copy with json method.
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

  /// To json method.
  Map<String, dynamic> toJson() => {
    'notStarted': notStarted,
    'workInProgress': workInProgress,
    'completed': completed,
  };
}


// -------------------- ThemeColorPalette$Task_mobile --------------------

/// Task color palette
class ThemeColorPalette$Task_mobile implements ThemeColorPalette$Task {
  /// Task color palette
  const ThemeColorPalette$Task_mobile({
    required this.notStarted,
    required this.workInProgress,
    required this.completed,
  });

  /// Task color palette
  const ThemeColorPalette$Task_mobile.light():
    notStarted = const Color(0xffed6e19),
    workInProgress = const Color(0xffeaa60f),
    completed = const Color(0xff81bf48);

  /// Task color palette
  const ThemeColorPalette$Task_mobile.dark():
    notStarted = const Color(0xffed6e19),
    workInProgress = const Color(0xffeaa60f),
    completed = const Color(0xff81bf48);

  /// From json.
  ThemeColorPalette$Task_mobile.fromJson(Map<String, dynamic> json):
    notStarted = json['notStarted'] as Color,
    workInProgress = json['workInProgress'] as Color,
    completed = json['completed'] as Color;

  /// Not started color
  @override
  final Color notStarted;

  /// Work in progress color
  @override
  final Color workInProgress;

  /// Completed color
  @override
  final Color completed;

  @override
  ThemeColorPalette$Task_mobile copyWith({
    Color? notStarted,
    Color? workInProgress,
    Color? completed,
  }) {
    return ThemeColorPalette$Task_mobile(
      notStarted: notStarted ?? this.notStarted,
      workInProgress: workInProgress ?? this.workInProgress,
      completed: completed ?? this.completed,
    );
  }

  @override
  /// Copy with json method.
  ThemeColorPalette$Task_mobile copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      notStarted: json['notStarted'] as Color?,
      workInProgress: json['workInProgress'] as Color?,
      completed: json['completed'] as Color?,
    );
  }

  /// To json method.
  @override
  Map<String, dynamic> toJson() => {
    'notStarted': notStarted,
    'workInProgress': workInProgress,
    'completed': completed,
  };
}


// -------------------- ThemeColorPalette$Task_web --------------------

/// Task color palette
class ThemeColorPalette$Task_web implements ThemeColorPalette$Task {
  /// Task color palette
  const ThemeColorPalette$Task_web({
    required this.notStarted,
    required this.workInProgress,
    required this.completed,
  });

  /// Task color palette
  const ThemeColorPalette$Task_web.light():
    notStarted = const Color(0xffed6e19),
    workInProgress = const Color(0xffeaa60f),
    completed = const Color(0xff81bf48);

  /// Task color palette
  const ThemeColorPalette$Task_web.dark():
    notStarted = const Color(0xffed6e19),
    workInProgress = const Color(0xffeaa60f),
    completed = const Color(0xff81bf48);

  /// From json.
  ThemeColorPalette$Task_web.fromJson(Map<String, dynamic> json):
    notStarted = json['notStarted'] as Color,
    workInProgress = json['workInProgress'] as Color,
    completed = json['completed'] as Color;

  /// Not started color
  @override
  final Color notStarted;

  /// Work in progress color
  @override
  final Color workInProgress;

  /// Completed color
  @override
  final Color completed;

  @override
  ThemeColorPalette$Task_web copyWith({
    Color? notStarted,
    Color? workInProgress,
    Color? completed,
  }) {
    return ThemeColorPalette$Task_web(
      notStarted: notStarted ?? this.notStarted,
      workInProgress: workInProgress ?? this.workInProgress,
      completed: completed ?? this.completed,
    );
  }

  @override
  /// Copy with json method.
  ThemeColorPalette$Task_web copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      notStarted: json['notStarted'] as Color?,
      workInProgress: json['workInProgress'] as Color?,
      completed: json['completed'] as Color?,
    );
  }

  /// To json method.
  @override
  Map<String, dynamic> toJson() => {
    'notStarted': notStarted,
    'workInProgress': workInProgress,
    'completed': completed,
  };
}


// -------------------- ThemeColorPalette$Form --------------------

/// Form color palette
class ThemeColorPalette$Form {
  /// Form color palette
  const ThemeColorPalette$Form({
    required this.draft,
    required this.actionRequired,
    required this.completed,
    required this.rejected,
  });

  /// Form color palette
  const ThemeColorPalette$Form.light():
    draft = const Color(0xffed6e19),
    actionRequired = const Color(0xffeaa60f),
    completed = const Color(0xff666666),
    rejected = const Color(0xffc73826);

  /// Form color palette
  const ThemeColorPalette$Form.dark():
    draft = const Color(0xffed6e19),
    actionRequired = const Color(0xffeaa60f),
    completed = const Color(0xff666666),
    rejected = const Color(0xffc73826);

  /// From json.
  ThemeColorPalette$Form.fromJson(Map<String, dynamic> json):
    draft = json['draft'] as Color,
    actionRequired = json['actionRequired'] as Color,
    completed = json['completed'] as Color,
    rejected = json['rejected'] as Color;

  /// Draft color
  final Color draft;

  /// Action required color
  final Color actionRequired;

  /// Completed color
  final Color completed;

  /// Rejected color
  final Color rejected;

  ThemeColorPalette$Form copyWith({
    Color? draft,
    Color? actionRequired,
    Color? completed,
    Color? rejected,
  }) {
    return ThemeColorPalette$Form(
      draft: draft ?? this.draft,
      actionRequired: actionRequired ?? this.actionRequired,
      completed: completed ?? this.completed,
      rejected: rejected ?? this.rejected,
    );
  }

  /// Copy with json method.
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

  /// To json method.
  Map<String, dynamic> toJson() => {
    'draft': draft,
    'actionRequired': actionRequired,
    'completed': completed,
    'rejected': rejected,
  };
}


// -------------------- ThemeColorPalette$Form_mobile --------------------

/// Form color palette
class ThemeColorPalette$Form_mobile implements ThemeColorPalette$Form {
  /// Form color palette
  const ThemeColorPalette$Form_mobile({
    required this.draft,
    required this.actionRequired,
    required this.completed,
    required this.rejected,
  });

  /// Form color palette
  const ThemeColorPalette$Form_mobile.light():
    draft = const Color(0xffed6e19),
    actionRequired = const Color(0xffeaa60f),
    completed = const Color(0xff666666),
    rejected = const Color(0xffc73826);

  /// Form color palette
  const ThemeColorPalette$Form_mobile.dark():
    draft = const Color(0xffed6e19),
    actionRequired = const Color(0xffeaa60f),
    completed = const Color(0xff666666),
    rejected = const Color(0xffc73826);

  /// From json.
  ThemeColorPalette$Form_mobile.fromJson(Map<String, dynamic> json):
    draft = json['draft'] as Color,
    actionRequired = json['actionRequired'] as Color,
    completed = json['completed'] as Color,
    rejected = json['rejected'] as Color;

  /// Draft color
  @override
  final Color draft;

  /// Action required color
  @override
  final Color actionRequired;

  /// Completed color
  @override
  final Color completed;

  /// Rejected color
  @override
  final Color rejected;

  @override
  ThemeColorPalette$Form_mobile copyWith({
    Color? draft,
    Color? actionRequired,
    Color? completed,
    Color? rejected,
  }) {
    return ThemeColorPalette$Form_mobile(
      draft: draft ?? this.draft,
      actionRequired: actionRequired ?? this.actionRequired,
      completed: completed ?? this.completed,
      rejected: rejected ?? this.rejected,
    );
  }

  @override
  /// Copy with json method.
  ThemeColorPalette$Form_mobile copyWithJson([Map<String, dynamic>? json]) {
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

  /// To json method.
  @override
  Map<String, dynamic> toJson() => {
    'draft': draft,
    'actionRequired': actionRequired,
    'completed': completed,
    'rejected': rejected,
  };
}


// -------------------- ThemeColorPalette$Form_web --------------------

/// Form color palette
class ThemeColorPalette$Form_web implements ThemeColorPalette$Form {
  /// Form color palette
  const ThemeColorPalette$Form_web({
    required this.draft,
    required this.actionRequired,
    required this.completed,
    required this.rejected,
  });

  /// Form color palette
  const ThemeColorPalette$Form_web.light():
    draft = const Color(0xffed6e19),
    actionRequired = const Color(0xffeaa60f),
    completed = const Color(0xff666666),
    rejected = const Color(0xffc73826);

  /// Form color palette
  const ThemeColorPalette$Form_web.dark():
    draft = const Color(0xffed6e19),
    actionRequired = const Color(0xffeaa60f),
    completed = const Color(0xff666666),
    rejected = const Color(0xffc73826);

  /// From json.
  ThemeColorPalette$Form_web.fromJson(Map<String, dynamic> json):
    draft = json['draft'] as Color,
    actionRequired = json['actionRequired'] as Color,
    completed = json['completed'] as Color,
    rejected = json['rejected'] as Color;

  /// Draft color
  @override
  final Color draft;

  /// Action required color
  @override
  final Color actionRequired;

  /// Completed color
  @override
  final Color completed;

  /// Rejected color
  @override
  final Color rejected;

  @override
  ThemeColorPalette$Form_web copyWith({
    Color? draft,
    Color? actionRequired,
    Color? completed,
    Color? rejected,
  }) {
    return ThemeColorPalette$Form_web(
      draft: draft ?? this.draft,
      actionRequired: actionRequired ?? this.actionRequired,
      completed: completed ?? this.completed,
      rejected: rejected ?? this.rejected,
    );
  }

  @override
  /// Copy with json method.
  ThemeColorPalette$Form_web copyWithJson([Map<String, dynamic>? json]) {
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

  /// To json method.
  @override
  Map<String, dynamic> toJson() => {
    'draft': draft,
    'actionRequired': actionRequired,
    'completed': completed,
    'rejected': rejected,
  };
}


// -------------------- ThemeColorPalette$Notification --------------------

/// Notification color palette
class ThemeColorPalette$Notification {
  /// Notification color palette
  const ThemeColorPalette$Notification({
    required this.countBubbleColor,
  });

  /// Notification color palette
  const ThemeColorPalette$Notification.light():
    countBubbleColor = const Color(0xfff26716);

  /// Notification color palette
  const ThemeColorPalette$Notification.dark():
    countBubbleColor = const Color(0xfff26716);

  /// From json.
  ThemeColorPalette$Notification.fromJson(Map<String, dynamic> json):
    countBubbleColor = json['countBubbleColor'] as Color;

  /// Color of the notification bubble
  final Color countBubbleColor;

  ThemeColorPalette$Notification copyWith({
    Color? countBubbleColor,
  }) {
    return ThemeColorPalette$Notification(
      countBubbleColor: countBubbleColor ?? this.countBubbleColor,
    );
  }

  /// Copy with json method.
  ThemeColorPalette$Notification copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      countBubbleColor: json['countBubbleColor'] as Color?,
    );
  }

  /// To json method.
  Map<String, dynamic> toJson() => {
    'countBubbleColor': countBubbleColor,
  };
}


// -------------------- ThemeColorPalette$Notification_mobile --------------------

/// Notification color palette
class ThemeColorPalette$Notification_mobile implements ThemeColorPalette$Notification {
  /// Notification color palette
  const ThemeColorPalette$Notification_mobile({
    required this.countBubbleColor,
  });

  /// Notification color palette
  const ThemeColorPalette$Notification_mobile.light():
    countBubbleColor = const Color(0xfff26716);

  /// Notification color palette
  const ThemeColorPalette$Notification_mobile.dark():
    countBubbleColor = const Color(0xfff26716);

  /// From json.
  ThemeColorPalette$Notification_mobile.fromJson(Map<String, dynamic> json):
    countBubbleColor = json['countBubbleColor'] as Color;

  /// Color of the notification bubble
  @override
  final Color countBubbleColor;

  @override
  ThemeColorPalette$Notification_mobile copyWith({
    Color? countBubbleColor,
  }) {
    return ThemeColorPalette$Notification_mobile(
      countBubbleColor: countBubbleColor ?? this.countBubbleColor,
    );
  }

  @override
  /// Copy with json method.
  ThemeColorPalette$Notification_mobile copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      countBubbleColor: json['countBubbleColor'] as Color?,
    );
  }

  /// To json method.
  @override
  Map<String, dynamic> toJson() => {
    'countBubbleColor': countBubbleColor,
  };
}


// -------------------- ThemeColorPalette$Notification_web --------------------

/// Notification color palette
class ThemeColorPalette$Notification_web implements ThemeColorPalette$Notification {
  /// Notification color palette
  const ThemeColorPalette$Notification_web({
    required this.countBubbleColor,
  });

  /// Notification color palette
  const ThemeColorPalette$Notification_web.light():
    countBubbleColor = const Color(0xfff26716);

  /// Notification color palette
  const ThemeColorPalette$Notification_web.dark():
    countBubbleColor = const Color(0xfff26716);

  /// From json.
  ThemeColorPalette$Notification_web.fromJson(Map<String, dynamic> json):
    countBubbleColor = json['countBubbleColor'] as Color;

  /// Color of the notification bubble
  @override
  final Color countBubbleColor;

  @override
  ThemeColorPalette$Notification_web copyWith({
    Color? countBubbleColor,
  }) {
    return ThemeColorPalette$Notification_web(
      countBubbleColor: countBubbleColor ?? this.countBubbleColor,
    );
  }

  @override
  /// Copy with json method.
  ThemeColorPalette$Notification_web copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      countBubbleColor: json['countBubbleColor'] as Color?,
    );
  }

  /// To json method.
  @override
  Map<String, dynamic> toJson() => {
    'countBubbleColor': countBubbleColor,
  };
}


// -------------------- ThemeColorPalette$ProjectTimeline --------------------

/// Project time line color palette
class ThemeColorPalette$ProjectTimeline {
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
  const ThemeColorPalette$ProjectTimeline.light():
    plannedLight = const Color(0xffeef3f8),
    planned = const Color(0xff647e9b),
    start = const Color(0xffeaa60f),
    completed = const Color(0xff7ec141),
    today = const Color(0xff2864ac),
    active = const Color(0xffeef3f8),
    progress = const Color(0xff2864ac);

  /// Project time line color palette
  const ThemeColorPalette$ProjectTimeline.dark():
    plannedLight = const Color(0xffeef3f8),
    planned = const Color(0xff647e9b),
    start = const Color(0xffeaa60f),
    completed = const Color(0xff7ec141),
    today = const Color(0xffc1dbef),
    active = const Color(0xffeef3f8),
    progress = const Color(0xff2864ac);

  /// From json.
  ThemeColorPalette$ProjectTimeline.fromJson(Map<String, dynamic> json):
    plannedLight = json['plannedLight'] as Color,
    planned = json['planned'] as Color,
    start = json['start'] as Color,
    completed = json['completed'] as Color,
    today = json['today'] as Color,
    active = json['active'] as Color,
    progress = json['progress'] as Color;

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

  ThemeColorPalette$ProjectTimeline copyWith({
    Color? plannedLight,
    Color? planned,
    Color? start,
    Color? completed,
    Color? today,
    Color? active,
    Color? progress,
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

  /// Copy with json method.
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

  /// To json method.
  Map<String, dynamic> toJson() => {
    'plannedLight': plannedLight,
    'planned': planned,
    'start': start,
    'completed': completed,
    'today': today,
    'active': active,
    'progress': progress,
  };
}


// -------------------- ThemeColorPalette$ProjectTimeline_mobile --------------------

/// Project time line color palette
class ThemeColorPalette$ProjectTimeline_mobile implements ThemeColorPalette$ProjectTimeline {
  /// Project time line color palette
  const ThemeColorPalette$ProjectTimeline_mobile({
    required this.plannedLight,
    required this.planned,
    required this.start,
    required this.completed,
    required this.today,
    required this.active,
    required this.progress,
  });

  /// Project time line color palette
  const ThemeColorPalette$ProjectTimeline_mobile.light():
    plannedLight = const Color(0xffeef3f8),
    planned = const Color(0xff647e9b),
    start = const Color(0xffeaa60f),
    completed = const Color(0xff7ec141),
    today = const Color(0xff2864ac),
    active = const Color(0xffeef3f8),
    progress = const Color(0xff2864ac);

  /// Project time line color palette
  const ThemeColorPalette$ProjectTimeline_mobile.dark():
    plannedLight = const Color(0xffeef3f8),
    planned = const Color(0xff647e9b),
    start = const Color(0xffeaa60f),
    completed = const Color(0xff7ec141),
    today = const Color(0xffc1dbef),
    active = const Color(0xffeef3f8),
    progress = const Color(0xff2864ac);

  /// From json.
  ThemeColorPalette$ProjectTimeline_mobile.fromJson(Map<String, dynamic> json):
    plannedLight = json['plannedLight'] as Color,
    planned = json['planned'] as Color,
    start = json['start'] as Color,
    completed = json['completed'] as Color,
    today = json['today'] as Color,
    active = json['active'] as Color,
    progress = json['progress'] as Color;

  /// Planned disc color
  @override
  final Color plannedLight;

  /// Planned text color
  @override
  final Color planned;

  /// Start color
  @override
  final Color start;

  /// Completed color
  @override
  final Color completed;

  /// Today disc color
  @override
  final Color today;

  /// Color for the Timeline Base
  @override
  final Color active;

  /// Color for the active part of the Timeline bar (Start -> Today/Completed)
  @override
  final Color progress;

  @override
  ThemeColorPalette$ProjectTimeline_mobile copyWith({
    Color? plannedLight,
    Color? planned,
    Color? start,
    Color? completed,
    Color? today,
    Color? active,
    Color? progress,
  }) {
    return ThemeColorPalette$ProjectTimeline_mobile(
      plannedLight: plannedLight ?? this.plannedLight,
      planned: planned ?? this.planned,
      start: start ?? this.start,
      completed: completed ?? this.completed,
      today: today ?? this.today,
      active: active ?? this.active,
      progress: progress ?? this.progress,
    );
  }

  @override
  /// Copy with json method.
  ThemeColorPalette$ProjectTimeline_mobile copyWithJson([Map<String, dynamic>? json]) {
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

  /// To json method.
  @override
  Map<String, dynamic> toJson() => {
    'plannedLight': plannedLight,
    'planned': planned,
    'start': start,
    'completed': completed,
    'today': today,
    'active': active,
    'progress': progress,
  };
}


// -------------------- ThemeColorPalette$ProjectTimeline_web --------------------

/// Project time line color palette
class ThemeColorPalette$ProjectTimeline_web implements ThemeColorPalette$ProjectTimeline {
  /// Project time line color palette
  const ThemeColorPalette$ProjectTimeline_web({
    required this.plannedLight,
    required this.planned,
    required this.start,
    required this.completed,
    required this.today,
    required this.active,
    required this.progress,
  });

  /// Project time line color palette
  const ThemeColorPalette$ProjectTimeline_web.light():
    plannedLight = const Color(0xffeef3f8),
    planned = const Color(0xff647e9b),
    start = const Color(0xffeaa60f),
    completed = const Color(0xff7ec141),
    today = const Color(0xff2864ac),
    active = const Color(0xffeef3f8),
    progress = const Color(0xff2864ac);

  /// Project time line color palette
  const ThemeColorPalette$ProjectTimeline_web.dark():
    plannedLight = const Color(0xffeef3f8),
    planned = const Color(0xff647e9b),
    start = const Color(0xffeaa60f),
    completed = const Color(0xff7ec141),
    today = const Color(0xffc1dbef),
    active = const Color(0xffeef3f8),
    progress = const Color(0xff2864ac);

  /// From json.
  ThemeColorPalette$ProjectTimeline_web.fromJson(Map<String, dynamic> json):
    plannedLight = json['plannedLight'] as Color,
    planned = json['planned'] as Color,
    start = json['start'] as Color,
    completed = json['completed'] as Color,
    today = json['today'] as Color,
    active = json['active'] as Color,
    progress = json['progress'] as Color;

  /// Planned disc color
  @override
  final Color plannedLight;

  /// Planned text color
  @override
  final Color planned;

  /// Start color
  @override
  final Color start;

  /// Completed color
  @override
  final Color completed;

  /// Today disc color
  @override
  final Color today;

  /// Color for the Timeline Base
  @override
  final Color active;

  /// Color for the active part of the Timeline bar (Start -> Today/Completed)
  @override
  final Color progress;

  @override
  ThemeColorPalette$ProjectTimeline_web copyWith({
    Color? plannedLight,
    Color? planned,
    Color? start,
    Color? completed,
    Color? today,
    Color? active,
    Color? progress,
  }) {
    return ThemeColorPalette$ProjectTimeline_web(
      plannedLight: plannedLight ?? this.plannedLight,
      planned: planned ?? this.planned,
      start: start ?? this.start,
      completed: completed ?? this.completed,
      today: today ?? this.today,
      active: active ?? this.active,
      progress: progress ?? this.progress,
    );
  }

  @override
  /// Copy with json method.
  ThemeColorPalette$ProjectTimeline_web copyWithJson([Map<String, dynamic>? json]) {
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

  /// To json method.
  @override
  Map<String, dynamic> toJson() => {
    'plannedLight': plannedLight,
    'planned': planned,
    'start': start,
    'completed': completed,
    'today': today,
    'active': active,
    'progress': progress,
  };
}


// -------------------- ThemeColorPalette$Pin --------------------

/// Pin theme
class ThemeColorPalette$Pin {
  /// Pin theme
  const ThemeColorPalette$Pin({
    required this.iconColor,
    required this.disabledBackgroundColor,
  });

  /// Pin theme
  const ThemeColorPalette$Pin.light():
    iconColor = const Color(0xffffffff),
    disabledBackgroundColor = const Color(0xff8d8d8d);

  /// Pin theme
  const ThemeColorPalette$Pin.dark():
    iconColor = const Color(0xffffffff),
    disabledBackgroundColor = const Color(0xff8d8d8d);

  /// From json.
  ThemeColorPalette$Pin.fromJson(Map<String, dynamic> json):
    iconColor = json['iconColor'] as Color,
    disabledBackgroundColor = json['disabledBackgroundColor'] as Color;

  /// Icon Color
  final Color iconColor;

  /// The background color when the pin is disabled
  final Color disabledBackgroundColor;

  ThemeColorPalette$Pin copyWith({
    Color? iconColor,
    Color? disabledBackgroundColor,
  }) {
    return ThemeColorPalette$Pin(
      iconColor: iconColor ?? this.iconColor,
      disabledBackgroundColor: disabledBackgroundColor ?? this.disabledBackgroundColor,
    );
  }

  /// Copy with json method.
  ThemeColorPalette$Pin copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      iconColor: json['iconColor'] as Color?,
      disabledBackgroundColor: json['disabledBackgroundColor'] as Color?,
    );
  }

  /// To json method.
  Map<String, dynamic> toJson() => {
    'iconColor': iconColor,
    'disabledBackgroundColor': disabledBackgroundColor,
  };
}


// -------------------- ThemeColorPalette$Pin_mobile --------------------

/// Pin theme
class ThemeColorPalette$Pin_mobile implements ThemeColorPalette$Pin {
  /// Pin theme
  const ThemeColorPalette$Pin_mobile({
    required this.iconColor,
    required this.disabledBackgroundColor,
  });

  /// Pin theme
  const ThemeColorPalette$Pin_mobile.light():
    iconColor = const Color(0xffffffff),
    disabledBackgroundColor = const Color(0xff8d8d8d);

  /// Pin theme
  const ThemeColorPalette$Pin_mobile.dark():
    iconColor = const Color(0xffffffff),
    disabledBackgroundColor = const Color(0xff8d8d8d);

  /// From json.
  ThemeColorPalette$Pin_mobile.fromJson(Map<String, dynamic> json):
    iconColor = json['iconColor'] as Color,
    disabledBackgroundColor = json['disabledBackgroundColor'] as Color;

  /// Icon Color
  @override
  final Color iconColor;

  /// The background color when the pin is disabled
  @override
  final Color disabledBackgroundColor;

  @override
  ThemeColorPalette$Pin_mobile copyWith({
    Color? iconColor,
    Color? disabledBackgroundColor,
  }) {
    return ThemeColorPalette$Pin_mobile(
      iconColor: iconColor ?? this.iconColor,
      disabledBackgroundColor: disabledBackgroundColor ?? this.disabledBackgroundColor,
    );
  }

  @override
  /// Copy with json method.
  ThemeColorPalette$Pin_mobile copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      iconColor: json['iconColor'] as Color?,
      disabledBackgroundColor: json['disabledBackgroundColor'] as Color?,
    );
  }

  /// To json method.
  @override
  Map<String, dynamic> toJson() => {
    'iconColor': iconColor,
    'disabledBackgroundColor': disabledBackgroundColor,
  };
}


// -------------------- ThemeColorPalette$Pin_web --------------------

/// Pin theme
class ThemeColorPalette$Pin_web implements ThemeColorPalette$Pin {
  /// Pin theme
  const ThemeColorPalette$Pin_web({
    required this.iconColor,
    required this.disabledBackgroundColor,
  });

  /// Pin theme
  const ThemeColorPalette$Pin_web.light():
    iconColor = const Color(0xffffffff),
    disabledBackgroundColor = const Color(0xff8d8d8d);

  /// Pin theme
  const ThemeColorPalette$Pin_web.dark():
    iconColor = const Color(0xffffffff),
    disabledBackgroundColor = const Color(0xff8d8d8d);

  /// From json.
  ThemeColorPalette$Pin_web.fromJson(Map<String, dynamic> json):
    iconColor = json['iconColor'] as Color,
    disabledBackgroundColor = json['disabledBackgroundColor'] as Color;

  /// Icon Color
  @override
  final Color iconColor;

  /// The background color when the pin is disabled
  @override
  final Color disabledBackgroundColor;

  @override
  ThemeColorPalette$Pin_web copyWith({
    Color? iconColor,
    Color? disabledBackgroundColor,
  }) {
    return ThemeColorPalette$Pin_web(
      iconColor: iconColor ?? this.iconColor,
      disabledBackgroundColor: disabledBackgroundColor ?? this.disabledBackgroundColor,
    );
  }

  @override
  /// Copy with json method.
  ThemeColorPalette$Pin_web copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      iconColor: json['iconColor'] as Color?,
      disabledBackgroundColor: json['disabledBackgroundColor'] as Color?,
    );
  }

  /// To json method.
  @override
  Map<String, dynamic> toJson() => {
    'iconColor': iconColor,
    'disabledBackgroundColor': disabledBackgroundColor,
  };
}


// -------------------- ThemeColorPalette$AppBarTheme --------------------

/// 
class ThemeColorPalette$AppBarTheme {
  /// 
  const ThemeColorPalette$AppBarTheme({
    required Color color,
    required Color foregroundColor,
  }):
    _color = color,
    _foregroundColor = foregroundColor;

  /// 
  const ThemeColorPalette$AppBarTheme.light():
    _color = const Color(0xff5182bb),
    _foregroundColor = const Color(0xffffffff);

  /// 
  const ThemeColorPalette$AppBarTheme.dark():
    _color = const Color(0xff1e1e1e),
    _foregroundColor = const Color(0xffffffff);

  /// From json.
  ThemeColorPalette$AppBarTheme.fromJson(Map<String, dynamic> json):
    _color = json['color'] as Color,
    _foregroundColor = json['foregroundColor'] as Color;

  /// Color of the app bar
  ///
  /// Use `theme.appBarTheme.color` instead.
  final Color _color;

  /// Text and icon color of the app bar
  ///
  /// Use `theme.appBarTheme.foregroundColor` instead.
  final Color _foregroundColor;

  ThemeColorPalette$AppBarTheme copyWith({
    Color? color,
    Color? foregroundColor,
  }) {
    return ThemeColorPalette$AppBarTheme(
      color: color ?? _color,
      foregroundColor: foregroundColor ?? _foregroundColor,
    );
  }

  /// Copy with json method.
  ThemeColorPalette$AppBarTheme copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      color: json['color'] as Color?,
      foregroundColor: json['foregroundColor'] as Color?,
    );
  }

  /// To json method.
  Map<String, dynamic> toJson() => {
    'color': _color,
    'foregroundColor': _foregroundColor,
  };
}


// -------------------- ThemeColorPalette$AppBarTheme_mobile --------------------

/// 
class ThemeColorPalette$AppBarTheme_mobile implements ThemeColorPalette$AppBarTheme {
  /// 
  const ThemeColorPalette$AppBarTheme_mobile({
    required Color color,
    required Color foregroundColor,
  }):
    _color = color,
    _foregroundColor = foregroundColor;

  /// 
  const ThemeColorPalette$AppBarTheme_mobile.light():
    _color = const Color(0xff5182bb),
    _foregroundColor = const Color(0xffffffff);

  /// 
  const ThemeColorPalette$AppBarTheme_mobile.dark():
    _color = const Color(0xff1e1e1e),
    _foregroundColor = const Color(0xffffffff);

  /// From json.
  ThemeColorPalette$AppBarTheme_mobile.fromJson(Map<String, dynamic> json):
    _color = json['color'] as Color,
    _foregroundColor = json['foregroundColor'] as Color;

  /// Color of the app bar
  ///
  /// Use `theme.appBarTheme.color` instead.
  @override
  final Color _color;

  /// Text and icon color of the app bar
  ///
  /// Use `theme.appBarTheme.foregroundColor` instead.
  @override
  final Color _foregroundColor;

  @override
  ThemeColorPalette$AppBarTheme_mobile copyWith({
    Color? color,
    Color? foregroundColor,
  }) {
    return ThemeColorPalette$AppBarTheme_mobile(
      color: color ?? _color,
      foregroundColor: foregroundColor ?? _foregroundColor,
    );
  }

  @override
  /// Copy with json method.
  ThemeColorPalette$AppBarTheme_mobile copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      color: json['color'] as Color?,
      foregroundColor: json['foregroundColor'] as Color?,
    );
  }

  /// To json method.
  @override
  Map<String, dynamic> toJson() => {
    'color': _color,
    'foregroundColor': _foregroundColor,
  };
}


// -------------------- ThemeColorPalette$AppBarTheme_web --------------------

/// 
class ThemeColorPalette$AppBarTheme_web implements ThemeColorPalette$AppBarTheme {
  /// 
  const ThemeColorPalette$AppBarTheme_web({
    required Color color,
    required Color foregroundColor,
  }):
    _color = color,
    _foregroundColor = foregroundColor;

  /// 
  const ThemeColorPalette$AppBarTheme_web.light():
    _color = const Color(0xff5182bb),
    _foregroundColor = const Color(0xffffffff);

  /// 
  const ThemeColorPalette$AppBarTheme_web.dark():
    _color = const Color(0xff1e1e1e),
    _foregroundColor = const Color(0xffffffff);

  /// From json.
  ThemeColorPalette$AppBarTheme_web.fromJson(Map<String, dynamic> json):
    _color = json['color'] as Color,
    _foregroundColor = json['foregroundColor'] as Color;

  /// Color of the app bar
  ///
  /// Use `theme.appBarTheme.color` instead.
  @override
  final Color _color;

  /// Text and icon color of the app bar
  ///
  /// Use `theme.appBarTheme.foregroundColor` instead.
  @override
  final Color _foregroundColor;

  @override
  ThemeColorPalette$AppBarTheme_web copyWith({
    Color? color,
    Color? foregroundColor,
  }) {
    return ThemeColorPalette$AppBarTheme_web(
      color: color ?? _color,
      foregroundColor: foregroundColor ?? _foregroundColor,
    );
  }

  @override
  /// Copy with json method.
  ThemeColorPalette$AppBarTheme_web copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      color: json['color'] as Color?,
      foregroundColor: json['foregroundColor'] as Color?,
    );
  }

  /// To json method.
  @override
  Map<String, dynamic> toJson() => {
    'color': _color,
    'foregroundColor': _foregroundColor,
  };
}


// -------------------- ThemeColorPalette$BottomAppBarTheme --------------------

/// 
class ThemeColorPalette$BottomAppBarTheme {
  /// 
  const ThemeColorPalette$BottomAppBarTheme({
    required Color color,
  }):
    _color = color;

  /// 
  const ThemeColorPalette$BottomAppBarTheme.light():
    _color = const Color(0xfff8f8f8);

  /// 
  const ThemeColorPalette$BottomAppBarTheme.dark():
    _color = const Color(0xff2e2e2e);

  /// From json.
  ThemeColorPalette$BottomAppBarTheme.fromJson(Map<String, dynamic> json):
    _color = json['color'] as Color;

  /// Color of the bottom app bar
  ///
  /// Use `theme.bottomAppBarTheme.color` instead.
  final Color _color;

  ThemeColorPalette$BottomAppBarTheme copyWith({
    Color? color,
  }) {
    return ThemeColorPalette$BottomAppBarTheme(
      color: color ?? _color,
    );
  }

  /// Copy with json method.
  ThemeColorPalette$BottomAppBarTheme copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      color: json['color'] as Color?,
    );
  }

  /// To json method.
  Map<String, dynamic> toJson() => {
    'color': _color,
  };
}


// -------------------- ThemeColorPalette$BottomAppBarTheme_mobile --------------------

/// 
class ThemeColorPalette$BottomAppBarTheme_mobile implements ThemeColorPalette$BottomAppBarTheme {
  /// 
  const ThemeColorPalette$BottomAppBarTheme_mobile({
    required Color color,
  }):
    _color = color;

  /// 
  const ThemeColorPalette$BottomAppBarTheme_mobile.light():
    _color = const Color(0xfff8f8f8);

  /// 
  const ThemeColorPalette$BottomAppBarTheme_mobile.dark():
    _color = const Color(0xff2e2e2e);

  /// From json.
  ThemeColorPalette$BottomAppBarTheme_mobile.fromJson(Map<String, dynamic> json):
    _color = json['color'] as Color;

  /// Color of the bottom app bar
  ///
  /// Use `theme.bottomAppBarTheme.color` instead.
  @override
  final Color _color;

  @override
  ThemeColorPalette$BottomAppBarTheme_mobile copyWith({
    Color? color,
  }) {
    return ThemeColorPalette$BottomAppBarTheme_mobile(
      color: color ?? _color,
    );
  }

  @override
  /// Copy with json method.
  ThemeColorPalette$BottomAppBarTheme_mobile copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      color: json['color'] as Color?,
    );
  }

  /// To json method.
  @override
  Map<String, dynamic> toJson() => {
    'color': _color,
  };
}


// -------------------- ThemeColorPalette$BottomAppBarTheme_web --------------------

/// 
class ThemeColorPalette$BottomAppBarTheme_web implements ThemeColorPalette$BottomAppBarTheme {
  /// 
  const ThemeColorPalette$BottomAppBarTheme_web({
    required Color color,
  }):
    _color = color;

  /// 
  const ThemeColorPalette$BottomAppBarTheme_web.light():
    _color = const Color(0xfff8f8f8);

  /// 
  const ThemeColorPalette$BottomAppBarTheme_web.dark():
    _color = const Color(0xff2e2e2e);

  /// From json.
  ThemeColorPalette$BottomAppBarTheme_web.fromJson(Map<String, dynamic> json):
    _color = json['color'] as Color;

  /// Color of the bottom app bar
  ///
  /// Use `theme.bottomAppBarTheme.color` instead.
  @override
  final Color _color;

  @override
  ThemeColorPalette$BottomAppBarTheme_web copyWith({
    Color? color,
  }) {
    return ThemeColorPalette$BottomAppBarTheme_web(
      color: color ?? _color,
    );
  }

  @override
  /// Copy with json method.
  ThemeColorPalette$BottomAppBarTheme_web copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      color: json['color'] as Color?,
    );
  }

  /// To json method.
  @override
  Map<String, dynamic> toJson() => {
    'color': _color,
  };
}


// -------------------- ThemeColorPalette$TooltipTheme --------------------

/// Tooltip theme
///
/// Use `theme.tooltipTheme` instead.
class ThemeColorPalette$TooltipTheme {
  /// Tooltip theme
  const ThemeColorPalette$TooltipTheme({
    required ThemeColorPalette$TooltipTheme$Decoration decoration,
    required ThemeColorPalette$TooltipTheme$TextStyle textStyle,
  }):
    _decoration = decoration,
    _textStyle = textStyle;

  /// Tooltip theme
  const ThemeColorPalette$TooltipTheme.light():
    _decoration = const ThemeColorPalette$TooltipTheme$Decoration.light(),
    _textStyle = const ThemeColorPalette$TooltipTheme$TextStyle.light();

  /// Tooltip theme
  const ThemeColorPalette$TooltipTheme.dark():
    _decoration = const ThemeColorPalette$TooltipTheme$Decoration.dark(),
    _textStyle = const ThemeColorPalette$TooltipTheme$TextStyle.dark();

  /// From json.
  ThemeColorPalette$TooltipTheme.fromJson(Map<String, dynamic> json):
    _decoration = ThemeColorPalette$TooltipTheme$Decoration.fromJson(json['decoration'] as Map<String, dynamic>),
    _textStyle = ThemeColorPalette$TooltipTheme$TextStyle.fromJson(json['textStyle'] as Map<String, dynamic>);

  /// Tooltip decoration
  ///
  /// Use `theme.decoration` instead.
  final ThemeColorPalette$TooltipTheme$Decoration _decoration;

  /// Tooltip text textStyle
  ///
  /// Use `theme.tooltipTheme.textStyle` instead.
  final ThemeColorPalette$TooltipTheme$TextStyle _textStyle;

  ThemeColorPalette$TooltipTheme copyWith({
    covariant ThemeColorPalette$TooltipTheme$Decoration? decoration,
    covariant ThemeColorPalette$TooltipTheme$TextStyle? textStyle,
  }) {
    return ThemeColorPalette$TooltipTheme(
      decoration: decoration ?? _decoration,
      textStyle: textStyle ?? _textStyle,
    );
  }

  /// Copy with json method.
  ThemeColorPalette$TooltipTheme copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      decoration: _decoration.copyWithJson(json['decoration'] as Map<String, dynamic>?),
      textStyle: _textStyle.copyWithJson(json['textStyle'] as Map<String, dynamic>?),
    );
  }

  /// To json method.
  Map<String, dynamic> toJson() => {
    'decoration': _decoration.toJson(),
    'textStyle': _textStyle.toJson(),
  };
}


// -------------------- ThemeColorPalette$TooltipTheme_mobile --------------------

/// Tooltip theme
///
/// Use `theme.tooltipTheme` instead.
class ThemeColorPalette$TooltipTheme_mobile implements ThemeColorPalette$TooltipTheme {
  /// Tooltip theme
  const ThemeColorPalette$TooltipTheme_mobile({
    required ThemeColorPalette$TooltipTheme$Decoration_mobile decoration,
    required ThemeColorPalette$TooltipTheme$TextStyle_mobile textStyle,
  }):
    _decoration = decoration,
    _textStyle = textStyle;

  /// Tooltip theme
  const ThemeColorPalette$TooltipTheme_mobile.light():
    _decoration = const ThemeColorPalette$TooltipTheme$Decoration_mobile.light(),
    _textStyle = const ThemeColorPalette$TooltipTheme$TextStyle_mobile.light();

  /// Tooltip theme
  const ThemeColorPalette$TooltipTheme_mobile.dark():
    _decoration = const ThemeColorPalette$TooltipTheme$Decoration_mobile.dark(),
    _textStyle = const ThemeColorPalette$TooltipTheme$TextStyle_mobile.dark();

  /// From json.
  ThemeColorPalette$TooltipTheme_mobile.fromJson(Map<String, dynamic> json):
    _decoration = ThemeColorPalette$TooltipTheme$Decoration_mobile.fromJson(json['decoration'] as Map<String, dynamic>),
    _textStyle = ThemeColorPalette$TooltipTheme$TextStyle_mobile.fromJson(json['textStyle'] as Map<String, dynamic>);

  /// Tooltip decoration
  ///
  /// Use `theme.decoration` instead.
  @override
  final ThemeColorPalette$TooltipTheme$Decoration_mobile _decoration;

  /// Tooltip text textStyle
  ///
  /// Use `theme.tooltipTheme.textStyle` instead.
  @override
  final ThemeColorPalette$TooltipTheme$TextStyle_mobile _textStyle;

  @override
  ThemeColorPalette$TooltipTheme_mobile copyWith({
    covariant ThemeColorPalette$TooltipTheme$Decoration_mobile? decoration,
    covariant ThemeColorPalette$TooltipTheme$TextStyle_mobile? textStyle,
  }) {
    return ThemeColorPalette$TooltipTheme_mobile(
      decoration: decoration ?? _decoration,
      textStyle: textStyle ?? _textStyle,
    );
  }

  @override
  /// Copy with json method.
  ThemeColorPalette$TooltipTheme_mobile copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      decoration: _decoration.copyWithJson(json['decoration'] as Map<String, dynamic>?),
      textStyle: _textStyle.copyWithJson(json['textStyle'] as Map<String, dynamic>?),
    );
  }

  /// To json method.
  @override
  Map<String, dynamic> toJson() => {
    'decoration': _decoration.toJson(),
    'textStyle': _textStyle.toJson(),
  };
}


// -------------------- ThemeColorPalette$TooltipTheme_web --------------------

/// Tooltip theme
///
/// Use `theme.tooltipTheme` instead.
class ThemeColorPalette$TooltipTheme_web implements ThemeColorPalette$TooltipTheme {
  /// Tooltip theme
  const ThemeColorPalette$TooltipTheme_web({
    required ThemeColorPalette$TooltipTheme$Decoration_web decoration,
    required ThemeColorPalette$TooltipTheme$TextStyle_web textStyle,
  }):
    _decoration = decoration,
    _textStyle = textStyle;

  /// Tooltip theme
  const ThemeColorPalette$TooltipTheme_web.light():
    _decoration = const ThemeColorPalette$TooltipTheme$Decoration_web.light(),
    _textStyle = const ThemeColorPalette$TooltipTheme$TextStyle_web.light();

  /// Tooltip theme
  const ThemeColorPalette$TooltipTheme_web.dark():
    _decoration = const ThemeColorPalette$TooltipTheme$Decoration_web.dark(),
    _textStyle = const ThemeColorPalette$TooltipTheme$TextStyle_web.dark();

  /// From json.
  ThemeColorPalette$TooltipTheme_web.fromJson(Map<String, dynamic> json):
    _decoration = ThemeColorPalette$TooltipTheme$Decoration_web.fromJson(json['decoration'] as Map<String, dynamic>),
    _textStyle = ThemeColorPalette$TooltipTheme$TextStyle_web.fromJson(json['textStyle'] as Map<String, dynamic>);

  /// Tooltip decoration
  ///
  /// Use `theme.decoration` instead.
  @override
  final ThemeColorPalette$TooltipTheme$Decoration_web _decoration;

  /// Tooltip text textStyle
  ///
  /// Use `theme.tooltipTheme.textStyle` instead.
  @override
  final ThemeColorPalette$TooltipTheme$TextStyle_web _textStyle;

  @override
  ThemeColorPalette$TooltipTheme_web copyWith({
    covariant ThemeColorPalette$TooltipTheme$Decoration_web? decoration,
    covariant ThemeColorPalette$TooltipTheme$TextStyle_web? textStyle,
  }) {
    return ThemeColorPalette$TooltipTheme_web(
      decoration: decoration ?? _decoration,
      textStyle: textStyle ?? _textStyle,
    );
  }

  @override
  /// Copy with json method.
  ThemeColorPalette$TooltipTheme_web copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      decoration: _decoration.copyWithJson(json['decoration'] as Map<String, dynamic>?),
      textStyle: _textStyle.copyWithJson(json['textStyle'] as Map<String, dynamic>?),
    );
  }

  /// To json method.
  @override
  Map<String, dynamic> toJson() => {
    'decoration': _decoration.toJson(),
    'textStyle': _textStyle.toJson(),
  };
}


// -------------------- ThemeColorPalette$TooltipTheme$Decoration --------------------

/// Tooltip decoration
///
/// Use `theme.decoration` instead.
class ThemeColorPalette$TooltipTheme$Decoration {
  /// Tooltip decoration
  const ThemeColorPalette$TooltipTheme$Decoration({
    required Color color,
    required double borderRadius,
  }):
    _color = color,
    _borderRadius = borderRadius;

  /// Tooltip decoration
  const ThemeColorPalette$TooltipTheme$Decoration.light():
    _color = const Color(0xff000000),
    _borderRadius = 4.0;

  /// Tooltip decoration
  const ThemeColorPalette$TooltipTheme$Decoration.dark():
    _color = const Color(0xffffffff),
    _borderRadius = 4.0;

  /// From json.
  ThemeColorPalette$TooltipTheme$Decoration.fromJson(Map<String, dynamic> json):
    _color = json['color'] as Color,
    _borderRadius = json['borderRadius'] as double;

  /// Tooltip decoration color
  ///
  /// Use `theme.tooltipTheme.decoration` instead.
  final Color _color;

  /// Tooltip decoration radius
  ///
  /// Use `theme.tooltipTheme.decoration` instead.
  final double _borderRadius;

  ThemeColorPalette$TooltipTheme$Decoration copyWith({
    Color? color,
    double? borderRadius,
  }) {
    return ThemeColorPalette$TooltipTheme$Decoration(
      color: color ?? _color,
      borderRadius: borderRadius ?? _borderRadius,
    );
  }

  /// Copy with json method.
  ThemeColorPalette$TooltipTheme$Decoration copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      color: json['color'] as Color?,
      borderRadius: json['borderRadius'] as double?,
    );
  }

  /// To json method.
  Map<String, dynamic> toJson() => {
    'color': _color,
    'borderRadius': _borderRadius,
  };
}


// -------------------- ThemeColorPalette$TooltipTheme$Decoration_mobile --------------------

/// Tooltip decoration
///
/// Use `theme.decoration` instead.
class ThemeColorPalette$TooltipTheme$Decoration_mobile implements ThemeColorPalette$TooltipTheme$Decoration {
  /// Tooltip decoration
  const ThemeColorPalette$TooltipTheme$Decoration_mobile({
    required Color color,
    required double borderRadius,
  }):
    _color = color,
    _borderRadius = borderRadius;

  /// Tooltip decoration
  const ThemeColorPalette$TooltipTheme$Decoration_mobile.light():
    _color = const Color(0xff000000),
    _borderRadius = 4.0;

  /// Tooltip decoration
  const ThemeColorPalette$TooltipTheme$Decoration_mobile.dark():
    _color = const Color(0xffffffff),
    _borderRadius = 4.0;

  /// From json.
  ThemeColorPalette$TooltipTheme$Decoration_mobile.fromJson(Map<String, dynamic> json):
    _color = json['color'] as Color,
    _borderRadius = json['borderRadius'] as double;

  /// Tooltip decoration color
  ///
  /// Use `theme.tooltipTheme.decoration` instead.
  @override
  final Color _color;

  /// Tooltip decoration radius
  ///
  /// Use `theme.tooltipTheme.decoration` instead.
  @override
  final double _borderRadius;

  @override
  ThemeColorPalette$TooltipTheme$Decoration_mobile copyWith({
    Color? color,
    double? borderRadius,
  }) {
    return ThemeColorPalette$TooltipTheme$Decoration_mobile(
      color: color ?? _color,
      borderRadius: borderRadius ?? _borderRadius,
    );
  }

  @override
  /// Copy with json method.
  ThemeColorPalette$TooltipTheme$Decoration_mobile copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      color: json['color'] as Color?,
      borderRadius: json['borderRadius'] as double?,
    );
  }

  /// To json method.
  @override
  Map<String, dynamic> toJson() => {
    'color': _color,
    'borderRadius': _borderRadius,
  };
}


// -------------------- ThemeColorPalette$TooltipTheme$Decoration_web --------------------

/// Tooltip decoration
///
/// Use `theme.decoration` instead.
class ThemeColorPalette$TooltipTheme$Decoration_web implements ThemeColorPalette$TooltipTheme$Decoration {
  /// Tooltip decoration
  const ThemeColorPalette$TooltipTheme$Decoration_web({
    required Color color,
    required double borderRadius,
  }):
    _color = color,
    _borderRadius = borderRadius;

  /// Tooltip decoration
  const ThemeColorPalette$TooltipTheme$Decoration_web.light():
    _color = const Color(0xff000000),
    _borderRadius = 4.0;

  /// Tooltip decoration
  const ThemeColorPalette$TooltipTheme$Decoration_web.dark():
    _color = const Color(0xffffffff),
    _borderRadius = 4.0;

  /// From json.
  ThemeColorPalette$TooltipTheme$Decoration_web.fromJson(Map<String, dynamic> json):
    _color = json['color'] as Color,
    _borderRadius = json['borderRadius'] as double;

  /// Tooltip decoration color
  ///
  /// Use `theme.tooltipTheme.decoration` instead.
  @override
  final Color _color;

  /// Tooltip decoration radius
  ///
  /// Use `theme.tooltipTheme.decoration` instead.
  @override
  final double _borderRadius;

  @override
  ThemeColorPalette$TooltipTheme$Decoration_web copyWith({
    Color? color,
    double? borderRadius,
  }) {
    return ThemeColorPalette$TooltipTheme$Decoration_web(
      color: color ?? _color,
      borderRadius: borderRadius ?? _borderRadius,
    );
  }

  @override
  /// Copy with json method.
  ThemeColorPalette$TooltipTheme$Decoration_web copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      color: json['color'] as Color?,
      borderRadius: json['borderRadius'] as double?,
    );
  }

  /// To json method.
  @override
  Map<String, dynamic> toJson() => {
    'color': _color,
    'borderRadius': _borderRadius,
  };
}


// -------------------- ThemeColorPalette$TooltipTheme$TextStyle --------------------

/// Tooltip text textStyle
///
/// Use `theme.tooltipTheme.textStyle` instead.
class ThemeColorPalette$TooltipTheme$TextStyle {
  /// Tooltip text textStyle
  const ThemeColorPalette$TooltipTheme$TextStyle({
    required Color color,
  }):
    _color = color;

  /// Tooltip text textStyle
  const ThemeColorPalette$TooltipTheme$TextStyle.light():
    _color = const Color(0xffffffff);

  /// Tooltip text textStyle
  const ThemeColorPalette$TooltipTheme$TextStyle.dark():
    _color = const Color(0xff000000);

  /// From json.
  ThemeColorPalette$TooltipTheme$TextStyle.fromJson(Map<String, dynamic> json):
    _color = json['color'] as Color;

  /// Tooltip text textStyle color
  ///
  /// Use `theme.tooltipTheme.textStyle.color` instead.
  final Color _color;

  ThemeColorPalette$TooltipTheme$TextStyle copyWith({
    Color? color,
  }) {
    return ThemeColorPalette$TooltipTheme$TextStyle(
      color: color ?? _color,
    );
  }

  /// Copy with json method.
  ThemeColorPalette$TooltipTheme$TextStyle copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      color: json['color'] as Color?,
    );
  }

  /// To json method.
  Map<String, dynamic> toJson() => {
    'color': _color,
  };
}


// -------------------- ThemeColorPalette$TooltipTheme$TextStyle_mobile --------------------

/// Tooltip text textStyle
///
/// Use `theme.tooltipTheme.textStyle` instead.
class ThemeColorPalette$TooltipTheme$TextStyle_mobile implements ThemeColorPalette$TooltipTheme$TextStyle {
  /// Tooltip text textStyle
  const ThemeColorPalette$TooltipTheme$TextStyle_mobile({
    required Color color,
  }):
    _color = color;

  /// Tooltip text textStyle
  const ThemeColorPalette$TooltipTheme$TextStyle_mobile.light():
    _color = const Color(0xffffffff);

  /// Tooltip text textStyle
  const ThemeColorPalette$TooltipTheme$TextStyle_mobile.dark():
    _color = const Color(0xff000000);

  /// From json.
  ThemeColorPalette$TooltipTheme$TextStyle_mobile.fromJson(Map<String, dynamic> json):
    _color = json['color'] as Color;

  /// Tooltip text textStyle color
  ///
  /// Use `theme.tooltipTheme.textStyle.color` instead.
  @override
  final Color _color;

  @override
  ThemeColorPalette$TooltipTheme$TextStyle_mobile copyWith({
    Color? color,
  }) {
    return ThemeColorPalette$TooltipTheme$TextStyle_mobile(
      color: color ?? _color,
    );
  }

  @override
  /// Copy with json method.
  ThemeColorPalette$TooltipTheme$TextStyle_mobile copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      color: json['color'] as Color?,
    );
  }

  /// To json method.
  @override
  Map<String, dynamic> toJson() => {
    'color': _color,
  };
}


// -------------------- ThemeColorPalette$TooltipTheme$TextStyle_web --------------------

/// Tooltip text textStyle
///
/// Use `theme.tooltipTheme.textStyle` instead.
class ThemeColorPalette$TooltipTheme$TextStyle_web implements ThemeColorPalette$TooltipTheme$TextStyle {
  /// Tooltip text textStyle
  const ThemeColorPalette$TooltipTheme$TextStyle_web({
    required Color color,
  }):
    _color = color;

  /// Tooltip text textStyle
  const ThemeColorPalette$TooltipTheme$TextStyle_web.light():
    _color = const Color(0xffffffff);

  /// Tooltip text textStyle
  const ThemeColorPalette$TooltipTheme$TextStyle_web.dark():
    _color = const Color(0xff000000);

  /// From json.
  ThemeColorPalette$TooltipTheme$TextStyle_web.fromJson(Map<String, dynamic> json):
    _color = json['color'] as Color;

  /// Tooltip text textStyle color
  ///
  /// Use `theme.tooltipTheme.textStyle.color` instead.
  @override
  final Color _color;

  @override
  ThemeColorPalette$TooltipTheme$TextStyle_web copyWith({
    Color? color,
  }) {
    return ThemeColorPalette$TooltipTheme$TextStyle_web(
      color: color ?? _color,
    );
  }

  @override
  /// Copy with json method.
  ThemeColorPalette$TooltipTheme$TextStyle_web copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      color: json['color'] as Color?,
    );
  }

  /// To json method.
  @override
  Map<String, dynamic> toJson() => {
    'color': _color,
  };
}


// -------------------- ThemeColorPalette$PopupMenuTheme --------------------

/// Popup menu theme
///
/// Use `theme.popupMenuTheme` instead.
class ThemeColorPalette$PopupMenuTheme {
  /// Popup menu theme
  const ThemeColorPalette$PopupMenuTheme({
    required ThemeColorPalette$PopupMenuTheme$TextStyle textStyle,
  }):
    _textStyle = textStyle;

  /// Popup menu theme
  const ThemeColorPalette$PopupMenuTheme.light():
    _textStyle = const ThemeColorPalette$PopupMenuTheme$TextStyle.light();

  /// Popup menu theme
  const ThemeColorPalette$PopupMenuTheme.dark():
    _textStyle = const ThemeColorPalette$PopupMenuTheme$TextStyle.dark();

  /// From json.
  ThemeColorPalette$PopupMenuTheme.fromJson(Map<String, dynamic> json):
    _textStyle = ThemeColorPalette$PopupMenuTheme$TextStyle.fromJson(json['textStyle'] as Map<String, dynamic>);

  /// Popup menu theme text style
  ///
  /// Use `theme.popupMenuTheme.textStyle` instead.
  final ThemeColorPalette$PopupMenuTheme$TextStyle _textStyle;

  ThemeColorPalette$PopupMenuTheme copyWith({
    covariant ThemeColorPalette$PopupMenuTheme$TextStyle? textStyle,
  }) {
    return ThemeColorPalette$PopupMenuTheme(
      textStyle: textStyle ?? _textStyle,
    );
  }

  /// Copy with json method.
  ThemeColorPalette$PopupMenuTheme copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      textStyle: _textStyle.copyWithJson(json['textStyle'] as Map<String, dynamic>?),
    );
  }

  /// To json method.
  Map<String, dynamic> toJson() => {
    'textStyle': _textStyle.toJson(),
  };
}


// -------------------- ThemeColorPalette$PopupMenuTheme_mobile --------------------

/// Popup menu theme
///
/// Use `theme.popupMenuTheme` instead.
class ThemeColorPalette$PopupMenuTheme_mobile implements ThemeColorPalette$PopupMenuTheme {
  /// Popup menu theme
  const ThemeColorPalette$PopupMenuTheme_mobile({
    required ThemeColorPalette$PopupMenuTheme$TextStyle_mobile textStyle,
  }):
    _textStyle = textStyle;

  /// Popup menu theme
  const ThemeColorPalette$PopupMenuTheme_mobile.light():
    _textStyle = const ThemeColorPalette$PopupMenuTheme$TextStyle_mobile.light();

  /// Popup menu theme
  const ThemeColorPalette$PopupMenuTheme_mobile.dark():
    _textStyle = const ThemeColorPalette$PopupMenuTheme$TextStyle_mobile.dark();

  /// From json.
  ThemeColorPalette$PopupMenuTheme_mobile.fromJson(Map<String, dynamic> json):
    _textStyle = ThemeColorPalette$PopupMenuTheme$TextStyle_mobile.fromJson(json['textStyle'] as Map<String, dynamic>);

  /// Popup menu theme text style
  ///
  /// Use `theme.popupMenuTheme.textStyle` instead.
  @override
  final ThemeColorPalette$PopupMenuTheme$TextStyle_mobile _textStyle;

  @override
  ThemeColorPalette$PopupMenuTheme_mobile copyWith({
    covariant ThemeColorPalette$PopupMenuTheme$TextStyle_mobile? textStyle,
  }) {
    return ThemeColorPalette$PopupMenuTheme_mobile(
      textStyle: textStyle ?? _textStyle,
    );
  }

  @override
  /// Copy with json method.
  ThemeColorPalette$PopupMenuTheme_mobile copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      textStyle: _textStyle.copyWithJson(json['textStyle'] as Map<String, dynamic>?),
    );
  }

  /// To json method.
  @override
  Map<String, dynamic> toJson() => {
    'textStyle': _textStyle.toJson(),
  };
}


// -------------------- ThemeColorPalette$PopupMenuTheme_web --------------------

/// Popup menu theme
///
/// Use `theme.popupMenuTheme` instead.
class ThemeColorPalette$PopupMenuTheme_web implements ThemeColorPalette$PopupMenuTheme {
  /// Popup menu theme
  const ThemeColorPalette$PopupMenuTheme_web({
    required ThemeColorPalette$PopupMenuTheme$TextStyle_web textStyle,
  }):
    _textStyle = textStyle;

  /// Popup menu theme
  const ThemeColorPalette$PopupMenuTheme_web.light():
    _textStyle = const ThemeColorPalette$PopupMenuTheme$TextStyle_web.light();

  /// Popup menu theme
  const ThemeColorPalette$PopupMenuTheme_web.dark():
    _textStyle = const ThemeColorPalette$PopupMenuTheme$TextStyle_web.dark();

  /// From json.
  ThemeColorPalette$PopupMenuTheme_web.fromJson(Map<String, dynamic> json):
    _textStyle = ThemeColorPalette$PopupMenuTheme$TextStyle_web.fromJson(json['textStyle'] as Map<String, dynamic>);

  /// Popup menu theme text style
  ///
  /// Use `theme.popupMenuTheme.textStyle` instead.
  @override
  final ThemeColorPalette$PopupMenuTheme$TextStyle_web _textStyle;

  @override
  ThemeColorPalette$PopupMenuTheme_web copyWith({
    covariant ThemeColorPalette$PopupMenuTheme$TextStyle_web? textStyle,
  }) {
    return ThemeColorPalette$PopupMenuTheme_web(
      textStyle: textStyle ?? _textStyle,
    );
  }

  @override
  /// Copy with json method.
  ThemeColorPalette$PopupMenuTheme_web copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      textStyle: _textStyle.copyWithJson(json['textStyle'] as Map<String, dynamic>?),
    );
  }

  /// To json method.
  @override
  Map<String, dynamic> toJson() => {
    'textStyle': _textStyle.toJson(),
  };
}


// -------------------- ThemeColorPalette$PopupMenuTheme$TextStyle --------------------

/// Popup menu theme text style
///
/// Use `theme.popupMenuTheme.textStyle` instead.
class ThemeColorPalette$PopupMenuTheme$TextStyle {
  /// Popup menu theme text style
  const ThemeColorPalette$PopupMenuTheme$TextStyle({
    required Color color,
  }):
    _color = color;

  /// Popup menu theme text style
  const ThemeColorPalette$PopupMenuTheme$TextStyle.light():
    _color = const Color(0xff2864ac);

  /// Popup menu theme text style
  const ThemeColorPalette$PopupMenuTheme$TextStyle.dark():
    _color = const Color(0xff699fcf);

  /// From json.
  ThemeColorPalette$PopupMenuTheme$TextStyle.fromJson(Map<String, dynamic> json):
    _color = json['color'] as Color;

  /// Popup menu theme text style color
  ///
  /// Use `theme.popupMenuTheme.textStyle.color` instead.
  final Color _color;

  ThemeColorPalette$PopupMenuTheme$TextStyle copyWith({
    Color? color,
  }) {
    return ThemeColorPalette$PopupMenuTheme$TextStyle(
      color: color ?? _color,
    );
  }

  /// Copy with json method.
  ThemeColorPalette$PopupMenuTheme$TextStyle copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      color: json['color'] as Color?,
    );
  }

  /// To json method.
  Map<String, dynamic> toJson() => {
    'color': _color,
  };
}


// -------------------- ThemeColorPalette$PopupMenuTheme$TextStyle_mobile --------------------

/// Popup menu theme text style
///
/// Use `theme.popupMenuTheme.textStyle` instead.
class ThemeColorPalette$PopupMenuTheme$TextStyle_mobile implements ThemeColorPalette$PopupMenuTheme$TextStyle {
  /// Popup menu theme text style
  const ThemeColorPalette$PopupMenuTheme$TextStyle_mobile({
    required Color color,
  }):
    _color = color;

  /// Popup menu theme text style
  const ThemeColorPalette$PopupMenuTheme$TextStyle_mobile.light():
    _color = const Color(0xff2864ac);

  /// Popup menu theme text style
  const ThemeColorPalette$PopupMenuTheme$TextStyle_mobile.dark():
    _color = const Color(0xff699fcf);

  /// From json.
  ThemeColorPalette$PopupMenuTheme$TextStyle_mobile.fromJson(Map<String, dynamic> json):
    _color = json['color'] as Color;

  /// Popup menu theme text style color
  ///
  /// Use `theme.popupMenuTheme.textStyle.color` instead.
  @override
  final Color _color;

  @override
  ThemeColorPalette$PopupMenuTheme$TextStyle_mobile copyWith({
    Color? color,
  }) {
    return ThemeColorPalette$PopupMenuTheme$TextStyle_mobile(
      color: color ?? _color,
    );
  }

  @override
  /// Copy with json method.
  ThemeColorPalette$PopupMenuTheme$TextStyle_mobile copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      color: json['color'] as Color?,
    );
  }

  /// To json method.
  @override
  Map<String, dynamic> toJson() => {
    'color': _color,
  };
}


// -------------------- ThemeColorPalette$PopupMenuTheme$TextStyle_web --------------------

/// Popup menu theme text style
///
/// Use `theme.popupMenuTheme.textStyle` instead.
class ThemeColorPalette$PopupMenuTheme$TextStyle_web implements ThemeColorPalette$PopupMenuTheme$TextStyle {
  /// Popup menu theme text style
  const ThemeColorPalette$PopupMenuTheme$TextStyle_web({
    required Color color,
  }):
    _color = color;

  /// Popup menu theme text style
  const ThemeColorPalette$PopupMenuTheme$TextStyle_web.light():
    _color = const Color(0xff2864ac);

  /// Popup menu theme text style
  const ThemeColorPalette$PopupMenuTheme$TextStyle_web.dark():
    _color = const Color(0xff699fcf);

  /// From json.
  ThemeColorPalette$PopupMenuTheme$TextStyle_web.fromJson(Map<String, dynamic> json):
    _color = json['color'] as Color;

  /// Popup menu theme text style color
  ///
  /// Use `theme.popupMenuTheme.textStyle.color` instead.
  @override
  final Color _color;

  @override
  ThemeColorPalette$PopupMenuTheme$TextStyle_web copyWith({
    Color? color,
  }) {
    return ThemeColorPalette$PopupMenuTheme$TextStyle_web(
      color: color ?? _color,
    );
  }

  @override
  /// Copy with json method.
  ThemeColorPalette$PopupMenuTheme$TextStyle_web copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      color: json['color'] as Color?,
    );
  }

  /// To json method.
  @override
  Map<String, dynamic> toJson() => {
    'color': _color,
  };
}


// -------------------- ThemeColorPalette$DividerTheme --------------------

/// Divider theme
///
/// Use `theme.dividerTheme` instead.
class ThemeColorPalette$DividerTheme {
  /// Divider theme
  const ThemeColorPalette$DividerTheme({
    required Color color,
    required double thickness,
  }):
    _color = color,
    _thickness = thickness;

  /// Divider theme
  const ThemeColorPalette$DividerTheme.light():
    _color = const Color(0x0a000000),
    _thickness = 2.0;

  /// Divider theme
  const ThemeColorPalette$DividerTheme.dark():
    _color = const Color(0xff434343),
    _thickness = 2.0;

  /// From json.
  ThemeColorPalette$DividerTheme.fromJson(Map<String, dynamic> json):
    _color = json['color'] as Color,
    _thickness = json['thickness'] as double;

  /// Divider color
  ///
  /// Use `theme.dividerColor` instead.
  final Color _color;

  /// Divider thickness
  ///
  /// Use `theme.dividerTheme.thickness` instead.
  final double _thickness;

  ThemeColorPalette$DividerTheme copyWith({
    Color? color,
    double? thickness,
  }) {
    return ThemeColorPalette$DividerTheme(
      color: color ?? _color,
      thickness: thickness ?? _thickness,
    );
  }

  /// Copy with json method.
  ThemeColorPalette$DividerTheme copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      color: json['color'] as Color?,
      thickness: json['thickness'] as double?,
    );
  }

  /// To json method.
  Map<String, dynamic> toJson() => {
    'color': _color,
    'thickness': _thickness,
  };
}


// -------------------- ThemeColorPalette$DividerTheme_mobile --------------------

/// Divider theme
///
/// Use `theme.dividerTheme` instead.
class ThemeColorPalette$DividerTheme_mobile implements ThemeColorPalette$DividerTheme {
  /// Divider theme
  const ThemeColorPalette$DividerTheme_mobile({
    required Color color,
    required double thickness,
  }):
    _color = color,
    _thickness = thickness;

  /// Divider theme
  const ThemeColorPalette$DividerTheme_mobile.light():
    _color = const Color(0x0a000000),
    _thickness = 2.0;

  /// Divider theme
  const ThemeColorPalette$DividerTheme_mobile.dark():
    _color = const Color(0xff434343),
    _thickness = 2.0;

  /// From json.
  ThemeColorPalette$DividerTheme_mobile.fromJson(Map<String, dynamic> json):
    _color = json['color'] as Color,
    _thickness = json['thickness'] as double;

  /// Divider color
  ///
  /// Use `theme.dividerColor` instead.
  @override
  final Color _color;

  /// Divider thickness
  ///
  /// Use `theme.dividerTheme.thickness` instead.
  @override
  final double _thickness;

  @override
  ThemeColorPalette$DividerTheme_mobile copyWith({
    Color? color,
    double? thickness,
  }) {
    return ThemeColorPalette$DividerTheme_mobile(
      color: color ?? _color,
      thickness: thickness ?? _thickness,
    );
  }

  @override
  /// Copy with json method.
  ThemeColorPalette$DividerTheme_mobile copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      color: json['color'] as Color?,
      thickness: json['thickness'] as double?,
    );
  }

  /// To json method.
  @override
  Map<String, dynamic> toJson() => {
    'color': _color,
    'thickness': _thickness,
  };
}


// -------------------- ThemeColorPalette$DividerTheme_web --------------------

/// Divider theme
///
/// Use `theme.dividerTheme` instead.
class ThemeColorPalette$DividerTheme_web implements ThemeColorPalette$DividerTheme {
  /// Divider theme
  const ThemeColorPalette$DividerTheme_web({
    required Color color,
    required double thickness,
  }):
    _color = color,
    _thickness = thickness;

  /// Divider theme
  const ThemeColorPalette$DividerTheme_web.light():
    _color = const Color(0x0a000000),
    _thickness = 2.0;

  /// Divider theme
  const ThemeColorPalette$DividerTheme_web.dark():
    _color = const Color(0xff434343),
    _thickness = 2.0;

  /// From json.
  ThemeColorPalette$DividerTheme_web.fromJson(Map<String, dynamic> json):
    _color = json['color'] as Color,
    _thickness = json['thickness'] as double;

  /// Divider color
  ///
  /// Use `theme.dividerColor` instead.
  @override
  final Color _color;

  /// Divider thickness
  ///
  /// Use `theme.dividerTheme.thickness` instead.
  @override
  final double _thickness;

  @override
  ThemeColorPalette$DividerTheme_web copyWith({
    Color? color,
    double? thickness,
  }) {
    return ThemeColorPalette$DividerTheme_web(
      color: color ?? _color,
      thickness: thickness ?? _thickness,
    );
  }

  @override
  /// Copy with json method.
  ThemeColorPalette$DividerTheme_web copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
      color: json['color'] as Color?,
      thickness: json['thickness'] as double?,
    );
  }

  /// To json method.
  @override
  Map<String, dynamic> toJson() => {
    'color': _color,
    'thickness': _thickness,
  };
}


