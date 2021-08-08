part of theme_color_palette;

/// Font weight enum
enum FontWeightEnum {
  /// 100
  w100,

  /// 200
  w200,

  /// 300
  w300,

  /// 400
  w400,

  /// 500
  w500,

  /// 600
  w600,

  /// 700
  w700,

  /// 800
  w800,

  /// 900
  w900,
}

/// Font weight enum extension
extension FontWeightEnumExtension on FontWeightEnum {
  /// Possible values
  static const possibleValues = [
    'w100',
    'thin',
    'w200',
    'extraLight',
    'w300',
    'light',
    'w400',
    'normal',
    'regular',
    'plain',
    'w500',
    'medium',
    'w600',
    'semiBold',
    'w700',
    'bold',
    'w800',
    'extraBold',
    'black',
    'w900',
  ];

  /// Value front string
  static FontWeightEnum fromString(String string) {
    switch (string) {
      case 'w100':
      case 'thin':
        return FontWeightEnum.w100;
      case 'w200':
      case 'extraLight':
        return FontWeightEnum.w200;
      case 'w300':
      case 'light':
        return FontWeightEnum.w300;
      case 'w500':
      case 'medium':
        return FontWeightEnum.w500;
      case 'w600':
      case 'semiBold':
        return FontWeightEnum.w600;
      case 'w700':
      case 'bold':
        return FontWeightEnum.w700;
      case 'w800':
      case 'extraBold':
        return FontWeightEnum.w800;
      case 'w900':
      case 'black':
        return FontWeightEnum.w900;
      case 'w400':
      case 'normal':
      case 'regular':
      case 'plain':
      default:
        return FontWeightEnum.w400;
    }
  }

  /// Get the string
  String get string {
    switch (this) {
      case FontWeightEnum.w100:
        return 'w100';
      case FontWeightEnum.w200:
        return 'w200';
      case FontWeightEnum.w300:
        return 'w300';
      case FontWeightEnum.w400:
        return 'w400';
      case FontWeightEnum.w500:
        return 'w500';
      case FontWeightEnum.w600:
        return 'w600';
      case FontWeightEnum.w700:
        return 'w700';
      case FontWeightEnum.w800:
        return 'w800';
      case FontWeightEnum.w900:
        return 'w900';
    }
  }
}

/// Font weight
class FontWeight extends Value {
  /// Font weight from Json
  FontWeight.fromJson({
    required dynamic fontWeight,
    required List<String> path,
    required String? theme,
  })  : fontWeight = fontWeight is String
            ? FontWeightEnumExtension.fromString(fontWeight)
            : (allValues[Value._allValuesImportKey(
                path: (fontWeight as Map)['import'] as String,
                theme: theme,
              )]! as FontWeight)
                .fontWeight,
        super(value: fontWeight, path: path, theme: theme) {
    if (fontWeight is String && !FontWeightEnumExtension.possibleValues.contains(fontWeight)) {
      errors.add(
        'Font weight "${path.last}": "$fontWeight" is not a valid value (possible values: ${FontWeightEnumExtension.possibleValues}, location: $path)',
      );
    }
  }

  @override
  String get className => 'FontWeight';

  /// Font weight value
  final FontWeightEnum fontWeight;

  @override
  String get dartConstructor {
    return 'FontWeight.${fontWeight.string}';
  }
}
