part of text;

class _TexteViewState extends TTState<_TextModel, _TextView> {
  @override
  Widget buildWithModel(BuildContext context, _TextModel model) {
    return DefaultTabController(
      length: 2,
      child: SizedBox(
        height: MediaQueryData.fromWindow(window).padding.bottom + 350,
        child: Column(
          children: [
            const TabBar(
              labelStyle: St.textStyle7,
              labelColor: Cl.black,
              indicatorColor: Cl.darkishPink,
              tabs: [
                Tab(
                  text: 'Title',
                ),
                Tab(
                  text: 'Subtitle',
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  TitleContent(
                    onHashtagPressed: model.onHashtagPressed,
                    selectedHashtagIndex: model.hashtagIndex,
                    hashtags: model.hashtagtitle,
                    list: model.titles,
                    onItemPressed: model.onTitlePressed,
                    selectedIndex: model.titleIndex,
                  ),
                  TitleContent(
                    onHashtagPressed: model.onHashtagSubtitlePressed,
                    selectedHashtagIndex: model.hashtagSubtitleIndex,
                    hashtags: model.hashtagsubtitle,
                    list: model.subtitles,
                    onItemPressed: model.onSubtitlePressed,
                    selectedIndex: model.subtitleIndex,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
