import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyIconAsset extends StatelessWidget {
  const MyIconAsset({
    required this.image,
    this.onPressed,
    this.start = 0.0,
    this.end = 0.0,
    super.key,
  });

  final Function()? onPressed;
  final String image;
  final double start;
  final double end;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsetsDirectional.only(
        start: start,
        end: end,
      ),
      onPressed: onPressed,
      icon: SvgPicture.asset(image),
    );
  }
}
