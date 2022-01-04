import 'package:flutter/material.dart';

class TopBottomMarginsWidget extends StatelessWidget {
  const TopBottomMarginsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.05,
    );
  }
}
