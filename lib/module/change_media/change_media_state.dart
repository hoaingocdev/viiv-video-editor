part of change_media;

class _ChangeMediaViewState extends TTState<_ChangeMediaModel, _ChangeMediaView> {
  @override
  Widget buildWithModel(BuildContext context, _ChangeMediaModel model) {
    return DefaultTabController(
      length: 2,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: double.infinity,
        height: model.screenHeight,
        child: Column(
          children: [
            InkWell(
              onTap: model.onResizePressed,
              child: Container(
                height: 16,
                width: 65,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4),
                    topRight: Radius.circular(4),
                  ),
                  color: Cl.white,
                ),
                child: Icon(
                  model.isMin ? Icons.keyboard_arrow_up_sharp : Icons.keyboard_arrow_down_sharp,
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Cl.white,
                child: Column(
                  children: const [
                    TabBar(
                      indicatorColor: Cl.darkishPink,
                      labelStyle: St.textStyle4,
                      tabs: [
                        Tab(
                          text: 'Viiv gallery',
                        ),
                        Tab(
                          text: 'Import',
                        ),
                      ],
                      labelColor: Cl.black,
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          GalleryContent(),
                          ImportContent(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
