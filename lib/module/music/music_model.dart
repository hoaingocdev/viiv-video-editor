part of music;

class _MusicModel extends TTChangeNotifier<_MusicView> {
  final recommends = <MusicInfo>[];
  final musicImports = <ImportMucsicInfo>[];
  final categories = <MusicCateroryInfo>[];
  int categoryIndex = -1;
  bool get isCategorySelected => categoryIndex != -1;
  _MusicModel() {
    _initData();
  }
  void onCategoryPressed(int index) {
    if (categoryIndex != index) {
      categoryIndex = index;
      notifyListeners();
    }
  }

  void _initData() {
    final lsRecommend = List.generate(100, (index) {
      return MusicInfo.from({
        'name': 'recommaned$index',
        'artis': 'artis$index',
        'imageUrl': 'https://img.lovepik.com/photo/45001/5091.jpg_wh300.jpg'
      });
    });
    recommends.addAll(lsRecommend);
    final lsAll = List.generate(100, (index) {
      return MusicCateroryInfo.from({
        'title': 'all$index',
        'musics': lsRecommend,
        'imageUrl': 'https://i.pinimg.com/originals/50/6e/8f/506e8f9ad83dfcbef003ab5c27a61d16.png'
      });
    });
    categories.addAll(lsAll);
    final lsMusicImport = List.generate(100, (index) {
      return ImportMucsicInfo.from({
        'name': 'recommaned$index',
        'artis': 'artis$index',
        'imageUrl': 'https://img.lovepik.com/photo/45001/5091.jpg_wh300.jpg'
      });
    });
    musicImports.addAll(lsMusicImport);
  }
}
