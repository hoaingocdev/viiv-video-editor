import 'package:flutter/material.dart';

class DesignInfo extends ChangeNotifier {
  final _data = {};
  String get title => _data['title'] ?? '';

  String get imageUrl => _data['imageUrl'] ?? '';

  DesignInfo.from(Map e) {
    _data.addAll(e);
  }
}
