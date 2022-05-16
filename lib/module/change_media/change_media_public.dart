library change_media;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:viiv/model/model.dart';
import 'package:viiv/res/res.dart';
import 'package:viiv/widget/widget.dart';

part 'change_media_view.dart';
part 'change_media_model.dart';
part 'change_media_state.dart';
part 'content/gallery_content.dart';
part 'content/import_content.dart';
part 'widgets/media_infos.p.dart';

ChangeNotifierProvider<_ChangeMediaModel> createChangeMedia() {
  return ChangeNotifierProvider<_ChangeMediaModel>(
    create: (_) => _ChangeMediaModel(),
    child: _ChangeMediaView(),
  );
}
