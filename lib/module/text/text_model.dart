part of text;

class _TextModel extends TTChangeNotifier<_TextView> {
  final titles = <TitleInfo>[];
  final subtitles = <TitleInfo>[];
  final hashtagtitle = <HashtagInfo>[];
  final hashtagsubtitle = <HashtagInfo>[];

  int titleIndex = -1;
  int hashtagIndex = -1;

  int subtitleIndex = -1;
  int hashtagSubtitleIndex = -1;

  _TextModel() {
    _initData();
  }

  void onTitlePressed(int index) {
    if (titleIndex != index) {
      titleIndex = index;
      notifyListeners();
    }
  }

  void onSubtitlePressed(int index) {
    if (subtitleIndex != index) {
      subtitleIndex = index;
      notifyListeners();
    }
  }

  void onHashtagPressed(int index) {
    if (hashtagIndex != index) {
      hashtagIndex = index;
      notifyListeners();
    }
  }

  void onHashtagSubtitlePressed(int index) {
    if (hashtagSubtitleIndex != index) {
      hashtagSubtitleIndex = index;
      notifyListeners();
    }
  }

  void _initData() {
    final ls = List.generate(30, (index) {
      return TitleInfo.from({
        'imageUrl': 'https://st.quantrimang.com/photos/image/2021/09/23/AVT-Chibi-10.jpg',
      });
    });

    final ls2 = List.generate(20, (index) {
      return TitleInfo.from({
        'imageUrl': 'https://i.dlpng.com/static/png/6804683_preview.png',
      });
    });
    titles.addAll(ls);
    subtitles.addAll(ls2);
    final hashtag1 = List.generate(10, (index) {
      return HashtagInfo.from({
        'name': '#title$index',
      });
    });
    final hashtag2 = List.generate(20, (index) {
      return HashtagInfo.from({
        'name': '#subtitle$index',
      });
    });
    hashtagtitle.addAll(hashtag1);
    hashtagsubtitle.addAll(hashtag2);

    notifyListeners();
  }
}
