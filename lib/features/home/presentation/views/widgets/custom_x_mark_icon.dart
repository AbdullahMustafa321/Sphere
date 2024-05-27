import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomXMarkIcon extends StatelessWidget {
  const CustomXMarkIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          GoRouter.of(context).pop();
        },
        icon: const Icon(FontAwesomeIcons.arrowLeft));
  }
}
