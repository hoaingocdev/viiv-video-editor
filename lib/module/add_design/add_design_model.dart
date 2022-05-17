part of add_design;

class _AddDesignModel extends TTChangeNotifier<_AddDesignView> {
  final stickers = <DesignInfo>[];
  final hashtags = <HashtagInfo>[];
  int stickerIndex = -1;
  int hashtagIndex = -1;
  int transitionIndex = 0;
  bool get isTrasitionApplyEnabled => transitionIndex != 0;
  bool get isStickerApplyEnabled => stickerIndex != -1;

  void onBackPressed() {
    Navigator.of(context!).pop();
  }

  void onTransitionApplyPressed() {
    //TODO: Apply Transition to preview using [transitionIndex]
    Navigator.of(context!).pop();
  }

  void onStickerApplyPressed() {
    //TODO: Apply Sticker to preview using [stickerIndex]
    Navigator.of(context!).pop();
  }

  void onStickerItemPressed(int index) {
    if (stickerIndex != index) {
      stickerIndex = index;
      notifyListeners();
    }
  }

  void onTransitionPressed(int index) {
    if (transitionIndex != index) {
      transitionIndex = index;
      notifyListeners();
    }
  }

  void onHashtagPressed(int index) {
    if (hashtagIndex != index) {
      hashtagIndex = index;
      notifyListeners();
    }
  }

  _AddDesignModel() {
    _initData();
  }
  void _initData() {
    final ls = List.generate(30, (index) {
      return DesignInfo.from({
        'title': 'None $index',
        'imageUrl':
            'https://freenice.net/wp-content/uploads/2021/08/hinh-ve-cute-de-thuong-ngo-nghinh-dang-yeu-dep-nhat.jpg',
      });
    });

    final hashtagList = List.generate(20, (index) {
      return HashtagInfo.from({
        'name': 'hashtag $index',
      });
    });
    hashtags.addAll(hashtagList);
    stickers.addAll(ls);
  }
}
