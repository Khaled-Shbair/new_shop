import 'package:flutter/material.dart';

import '../resources/manage_colors.dart';
import '../resources/manage_heights.dart';
import '../resources/manage_radius.dart';
import '../resources/manage_widths.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    required this.onPressed,
    required this.child,
    this.color = ManageColors.c3,
    this.start = 0,
    this.end = 0,
    this.top = 0,
    this.bottom = 0,
    super.key,
  });

  final Function() onPressed;
  final Widget child;
  final Color color;
  final double start;
  final double end;
  final double top;
  final double bottom;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: start,
        end: end,
        top: top,
        bottom: bottom,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          minimumSize: const Size(ManageWidth.w260, ManageHeights.h50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(ManageRadius.r16),
          ),
        ),
        child: child,
      ),
    );
  }
}
