import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';

const error = Color(0xFFBA1A1A);
const neutral_variant = Color(0xFF5C5E67);
const quaternary = Color(0xFF222566);


CustomColors lightCustomColors = const CustomColors(
  sourceError: Color(0xFFBA1A1A),
  error: Color(0xFFBA1A1A),
  onError: Color(0xFFFFFFFF),
  errorContainer: Color(0xFFFFDAD5),
  onErrorContainer: Color(0xFF410002),
  sourceNeutralvariant: Color(0xFF5C5E67),
  neutralvariant: Color(0xFF385BA9),
  onNeutralvariant: Color(0xFFFFFFFF),
  neutralvariantContainer: Color(0xFFDAE2FF),
  onNeutralvariantContainer: Color(0xFF001946),
  sourceQuaternary: Color(0xFF222566),
  quaternary: Color(0xFF5156A9),
  onQuaternary: Color(0xFFFFFFFF),
  quaternaryContainer: Color(0xFFE1E0FF),
  onQuaternaryContainer: Color(0xFF070764),
);

CustomColors darkCustomColors = const CustomColors(
  sourceError: Color(0xFFBA1A1A),
  error: Color(0xFFFFB4AB),
  onError: Color(0xFF690004),
  errorContainer: Color(0xFF930009),
  onErrorContainer: Color(0xFFFFDAD5),
  sourceNeutralvariant: Color(0xFF5C5E67),
  neutralvariant: Color(0xFFB1C5FF),
  onNeutralvariant: Color(0xFF002C70),
  neutralvariantContainer: Color(0xFF1B438F),
  onNeutralvariantContainer: Color(0xFFDAE2FF),
  sourceQuaternary: Color(0xFF222566),
  quaternary: Color(0xFFBFC1FF),
  onQuaternary: Color(0xFF212578),
  quaternaryContainer: Color(0xFF393D8F),
  onQuaternaryContainer: Color(0xFFE1E0FF),
);



/// Defines a set of custom colors, each comprised of 4 complementary tones.
///
/// See also:
///   * <https://m3.material.io/styles/color/the-color-system/custom-colors>
@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    required this.sourceError,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.sourceNeutralvariant,
    required this.neutralvariant,
    required this.onNeutralvariant,
    required this.neutralvariantContainer,
    required this.onNeutralvariantContainer,
    required this.sourceQuaternary,
    required this.quaternary,
    required this.onQuaternary,
    required this.quaternaryContainer,
    required this.onQuaternaryContainer,
  });

  final Color? sourceError;
  final Color? error;
  final Color? onError;
  final Color? errorContainer;
  final Color? onErrorContainer;
  final Color? sourceNeutralvariant;
  final Color? neutralvariant;
  final Color? onNeutralvariant;
  final Color? neutralvariantContainer;
  final Color? onNeutralvariantContainer;
  final Color? sourceQuaternary;
  final Color? quaternary;
  final Color? onQuaternary;
  final Color? quaternaryContainer;
  final Color? onQuaternaryContainer;

  @override
  CustomColors copyWith({
    Color? sourceError,
    Color? error,
    Color? onError,
    Color? errorContainer,
    Color? onErrorContainer,
    Color? sourceNeutralvariant,
    Color? neutralvariant,
    Color? onNeutralvariant,
    Color? neutralvariantContainer,
    Color? onNeutralvariantContainer,
    Color? sourceQuaternary,
    Color? quaternary,
    Color? onQuaternary,
    Color? quaternaryContainer,
    Color? onQuaternaryContainer,
  }) {
    return CustomColors(
      sourceError: sourceError ?? this.sourceError,
      error: error ?? this.error,
      onError: onError ?? this.onError,
      errorContainer: errorContainer ?? this.errorContainer,
      onErrorContainer: onErrorContainer ?? this.onErrorContainer,
      sourceNeutralvariant: sourceNeutralvariant ?? this.sourceNeutralvariant,
      neutralvariant: neutralvariant ?? this.neutralvariant,
      onNeutralvariant: onNeutralvariant ?? this.onNeutralvariant,
      neutralvariantContainer: neutralvariantContainer ?? this.neutralvariantContainer,
      onNeutralvariantContainer: onNeutralvariantContainer ?? this.onNeutralvariantContainer,
      sourceQuaternary: sourceQuaternary ?? this.sourceQuaternary,
      quaternary: quaternary ?? this.quaternary,
      onQuaternary: onQuaternary ?? this.onQuaternary,
      quaternaryContainer: quaternaryContainer ?? this.quaternaryContainer,
      onQuaternaryContainer: onQuaternaryContainer ?? this.onQuaternaryContainer,
    );
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      sourceError: Color.lerp(sourceError, other.sourceError, t),
      error: Color.lerp(error, other.error, t),
      onError: Color.lerp(onError, other.onError, t),
      errorContainer: Color.lerp(errorContainer, other.errorContainer, t),
      onErrorContainer: Color.lerp(onErrorContainer, other.onErrorContainer, t),
      sourceNeutralvariant: Color.lerp(sourceNeutralvariant, other.sourceNeutralvariant, t),
      neutralvariant: Color.lerp(neutralvariant, other.neutralvariant, t),
      onNeutralvariant: Color.lerp(onNeutralvariant, other.onNeutralvariant, t),
      neutralvariantContainer: Color.lerp(neutralvariantContainer, other.neutralvariantContainer, t),
      onNeutralvariantContainer: Color.lerp(onNeutralvariantContainer, other.onNeutralvariantContainer, t),
      sourceQuaternary: Color.lerp(sourceQuaternary, other.sourceQuaternary, t),
      quaternary: Color.lerp(quaternary, other.quaternary, t),
      onQuaternary: Color.lerp(onQuaternary, other.onQuaternary, t),
      quaternaryContainer: Color.lerp(quaternaryContainer, other.quaternaryContainer, t),
      onQuaternaryContainer: Color.lerp(onQuaternaryContainer, other.onQuaternaryContainer, t),
    );
  }

  /// Returns an instance of [CustomColors] in which the following custom
  /// colors are harmonized with [dynamic]'s [ColorScheme.primary].
  ///   * [CustomColors.sourceError]
  ///   * [CustomColors.error]
  ///   * [CustomColors.onError]
  ///   * [CustomColors.errorContainer]
  ///   * [CustomColors.onErrorContainer]
  ///   * [CustomColors.sourceNeutralvariant]
  ///   * [CustomColors.neutralvariant]
  ///   * [CustomColors.onNeutralvariant]
  ///   * [CustomColors.neutralvariantContainer]
  ///   * [CustomColors.onNeutralvariantContainer]
  ///   * [CustomColors.sourceQuaternary]
  ///   * [CustomColors.quaternary]
  ///   * [CustomColors.onQuaternary]
  ///   * [CustomColors.quaternaryContainer]
  ///   * [CustomColors.onQuaternaryContainer]
  ///
  /// See also:
  ///   * <https://m3.material.io/styles/color/the-color-system/custom-colors#harmonization>
  CustomColors harmonized(ColorScheme dynamic) {
    return copyWith(
      sourceError: sourceError!.harmonizeWith(dynamic.primary),
      error: error!.harmonizeWith(dynamic.primary),
      onError: onError!.harmonizeWith(dynamic.primary),
      errorContainer: errorContainer!.harmonizeWith(dynamic.primary),
      onErrorContainer: onErrorContainer!.harmonizeWith(dynamic.primary),
      sourceNeutralvariant: sourceNeutralvariant!.harmonizeWith(dynamic.primary),
      neutralvariant: neutralvariant!.harmonizeWith(dynamic.primary),
      onNeutralvariant: onNeutralvariant!.harmonizeWith(dynamic.primary),
      neutralvariantContainer: neutralvariantContainer!.harmonizeWith(dynamic.primary),
      onNeutralvariantContainer: onNeutralvariantContainer!.harmonizeWith(dynamic.primary),
      sourceQuaternary: sourceQuaternary!.harmonizeWith(dynamic.primary),
      quaternary: quaternary!.harmonizeWith(dynamic.primary),
      onQuaternary: onQuaternary!.harmonizeWith(dynamic.primary),
      quaternaryContainer: quaternaryContainer!.harmonizeWith(dynamic.primary),
      onQuaternaryContainer: onQuaternaryContainer!.harmonizeWith(dynamic.primary),
    );
  }
}