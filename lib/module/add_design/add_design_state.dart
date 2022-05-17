part of add_design;

class _AddDesignViewState extends TTState<_AddDesignModel, _AddDesignView> {
  @override
  Widget buildWithModel(BuildContext context, _AddDesignModel model) {
    return DefaultTabController(
      length: 2,
      child: Container(
        height: 380,
        width: double.infinity,
        color: Colors.white,
        child: Container(
          color: Cl.white,
          child: Column(
            children: const [
              TabBar(
                labelStyle: St.textStyle4,
                indicatorColor: Cl.darkishPink,
                tabs: [
                  Tab(
                    text: 'Sticker',
                  ),
                  Tab(text: 'Transition'),
                ],
                labelColor: Cl.black,
              ),
              Expanded(
                child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    StickerContent(),
                    TransitionContent(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
