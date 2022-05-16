part of change_media;

class _ChangeMediaModel extends TTChangeNotifier<_ChangeMediaView> {
  final importMedias = <MediaInfo>[];
  double screenHeight = 0;

  double get maxHeight => MediaQuery.of(context!).size.height - 150;
  double get minHeight => 326;
  bool get isMin => screenHeight == minHeight;

  _ChangeMediaModel() {
    _initData();
  }

  @override
  void onReady() {
    super.onReady();
    screenHeight = maxHeight;
    notifyListeners();
  }

  void onResizePressed() {
    double newHeight = isMin ? maxHeight : minHeight;
    screenHeight = newHeight;
    notifyListeners();
  }

  void _initData() {
    final ls = List.generate(30, (index) {
      return MediaInfo.from({
        'isVideo': index % 5 == 0 ? true : false,
        'name': 'Name $index',
        'duration': '00:$index',
        'imageUrl': 'https://st.quantrimang.com/photos/image/2021/09/23/AVT-Chibi-10.jpg',
      });
    });
    importMedias.addAll(ls);
  }
}
