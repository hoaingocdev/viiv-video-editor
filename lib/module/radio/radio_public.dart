library radio;

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:viiv/res/res.dart';
import 'package:viiv/widget/widget.dart';

part 'radio_view.dart';
part 'radio_model.dart';
part 'radio_state.dart';

ChangeNotifierProvider<_RatioModel> createRadio() {
  return ChangeNotifierProvider<_RatioModel>(
    create: (_) => _RatioModel(),
    child: _RadioView(),
  );
}
