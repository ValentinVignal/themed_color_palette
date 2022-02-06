## [0.2.1] 06/02/2022

- Fix bugs with platforms:
  - Create specific platform object only if the parents include those platforms.
  - When a generic/all-platforms collection doesn't have any children, remove `{}` from the `.copyWith` method.

## [0.2.0] 31/01/2022

- Add the `.platforms` option to generate platform specific themes.

## [0.1.0] 18/10/2021

- Migration to null-safety: The code generated is now null-safe.

