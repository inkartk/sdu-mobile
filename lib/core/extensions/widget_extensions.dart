import 'package:flutter/widgets.dart';
import 'package:sdu/features/theme/app_dimens.dart';

/// This extension provides additional functionality to the [Widget] class.
/// It allows adding different types of padding to a [Widget].
extension WidgetExtension on Widget {
  /// Adds padding to all sides of the widget.
  ///
  /// [value] is the size of the padding. Default value is kHorizontalPadding.
  /// Returns a [Widget] with the padding applied.
  Widget paddingAll([double value = kHorizontalPadding]) {
    return Padding(
      padding: EdgeInsets.all(value),
      child: this,
    );
  }

  /// Adds horizontal padding to the widget.
  ///
  /// [value] is the size of the padding. Default value is kHorizontalPadding.
  /// Returns a [Widget] with the padding applied.
  Widget paddingHorizontal([double value = kHorizontalPadding]) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: value),
      child: this,
    );
  }

  /// Adds vertical padding to the widget.
  ///
  /// [value] is the size of the padding. Default value is kVerticalPadding.
  /// Returns a [Widget] with the padding applied.
  Widget paddingVertical([double value = kVerticalPadding]) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: value),
      child: this,
    );
  }

  /// Adds symmetric padding to the widget.
  ///
  /// [vertical] is the size of the vertical padding. Default value is kVerticalPadding.
  /// [horizontal] is the size of the horizontal padding. Default value is kHorizontalPadding.
  /// Returns a [Widget] with the padding applied.
  Widget paddingSymmetric({
    double vertical = kVerticalPadding,
    double horizontal = kHorizontalPadding,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: vertical,
        horizontal: horizontal,
      ),
      child: this,
    );
  }

  /// Adds horizontal padding to the widget in a sliver.
  ///
  /// [value] is the size of the padding. Default value is kHorizontalPadding.
  /// Returns a [SliverPadding] with the padding applied.
  Widget sliverPaddingHorizontal([double value = kHorizontalPadding]) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: value),
      sliver: this,
    );
  }

  /// Adds padding to the widget on the specified sides.
  ///
  /// [top] is the size of the top padding. Default value is 0.
  /// [right] is the size of the right padding. Default value is 0.
  /// [bottom] is the size of the bottom padding. Default value is 0.
  /// [left] is the size of the left padding. Default value is 0.
  /// Returns a [Widget] with the padding applied.
  Widget paddingOnly({
    double top = 0,
    double right = 0,
    double bottom = 0,
    double left = 0,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        top: top,
        right: right,
        bottom: bottom,
        left: left,
      ),
      child: this,
    );
  }

  /// Expands the widget horizontally.
  ///
  /// Returns a [Row] with the widget expanded.
  Widget expandedHorizontally() {
    return Row(
      children: [
        Expanded(child: this),
      ],
    );
  }
}
