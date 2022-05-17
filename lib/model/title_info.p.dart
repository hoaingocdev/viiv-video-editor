import 'package:flutter/material.dart';

class TitleInfo extends ChangeNotifier {
  final _data = {};
  String get imageUrl => _data['imageUrl'] ?? '';
  TitleInfo.from(Map e) {
    _data.addAll(e);
  }
}
