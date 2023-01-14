

import 'package:flutter/material.dart';


class CustomScaffold extends StatelessWidget {
  final Widget body;

const CustomScaffold({required this.body});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: body),
    );
  }
}