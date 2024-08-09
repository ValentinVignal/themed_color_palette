## NEXT

- Fixes a bug when no version was provided.

## [0.4.1] 28/06/2024

- Upgrade dependencies.
- Fixes a bug where `Map<dynamic, dynamic>` couldn't be casted as `Map<String, dynamic>`.

## [0.4.0] 28/08/2023

- Allow to base a theme on another theme than the default one.

## [0.3.4] 20/07/2022

- Remove (wrong) platform example from the README to make it simpler.

## [0.3.3] 20/07/2022

- Rename the builder to `themedColorPaletteGeneratorBuilder`.

## [0.3.2] 19/07/2022

- Reduce the minimum dart version to `2.16.0`.

## [0.3.1] 19/07/2022

- Add a better documentation.

## [0.3.0] 11/07/2022

- Deploy on pub.

## [0.2.4] 07/03/2022

- `fromYaml`, `toYaml`, `copyWithYaml`.

## [0.2.3] 13/02/2022

- `fromJson`, `toJson`, `copyWithJson`.

## [0.2.2] 07/02/2022

- Add the extension `ThemesExtension` with the `colorPalette` getters.

## [0.2.1] 06/02/2022

- Fix bugs with platforms:
  - Create specific platform object only if the parents include those platforms.
  - When a generic/all-platforms collection doesn't have any children, remove `{}` from the `.copyWith` method.

## [0.2.0] 31/01/2022

- Add the `.platforms` option to generate platform specific themes.

## [0.1.0] 18/10/2021

- Migration to null-safety: The code generated is now null-safe.
