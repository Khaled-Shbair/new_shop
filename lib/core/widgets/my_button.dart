import '../resources/manage_fonts_weights.dart';
import '../resources/manage_fonts_sizes.dart';
import '../resources/manage_heights.dart';
import '../resources/manage_radius.dart';
import '../resources/manage_colors.dart';
import '../resources/manage_widths.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    required this.onPressed,
    required this.text,
    this.child,
    this.iconRow = Icons.arrow_forward,
    this.colorIconRow = ManageColors.white,
    this.colorText = ManageColors.white,
    this.color = ManageColors.primaryColor,
    this.isRow = false,
    this.start = 0,
    this.end = 0,
    this.top = 0,
    this.bottom = 0,
    super.key,
  });

  final Function() onPressed;

  final Widget? child;
  final Color color;
  final double start;
  final double end;
  final double top;
  final double bottom;
  final String text;
  final Color colorText;
  final bool isRow;
  final IconData iconRow;
  final Color colorIconRow;

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
          minimumSize: const Size(ManageWidths.w260, ManageHeights.h50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(ManageRadius.r16),
          ),
        ),
        child: child ??
            (isRow
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          text,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: ManageColors.white,
                            fontSize: ManageFontsSizes.s16,
                            fontWeight: ManageFontsWeights.w400,
                          ),
                        ),
                      ),
                      Icon(
                        iconRow,
                        color: colorIconRow,
                      ),
                    ],
                  )
                : Text(
                    text,
                    style: TextStyle(
                      color: colorText,
                      fontSize: ManageFontsSizes.s16,
                      fontWeight: ManageFontsWeights.w400,
                    ),
                  )),
      ),
    );
  }
}
