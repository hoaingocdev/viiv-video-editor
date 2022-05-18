part of music;

class _MusicModel extends TTChangeNotifier<_MusicView> {
  final recommends = <MusicInfo>[];
  final musicImports = <MusicInfo>[];
  final categories = <MusicCateroryInfo>[];

  int categoryIndex = -1;
  int importIndex = -1;
  int recommendPlayIndex = -1;
  int allPlayIndex = -1;

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

  void onRecommanedPlayPressed(int index) {
    if (recommendPlayIndex != index) {
      recommendPlayIndex = index;
    } else {
      recommendPlayIndex = -1;
    }
    notifyListeners();
  }

  void onImportLongPressed(int index) {
    if (importIndex != index) {
      importIndex = index;
      notifyListeners();
    }
  }

  void onAllPlayPressed(int index) {
    if (allPlayIndex != index) {
      allPlayIndex = index;
    } else {
      allPlayIndex = -1;
    }
    notifyListeners();
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
    final lsMusicImport = List.generate(3, (index) {
      return MusicInfo.from({
        'name': 'recommaned$index',
        'artis': 'artis$index',
        'imageUrl': 'https://img.lovepik.com/photo/45001/5091.jpg_wh300.jpg'
      });
    });
    musicImports.addAll(lsMusicImport);
  }

  void onDeletePressed(int index) {
    musicImports.removeAt(index);
    importIndex = -1;
    notifyListeners();
  }

  void onUploadPressed() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['mp3', 'm4a', 'aac', 'wav'],
    );

    if (result != null) {
      File file = File(result.files.single.path ?? '');
      print(file);
      musicImports.add(MusicInfo.from({
        'name': result.files.single.name,
        'artis': '-',
      }));
      notifyListeners();
    } else {
      // User canceled the picker
    }
  }
}
