import '../../../../core/resources/manage_radius.dart';
import '../../../../core/resources/manage_widths.dart';
import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    required this.color,
    super.key,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(
        end: ManageWidth.w12,
      ),
      child: CircleAvatar(
        radius: ManageRadius.r4,
        backgroundColor: color,
      ),
    );
  }
}
