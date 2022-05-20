import 'package:crosscheckpoint02/src/app/pages/list_page.dart';
import 'package:crosscheckpoint02/src/theme/theme.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: darkTheme,
      home: ListPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}