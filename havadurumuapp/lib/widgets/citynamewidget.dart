import 'package:flutter/material.dart';
import 'package:havadurumuapp/designs/shadows_decoration.dart';
import 'package:havadurumuapp/variable_class/defaultVariables.dart';
import 'package:provider/provider.dart';

class citynamewidget extends StatelessWidget {
  const citynamewidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      Provider.of<DefaultVariables>(context, listen: false).defaultState,
      // ignore: prefer_const_literals_to_create_immutables
      style: TextStyle(fontSize: 30, shadows: [textShadow()]),
    );
  }
}
