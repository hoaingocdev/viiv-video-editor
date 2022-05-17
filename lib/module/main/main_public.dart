library main;

import 'package:flutter/material.dart';
import 'package:loop_page_view/loop_page_view.dart';
import 'package:provider/provider.dart';
import 'package:viiv/module/add_design/add_design_public.dart';
import 'package:viiv/res/color.p.dart';
import 'package:viiv/res/res.dart';
import 'package:viiv/widget/widget.dart';

import '../change_media/change_media_public.dart';
import '../module.dart';

part 'main_view.dart';
part 'main_model.dart';
part 'main_state.dart';

ChangeNotifierProvider<_MainModel> createMain() {
  return ChangeNotifierProvider<_MainModel>(
    create: (_) => _MainModel(),
    child: _MainView(),
  );
}
