import 'package:flutter/material.dart';

TextStyle _text = const TextStyle(
  fontStyle: FontStyle.normal,
  fontFamily: 'Roboto-Regular',
);

TextStyle largeTitle = _text.copyWith(
  fontSize: 32.0,
  fontWeight: FontWeight.w700,
);

TextStyle title = _text.copyWith(
  fontSize: 24.0,
  fontWeight: FontWeight.w700,
);

TextStyle subtitle = _text.copyWith(
  fontSize: 18.0,
  fontWeight: FontWeight.w500,
);

TextStyle textSubtitle = _text.copyWith(
  fontSize: 16.0,
  fontWeight: FontWeight.w500,
);

TextStyle smallBoldSubtitle = _text.copyWith(
  fontSize: 14.0,
  fontWeight: FontWeight.w700,
);

TextStyle smallSubtitle = _text.copyWith(
  fontSize: 14.0,
  fontWeight: FontWeight.w400,
);

TextStyle superSmallSmallSubtitle = _text.copyWith(
  fontSize: 12.0,
  fontWeight: FontWeight.w400,
);

TextStyle buttonSmallSubtitle = _text.copyWith(
  letterSpacing: 3.0,
  fontSize: 14.0,
  fontWeight: FontWeight.w700,
);
