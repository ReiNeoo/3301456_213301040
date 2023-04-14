import 'package:flutter/material.dart';

class ProjectInfoWidget extends StatelessWidget {
  const ProjectInfoWidget({
    super.key, required this.Title, required this.InfoText,
  });
  final String Title;
  final String InfoText;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: _WidgetPadding.outSidePadding,
          child: Container(
            child: Padding(
              padding: _WidgetPadding.bodyTextPadding,
              child: Text(InfoText),
            ),
            decoration: _BoxDecoration.bodyTextDecoration,
            constraints: _BoxConstraints.bodyTextConstraints,
          ),
        ),
        Positioned(
            top: 0,
            left: 30,
            height: 20,
            child: Container(
              decoration: _BoxDecoration.upTextDecoration,
              constraints: _BoxConstraints.upTextConstraints,
              child: Padding(
                padding: _WidgetPadding.upTextPadding,
                child: Text(Title),
              ),
            )
          ),
      ],
    );
  }
}

class _BoxConstraints {
  static BoxConstraints upTextConstraints =
      BoxConstraints(minWidth: 35, maxWidth: 250);
  static BoxConstraints bodyTextConstraints =
      BoxConstraints(minHeight: 100, minWidth: 500);
}

class _BoxDecoration {
  static BoxDecoration upTextDecoration = BoxDecoration(
      color: Colors.white, borderRadius: BorderRadius.circular(10));
  static BoxDecoration bodyTextDecoration = BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.black, width: 2),
      borderRadius: BorderRadius.circular(20));
}

class _WidgetPadding {
  static const outSidePadding = EdgeInsets.symmetric(vertical: 10);
  static const upTextPadding = EdgeInsets.symmetric(vertical: 1, horizontal: 5);
  static const bodyTextPadding = EdgeInsets.all(10.0);
}