import 'package:flutter/material.dart';

class InfoContainer extends StatelessWidget {
  const InfoContainer({
    super.key,
    required this. informationText,
  });

  final String informationText;

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: _BoxConstraints.boxConstraints,
        decoration: _BoxDecoration.boxDecoration,
        child: Padding(
          padding: _Paddings.inPadding,
          child: Text(informationText),
        ));
  }
}

class _BoxConstraints {
  static BoxConstraints boxConstraints = const BoxConstraints(
    maxHeight: 200,
    minHeight: 50,
    minWidth: 300,
  );
}

class _BoxDecoration {
  static BoxDecoration boxDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Colors.black, width: 2),
      color: Colors.white);
}

class _Paddings {
  static const inPadding = EdgeInsets.all(10);
}
