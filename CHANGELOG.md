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

