import 'package:flutter/material.dart';
import 'package:viiv/model/music_info.p.dart';

class MusicCateroryInfo extends ChangeNotifier {
  final _data = {};
  String get title => _data['title'] ?? '';

  String get imageUrl => _data['imageUrl'] ?? '';
  List<MusicInfo> get musics => _data['musics'] ?? [];

  MusicCateroryInfo.from(Map e) {
    _data.addAll(e);
  }
}
