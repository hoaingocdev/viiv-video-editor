part of title;

class _TitleModel extends TTChangeNotifier<_TitleView> {
  final importTitle = <TitleInfo>[];
  int titleIndex = -1;
  int hashtagIndex = -1;
  _TitleModel() {
    _initData();
  }
  void onTitlePressed(int index) {
    if (titleIndex != index) {
      titleIndex = index;
      notifyListeners();
    }
  }

  void onHashtagPressed(int index) {
    if (hashtagIndex != index) {
      hashtagIndex = index;
      notifyListeners();
    }
  }

  void _initData() {
    final ls = List.generate(30, (index) {
      return TitleInfo.from({
        'imageUrl': 'https://st.quantrimang.com/photos/image/2021/09/23/AVT-Chibi-10.jpg',
      });
    });
    importTitle.addAll(ls);
  }
}
