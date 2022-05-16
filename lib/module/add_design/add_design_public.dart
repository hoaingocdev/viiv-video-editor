library add_design;

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:viiv/model/design_info.p.dart';
import 'package:viiv/res/res.dart';
import 'package:viiv/widget/widget.dart';

part 'add_design_view.dart';
part 'add_design_model.dart';
part 'add_design_state.dart';
part 'widgets/hashtag_item.p.dart';
part 'content/sticker_content.dart';
part 'content/Transition_content.dart';
part 'widgets/sticker_item.p.dart';

ChangeNotifierProvider<_AddDesignModel> createAddDesign() {
  return ChangeNotifierProvider<_AddDesignModel>(
    create: (_) => _AddDesignModel(),
    child: _AddDesignView(),
  );
}
