import 'package:e_commerce/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';

class UElelvatedbutton extends StatelessWidget {
  final Function onPressed;
  final String text;
  const UElelvatedbutton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: UDeviceHelper.getScreenWidth(context),
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        child: Text(text),
      ),
    );
  }
}
