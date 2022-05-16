import 'package:flutter/material.dart';

class MediaInfo extends ChangeNotifier {
  final _data = {};

  bool get isVideo => _data['isVideo'] ?? false;
  String get name => _data['name'] ?? '';
  String get imageUrl => _data['imageUrl'] ?? '';
  String get duration => _data['duration'] ?? '';

  MediaInfo.from(Map e) {
    _data.addAll(e);
  }
}
