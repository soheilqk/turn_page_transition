import 'package:flutter/material.dart';
import 'package:turn_page_transition/src/const.dart';
import 'package:turn_page_transition/src/turn_page_transitions_builder.dart';

class TurnPageTransitionsTheme extends PageTransitionsTheme {
  const TurnPageTransitionsTheme({this.overleafColor = defaultOverleafColor});

  final Color overleafColor;

  PageTransitionsBuilder get builder =>
      TurnPageTransitionsBuilder(color: overleafColor);

  @override
  Widget buildTransitions<T>(
    PageRoute<T> route,
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return builder.buildTransitions(
      route,
      context,
      animation,
      secondaryAnimation,
      child,
    );
  }
}
