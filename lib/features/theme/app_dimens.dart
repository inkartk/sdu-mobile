import 'package:flutter/cupertino.dart';

const kHorizontalPadding = 16.0;
const kVerticalPadding = 12.0;
const kPaddingAll = 12.0;
const kAppLogoSize = 136.0;
const kAppLogoBlurRadius = 64.0;
const kBottomPadding = 32.0;

const kBorderRadiusValue = 12.0;

RoundedRectangleBorder kModalShape(double borderRadiusValue) =>
    RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(borderRadiusValue),
      ),
    );
