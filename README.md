[![codecov](https://codecov.io/gh/ValentinVignal/themed_color_palette/branch/main/graph/badge.svg?token=QDQAEZDFLI)](https://codecov.io/gh/ValentinVignal/themed_color_palette)
[![wakatime](https://wakatime.com/badge/github/ValentinVignal/themed_color_palette.svg)](https://wakatime.com/badge/github/ValentinVignal/themed_color_palette)


# Themed Color Palette

## Create a theme yaml file

Create a yaml file with the extension `.theme.dart`.

Fill the yaml files with the collections of values of your theme:

```yaml
.themes: # Those are the different themes of the app.
  - light
  - dark
.name: themedColorPalette
.description: The Themed Color Palette
.shared: # The shared values are constants independent of the theme.
  radius:
    .description: Default radius.
    .type: double
    .value: 4
  padding:
    .description: Default padding.
    .type: double
    .value: 8
.themed: # Themed values are values that change between the different themes.
  primaryColor:
    .description: Primary color
    .type: color
    light: ff00296b
    dark: ffb1cff5
  secondaryColor:
    .description: Secondary color
    .type: color
    light: ffd26900
    dark: ffffd270
```

An example can be found in the [`example`](https://github.com/ValentinVignal/theme_color_palette/tree/main/example) folder.

### About the yaml file

Each object has several properties:
- `.name`: The name of the object. It should be in `camelCase`:
  https://en.wikipedia.org/wiki/Camel_case.
- `.description`: A short description of the object so we know what it is used
  for This description will be comments in the code, the developers will see
  when they code/use it.

#### Values:

There are different type of values:
- `int`: Number with no decimals (ex: 0, 1, 2, 3, 4, 5...).
- `double`: Number with decimals (ex: 0.5, 1.0 ...)..
- `color`: Should be `aarrggbb` format. When importing a color, you can add the
    parameter `withOpacity` and a double in `[0, 1]`. You can also import the
    opacity used in the `withOpacity` parameter.
- `fontWeight`: The different values are:
  - `w100`, `thin`
  - `w200`, `extraLight`
  - `w300`, `light`
  - `w400`, `medium`
  - `w500`, `normal`, `regular`, `plain`
  - `w600`, `semiBold`
  - `w700`, `bold`
  - `w800`, `extraBold`
  - `w900`, `black`
- `bool`: A boolean, the different values are:
  - `true`
  - `false`
- `brightness`: The brightness values are:
  - `light`
  - `dark`

`.flutter`: `.flutter` property is used when a value is used to sed the Flutter
  Material theme (ex: `cardColor`). Specify what value it specifies in the
  flutter theme (ex: `theme.cardColor`) It will indicates to the user to use the
  `cardColor` from the Flutter Material Theme instead.

 #### Imports

 You can only import values that have been PREVIOUSLY defined (aka higher in the file).


### Editing on VSCode
 
You can install [this VSCode extension](https://marketplace.visualstudio.com/items?itemName=valentin-vignal.themed-color-palette-vscode-extension) to provide a better editing experience with highlighting and decorations.

## Builder configuration

Create a `build.yaml` at the root of your repository:

```yaml
targets:
  $default:
    builders:
      themed_color_palette:themedColorPaletteGeneratorBuilder:
        enabled: true
        generate_for:
          - lib/*
```

## Generates the code

Run

```
flutter pub run build_runner build --delete-conflicting-outputs
```

