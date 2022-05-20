import 'package:flutter/material.dart';
import '../../utils/paddings.dart';

class GiovannaPage extends StatelessWidget {
  final String title;
  final Widget body;
  final FloatingActionButton fab;

  // ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
  GiovannaPage({required this.title, required this.body, required this.fab});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      
      body: Padding(
        padding: EdgeInsets.only(
          left: AppPaddings.borderPadding,
          right: AppPaddings.borderPadding,
          top: AppPaddings.topPadding,
        ),
        child: SingleChildScrollView(child: body),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: fab,
    );
  }
}