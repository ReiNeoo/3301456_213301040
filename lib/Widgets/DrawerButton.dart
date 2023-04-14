import 'package:flutter/material.dart';

class DrawerButton extends StatelessWidget {
  const DrawerButton({
    super.key, required this.infoText,
  });
  final String infoText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextButton(
        onPressed:() {}, 
        child: Text(infoText)));
  }
}
