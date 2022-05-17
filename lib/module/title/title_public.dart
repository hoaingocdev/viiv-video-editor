library title;

import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:viiv/module/module.dart';
import 'package:viiv/res/res.dart';
import 'package:viiv/res/style.p.dart';
import 'package:viiv/widget/widget.dart';

import '../../model/title_info.p.dart';

part 'title_view.dart';
part 'title_model.dart';
part 'title_state.dart';
part 'content/title_content.dart';
part 'widgets/sticker.p.dart';

ChangeNotifierProvider<_TitleModel> createTitle() {
  return ChangeNotifierProvider<_TitleModel>(
    create: (_) => _TitleModel(),
    child: _TitleView(),
  );
}
