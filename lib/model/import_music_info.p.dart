import 'package:flutter/material.dart';

class ImportMucsicInfo extends ChangeNotifier {
  final _data = {};
  String get name => _data['name'] ?? '';
  String get artis => _data['artis'] ?? '';
  String get imageUrl => _data['imageUrl'] ?? '';

  ImportMucsicInfo.from(Map e) {
    _data.addAll(e);
  }
}
