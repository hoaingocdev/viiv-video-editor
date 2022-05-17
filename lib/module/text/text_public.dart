library text;

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:viiv/res/res.dart';
import 'package:viiv/widget/widget.dart';
import '../../model/model.dart';

part 'text_view.dart';
part 'text_model.dart';
part 'text_state.dart';
part 'content/title_content.dart';
part 'widgets/text_widget.p.dart';

ChangeNotifierProvider<_TextModel> createTitle() {
  return ChangeNotifierProvider<_TextModel>(
    create: (_) => _TextModel(),
    child: _TextView(),
  );
}
