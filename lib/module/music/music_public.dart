library music;

import 'dart:ffi';
import 'dart:io';
import 'dart:ui';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:viiv/model/all_info.p.dart';
import 'package:viiv/model/import_music_info.p.dart';
import 'package:viiv/res/res.dart';
import 'package:viiv/res/style.p.dart';
import 'package:viiv/widget/widget.dart';

import '../../model/model.dart';

part 'music_view.dart';
part 'music_model.dart';
part 'music_state.dart';
part 'content/recommend_content.dart';
part 'content/all_content.dart';
part 'content/music_import_content.dart';

ChangeNotifierProvider<_MusicModel> createMusic() {
  return ChangeNotifierProvider<_MusicModel>(
    create: (_) => _MusicModel(),
    child: _MusicView(),
  );
}
