part of title;

class _TitleViewState extends TTState<_TitleModel, _TitleView> {
  @override
  Widget buildWithModel(BuildContext context, _TitleModel model) {
    return DefaultTabController(
      length: 2,
      child: SizedBox(
        height: MediaQueryData.fromWindow(window).padding.bottom + 350,
        child: Column(
          children: const [
            TabBar(
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
                physics: NeverScrollableScrollPhysics(),
                children: [
                  TitleContent(),
                  TitleContent(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
