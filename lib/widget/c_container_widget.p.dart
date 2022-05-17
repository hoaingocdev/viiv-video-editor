import 'package:flutter/material.dart';

class CContainerWidget extends StatefulWidget {
  final Color color;

  const CContainerWidget({Key? key, required this.color}) : super(key: key);
  @override
  _CContainerWidgetState createState() => _CContainerWidgetState();
}

class _CContainerWidgetState extends State<CContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 345,
      width: 345,
      color: widget.color,
    );
  }
}
