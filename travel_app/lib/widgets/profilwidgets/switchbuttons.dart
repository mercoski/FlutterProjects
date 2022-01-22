import 'package:flutter/material.dart';

class SwitchButton extends StatefulWidget {
  const SwitchButton({Key? key}) : super(key: key);

  @override
  _SwitchButtonState createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  @override
  Widget build(BuildContext context) {
    bool is_selected = false;
    return Switch.adaptive(
      onChanged: (value) {
        setState(() {
          is_selected != value;
        });
      },
      value: is_selected,
    );
  }
}
