library ratio;

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:viiv/res/res.dart';
import 'package:viiv/widget/widget.dart';

part 'ratio_view.dart';
part 'ratio_model.dart';
part 'ratio_state.dart';

ChangeNotifierProvider<_RatioModel> createRatio() {
  return ChangeNotifierProvider<_RatioModel>(
    create: (_) => _RatioModel(),
    child: _RatioView(),
  );
}
