import 'package:flutter/material.dart';
import 'package:watch_me_travel/utils/dimentions.dart';

class Responsive extends StatelessWidget {
  final Widget webLayout;
  final Widget mobileLayout;
  const Responsive(
      {Key? key, required this.webLayout, required this.mobileLayout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > webSizeScreen) {
          return webLayout;
          // Web Screen
        }
        return mobileLayout;
        //Mobile Screen
      },
    );
  }
}
