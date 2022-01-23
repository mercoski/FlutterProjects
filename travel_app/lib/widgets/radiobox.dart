import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/utils/adaptivetext.dart';

class RadioBoxTile extends StatelessWidget {
  const RadioBoxTile({
    Key? key,
    required this.value_def,
    required this.text,
  }) : super(key: key);

  final int? value_def;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        child: Row(
          children: [
            const Spacer(
              flex: 19,
            ),
            Expanded(
              flex: 250,
              child: Text(
                '$text',
                style: GoogleFonts.poppins(
                    fontSize:
                        AdaptiveTextSize().getadaptiveTextSize(context, 13),
                    fontWeight: FontWeight.w400,
                    color: Color(0xff413C3C)),
              ),
            ),
            Expanded(
              flex: 10,
              child: RadioBox(
                value_def: value_def,
                value_x: 1,
              ),
            ),
            Spacer(
              flex: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class RadioBox extends StatefulWidget {
  RadioBox({
    Key? key,
    required this.value_def,
    required this.value_x,
  }) : super(key: key);

  int? value_def;
  dynamic value_x;

  @override
  State<RadioBox> createState() => _RadioBoxState();
}

class _RadioBoxState extends State<RadioBox> {
  @override
  Widget build(BuildContext context) {
    return Radio(
      value: widget.value_x,
      groupValue: widget.value_def,
      onChanged: (dynamic value) {
        setState(() {
          widget.value_def = value;
        });
      },
    );
  }
}
