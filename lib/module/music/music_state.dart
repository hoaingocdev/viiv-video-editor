part of music;

class _MusicViewState extends TTState<_MusicModel, _MusicView> {
  @override
  Widget buildWithModel(BuildContext context, _MusicModel model) {
    Widget allContent;
    if (model.isCategorySelected) {
      allContent = RecommentContent(
        playIndex: model.allPlayIndex,
        onPlayPressed: model.onAllPlayPressed,
        list: model.categories[model.categoryIndex].musics,
      );
    } else {
      allContent = AllContent(
        onPressed: model.onCategoryPressed,
        categoryIndex: model.categoryIndex,
      );
    }
    return DefaultTabController(
      length: 3,
      child: SizedBox(
        height: MediaQueryData.fromWindow(window).padding.bottom + 517,
        child: Column(
          children: [
            const TabBar(
              labelStyle: St.textStyle8,
              labelColor: Cl.black,
              indicatorColor: Cl.darkishPink,
              tabs: [
                Tab(
                  text: 'Recommend',
                ),
                Tab(
                  text: 'All',
                ),
                Tab(
                  text: 'Import',
                ),
              ],
            ),
            const SizedBox(height: 12),
            Expanded(
              child: TabBarView(
                children: [
                  RecommentContent(
                    playIndex: model.recommendPlayIndex,
                    list: model.recommends,
                    onPlayPressed: model.onRecommanedPlayPressed,
                  ),
                  allContent,
                  MusicImportContent(
                    importIndex: model.importIndex,
                    onLongPressed: model.onImportLongPressed,
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
