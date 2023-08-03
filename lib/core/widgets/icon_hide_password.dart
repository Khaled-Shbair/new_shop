import 'package:flutter/material.dart';

import '../resources/manage_colors.dart';

class IconHidePassword extends StatelessWidget {
  const IconHidePassword({
    required this.status,
    required this.onPressed,
    super.key,
  });

  final bool status;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        !status ? Icons.visibility : Icons.visibility_off,
        color: ManageColors.c5,
      ),
    );
  }
}
