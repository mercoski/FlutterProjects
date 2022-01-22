import 'package:flutter/material.dart';

class AdaptiveScreenSize {
  const AdaptiveScreenSize();

  getadaptiveScreenSize(BuildContext context, dynamic value) {
    return (value * MediaQuery.of(context).size);
  }
}
