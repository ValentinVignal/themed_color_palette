// ! GENERATED CODE - DO NOT MANUALLY EDIT

part of 'theme.dart';

// Version: 0.0.0

/// Different Themes
enum Themes {
  /// Light theme
  light,
  /// Dark theme
  dark,
}

/// Extension on [Themes]
extension ThemesExtension on Themes {
  /// Color palette
  ThemeColorPalette get colorPalette {
    switch (this) {
      case Themes.dark:
        return const ThemeColorPalette.dark();
      case Themes.light:
      default:
        return const ThemeColorPalette.light();

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
    Color? accentColor,
    Color? primaryColor,
    Color? primaryColorLight,
    Color? secondaryColor,
    Color? errorColor,
    Color? disabledColor,
    ThemeColorPalette$TextEmphasis? textEmphasis,
    ThemeColorPalette$IconEmphasis? iconEmphasis,
    ThemeColorPalette$Border? border,
    ThemeColorPalette$Background? background,
    ThemeColorPalette$FloatingActionButton? floatingActionButton,
    ThemeColorPalette$Task? task,
    ThemeColorPalette$Form? form,
    ThemeColorPalette$Notification? notification,
    ThemeColorPalette$ProjectTimeline? projectTimeline,
    ThemeColorPalette$Pin? pin,
    Color? hoverColor,
    ThemeColorPalette$AppBarTheme? appBarTheme,
    ThemeColorPalette$BottomAppBarTheme? bottomAppBarTheme,
    ThemeColorPalette$TooltipTheme? tooltipTheme,
    ThemeColorPalette$PopupMenuTheme? popupMenuTheme,
    ThemeColorPalette$DividerTheme? dividerTheme,
    Color? selectedRowColor,
  }) {
    return ThemeColorPalette(
      brightness: brightness ?? this._brightness,
      accentColor: accentColor ?? this._accentColor,
      primaryColor: primaryColor ?? this._primaryColor,
      primaryColorLight: primaryColorLight ?? this._primaryColorLight,
      secondaryColor: secondaryColor ?? this.secondaryColor,
      errorColor: errorColor ?? this._errorColor,
      disabledColor: disabledColor ?? this._disabledColor,
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
      hoverColor: hoverColor ?? this._hoverColor,
      appBarTheme: appBarTheme ?? this.appBarTheme,
      bottomAppBarTheme: bottomAppBarTheme ?? this.bottomAppBarTheme,
      tooltipTheme: tooltipTheme ?? this._tooltipTheme,
      popupMenuTheme: popupMenuTheme ?? this._popupMenuTheme,
      dividerTheme: dividerTheme ?? this._dividerTheme,
      selectedRowColor: selectedRowColor ?? this._selectedRowColor,
    );
  }
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
    required this.reversed,
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
    disabled = const Color(0x99000000),
    reversed = const ThemeColorPalette$TextEmphasis$Reversed.light();

  /// The different text emphasis
  const ThemeColorPalette$TextEmphasis.dark():
    _accent = const Color(0xff699fcf),
    success = const Color(0xff7ec141),
    error = const Color(0xffe54d39),
    high = const Color(0xffffffff),
    medium = const Color(0xdeffffff),
    low = const Color(0x99ffffff),
    disabled = const Color(0x99ffffff),
    reversed = const ThemeColorPalette$TextEmphasis$Reversed.dark();

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
  final ThemeColorPalette$TextEmphasis$Reversed reversed;


  ThemeColorPalette$TextEmphasis copyWith({
    Color? accent,
    Color? success,
    Color? error,
    Color? high,
    Color? medium,
    Color? low,
    Color? disabled,
    ThemeColorPalette$TextEmphasis$Reversed? reversed,
  }) {
    return ThemeColorPalette$TextEmphasis(
      accent: accent ?? this._accent,
      success: success ?? this.success,
      error: error ?? this.error,
      high: high ?? this.high,
      medium: medium ?? this.medium,
      low: low ?? this.low,
      disabled: disabled ?? this.disabled,
      reversed: reversed ?? this.reversed,
    );
  }
}


// -------------------- ThemeColorPalette$TextEmphasis$Reversed --------------------

/// Reversed text emphasis
class ThemeColorPalette$TextEmphasis$Reversed {
  /// Reversed text emphasis
  const ThemeColorPalette$TextEmphasis$Reversed({
    required this.high,
    required this.medium,
    required this.low,
    required this.disabled,
  });

  /// Reversed text emphasis
  const ThemeColorPalette$TextEmphasis$Reversed.light():
    high = const Color(0xffffffff),
    medium = const Color(0xdeffffff),
    low = const Color(0x99ffffff),
    disabled = const Color(0x99ffffff);

  /// Reversed text emphasis
  const ThemeColorPalette$TextEmphasis$Reversed.dark():
    high = const Color(0xff000000),
    medium = const Color(0xde000000),
    low = const Color(0x99000000),
    disabled = const Color(0x99000000);

  /// Reversed high emphasis
  final Color high;

  /// Reversed medium emphasis
  final Color medium;

  /// Reversed low emphasis
  final Color low;

  /// Reversed disabled emphasis
  final Color disabled;


  ThemeColorPalette$TextEmphasis$Reversed copyWith({
    Color? high,
    Color? medium,
    Color? low,
    Color? disabled,
  }) {
    return ThemeColorPalette$TextEmphasis$Reversed(
      high: high ?? this.high,
      medium: medium ?? this.medium,
      low: low ?? this.low,
      disabled: disabled ?? this.disabled,
    );
  }
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
    ThemeColorPalette$IconEmphasis$Reversed? reversed,
  }) {
    return ThemeColorPalette$IconEmphasis(
      high: high ?? this.high,
      medium: medium ?? this.medium,
      low: low ?? this.low,
      disabled: disabled ?? this.disabled,
      reversed: reversed ?? this.reversed,
    );
  }
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
      divider: divider ?? this._divider,
    );
  }
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
      backgroundColor: backgroundColor ?? this._backgroundColor,
      background1: background1 ?? this.background1,
      scaffold: scaffold ?? this._scaffold,
      canvas: canvas ?? this._canvas,
      card: card ?? this._card,
    );
  }
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
      backgroundColor: backgroundColor ?? this._backgroundColor,
      foregroundColor: foregroundColor ?? this._foregroundColor,
      disabledElevation: disabledElevation ?? this._disabledElevation,
    );
  }
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

  /// Color of the notification bubble
  final Color countBubbleColor;


  ThemeColorPalette$Notification copyWith({
    Color? countBubbleColor,
  }) {
    return ThemeColorPalette$Notification(
      countBubbleColor: countBubbleColor ?? this.countBubbleColor,
    );
  }
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
      color: color ?? this._color,
      foregroundColor: foregroundColor ?? this._foregroundColor,
    );
  }
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

  /// Color of the bottom app bar
  ///
  /// Use `theme.bottomAppBarTheme.color` instead.
  final Color _color;


  ThemeColorPalette$BottomAppBarTheme copyWith({
    Color? color,
  }) {
    return ThemeColorPalette$BottomAppBarTheme(
      color: color ?? this._color,
    );
  }
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

  /// Tooltip decoration
  ///
  /// Use `theme.decoration` instead.
  final ThemeColorPalette$TooltipTheme$Decoration _decoration;

  /// Tooltip text textStyle
  ///
  /// Use `theme.tooltipTheme.textStyle` instead.
  final ThemeColorPalette$TooltipTheme$TextStyle _textStyle;


  ThemeColorPalette$TooltipTheme copyWith({
    ThemeColorPalette$TooltipTheme$Decoration? decoration,
    ThemeColorPalette$TooltipTheme$TextStyle? textStyle,
  }) {
    return ThemeColorPalette$TooltipTheme(
      decoration: decoration ?? this._decoration,
      textStyle: textStyle ?? this._textStyle,
    );
  }
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
      color: color ?? this._color,
      borderRadius: borderRadius ?? this._borderRadius,
    );
  }
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

  /// Tooltip text textStyle color
  ///
  /// Use `theme.tooltipTheme.textStyle.color` instead.
  final Color _color;


  ThemeColorPalette$TooltipTheme$TextStyle copyWith({
    Color? color,
  }) {
    return ThemeColorPalette$TooltipTheme$TextStyle(
      color: color ?? this._color,
    );
  }
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

  /// Popup menu theme text style
  ///
  /// Use `theme.popupMenuTheme.textStyle` instead.
  final ThemeColorPalette$PopupMenuTheme$TextStyle _textStyle;


  ThemeColorPalette$PopupMenuTheme copyWith({
    ThemeColorPalette$PopupMenuTheme$TextStyle? textStyle,
  }) {
    return ThemeColorPalette$PopupMenuTheme(
      textStyle: textStyle ?? this._textStyle,
    );
  }
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

  /// Popup menu theme text style color
  ///
  /// Use `theme.popupMenuTheme.textStyle.color` instead.
  final Color _color;


  ThemeColorPalette$PopupMenuTheme$TextStyle copyWith({
    Color? color,
  }) {
    return ThemeColorPalette$PopupMenuTheme$TextStyle(
      color: color ?? this._color,
    );
  }
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
      color: color ?? this._color,
      thickness: thickness ?? this._thickness,
    );
  }
}


