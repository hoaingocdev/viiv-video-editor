import 'package:flutter/material.dart';

class HashtagInfo extends ChangeNotifier {
  final _data = {};
  String get name => _data['name'] ?? '';

  HashtagInfo.from(Map e) {
    _data.addAll(e);
  }
}
