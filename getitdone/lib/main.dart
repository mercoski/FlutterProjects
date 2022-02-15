import 'package:flutter/material.dart';
import 'package:getitdone/models/color_theme_data.dart';
import 'package:getitdone/models/items_data.dart';
import 'package:getitdone/screens/settings_page.dart';
import 'package:provider/provider.dart';

import 'screens/homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ColorThemeData().loadThemeDataFromPref();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<ItemData>(
        create: (BuildContext context) => ItemData(),
      ),
      ChangeNotifierProvider<ColorThemeData>(
        create: (BuildContext context) => ColorThemeData(),
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<ColorThemeData>(context).selectedThemeData,
      home: Home(),
    );
  }
}
