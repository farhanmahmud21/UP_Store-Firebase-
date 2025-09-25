import 'package:flutter/material.dart';

class ULoginFooter extends StatelessWidget {
  const ULoginFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(value: true, onChanged: (value) {}),
            Text('Remember Me'),
          ],
        ),
        TextButton(onPressed: () {}, child: Text('Forgot Password')),
      ],
    );
  }
}
