import 'package:flutter/material.dart';
import 'package:getitdone/models/color_theme_data.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    bool? _value = Provider.of<ColorThemeData>(context).selected;
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Theme Color'),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Card(
        color: Theme.of(context).primaryColor,
        child: SwitchListTile(
          activeColor: Colors.white,
          title: Text('Enable Dark Mode'),
          value: _value!,
          onChanged: (value) {
            setState(() {
              _value = value;
            });
            Provider.of<ColorThemeData>(context, listen: false).switchTheme();
          },
        ),
      ),
    );
  }
}
