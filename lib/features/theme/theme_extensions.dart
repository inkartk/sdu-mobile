import 'package:flutter/material.dart';

extension AppThemeExtension on BuildContext {
  bool get isNeedSafeArea => MediaQuery.of(this).viewPadding.bottom <= 0;

  /// This method is used to get the size of the text based on the screen width.
  double getSize(double size) {
    final screenSizeWidth = MediaQuery.of(this).size.width;
    final scaleFactor = screenSizeWidth / 375;
    return (size * scaleFactor).clamp(size * 0.8, size * 1.4);
  }

  TextTheme get theme => Theme.of(this).textTheme;

  /// ================================ Body styles ================================
  TextStyle? get bodyLargeRegular => theme.bodyLarge?.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: getSize(theme.bodyLarge?.fontSize ?? 0),
      );

  TextStyle? get bodyLargeMedium => theme.bodyLarge?.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: getSize(theme.bodyLarge?.fontSize ?? 0),
      );

  TextStyle? get bodyLargeSemiBold => theme.bodyLarge?.copyWith(
        fontSize: getSize(theme.bodyLarge?.fontSize ?? 0),
      );

  TextStyle? get bodyLargeBold => theme.bodyLarge?.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: getSize(theme.bodyLarge?.fontSize ?? 0),
      );

  TextStyle? get bodyMediumRegular => theme.bodyMedium?.copyWith(
        fontSize: getSize(theme.bodyMedium?.fontSize ?? 0),
      );

  TextStyle? get bodyMediumMedium => theme.bodyMedium?.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: getSize(theme.bodyMedium?.fontSize ?? 0),
      );

  TextStyle? get bodyMediumSemiBold => theme.bodyMedium?.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: getSize(theme.bodyMedium?.fontSize ?? 0),
      );

  /// ================================ Label styles ================================
  TextStyle? get labelMediumRegular => theme.labelMedium?.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: getSize(theme.labelMedium?.fontSize ?? 0),
      );

  TextStyle? get labelMediumMedium => theme.labelMedium?.copyWith(
        fontSize: getSize(theme.labelMedium?.fontSize ?? 0),
      );

  TextStyle? get labelMediumSemiBold => theme.labelMedium?.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: getSize(theme.labelMedium?.fontSize ?? 0),
      );

  TextStyle? get labelSmallRegular => theme.labelSmall?.copyWith(
        fontSize: getSize(theme.labelSmall?.fontSize ?? 0),
      );

  TextStyle? get labelSmallMedium => theme.labelSmall?.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: getSize(theme.labelSmall?.fontSize ?? 0),
      );

  TextStyle? get labelSmallSemiBold => theme.labelSmall?.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: getSize(theme.labelSmall?.fontSize ?? 0),
      );
}
