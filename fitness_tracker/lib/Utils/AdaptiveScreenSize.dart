import 'package:flutter/material.dart';

class AdaptiveScreenSize {
  const AdaptiveScreenSize();

  getadaptiveScreenSizeHeight(BuildContext context, dynamic value) {
    return ((value / 812) * MediaQuery.of(context).size.height);
  }

  getadaptiveScreenSizeWidth(BuildContext context, dynamic value) {
    return ((value / 375) * MediaQuery.of(context).size.width);
  }
}
