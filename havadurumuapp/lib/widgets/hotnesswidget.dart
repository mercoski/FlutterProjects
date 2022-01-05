import 'package:flutter/material.dart';
import 'package:havadurumuapp/designs/shadows_decoration.dart';
import 'package:havadurumuapp/variable_class/defaultVariables.dart';
import 'package:provider/provider.dart';

class HotnessWidget extends StatelessWidget {
  const HotnessWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.1,
      child: FittedBox(
        child: Text(
          '${Provider.of<DefaultVariables>(context, listen: false).defaultTemp} C°',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white70
              // ignore: prefer_const_literals_to_create_immutables
              ),
        ),
      ),
    );
  }
}
