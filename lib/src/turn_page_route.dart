import 'package:flutter/material.dart';
import 'package:turn_page_transition/src/const.dart';
import 'package:turn_page_transition/src/turn_page_transition_widget.dart';

class TurnPageRoute<T> extends PageRoute<T> {
  TurnPageRoute({
    RouteSettings? settings,
    required this.builder,
    this.overleafColor = defaultOverleafColor,
    this.transitionDuration = defaultTransitionDuration,
    this.reverseTransitionDuration = defaultTransitionDuration,
    this.opaque = true,
    this.barrierDismissible = false,
    this.barrierColor,
    this.barrierLabel,
    this.maintainState = true,
    bool fullscreenDialog = false,
  });

  final WidgetBuilder builder;
  final Color overleafColor;

  @override
  final Duration transitionDuration;

  @override
  final Duration reverseTransitionDuration;

  @override
  final bool opaque;

  @override
  final bool barrierDismissible;

  @override
  final Color? barrierColor;

  @override
  final String? barrierLabel;

  @override
  final bool maintainState;

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    return builder(context);
  }

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return TurnPageTransitionWidget(
      animation: animation,
      color: overleafColor,
      child: child,
    );
  }
}
