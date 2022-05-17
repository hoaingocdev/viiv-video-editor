import 'package:flutter/material.dart';

class MusicInfo extends ChangeNotifier {
  final _data = {};
  String get name => _data['name'] ?? '';
  String get artis => _data['artis'] ?? '';
  String get imageUrl => _data['imageUrl'] ?? '';

  MusicInfo.from(Map e) {
    _data.addAll(e);
  }
}
