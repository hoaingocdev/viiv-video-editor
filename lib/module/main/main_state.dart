part of main;

class _MainViewState extends TTState<_MainModel, _MainView> {
  @override
  Widget buildWithModel(BuildContext context, _MainModel model) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Row(
                children: [
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: MaterialButton(
                      onPressed: model.onCancer,
                      child: Image.asset(
                        Id.ic_cancer,
                      ),
                    ),
                  ),
                  const SizedBox(width: 40),
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: MaterialButton(
                      onPressed: model.onUndoPressed,
                      child: Image.asset(
                        Id.ic_left_arrow,
                      ),
                    ),
                  ),
                  // const SizedBox(width: 1),
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: MaterialButton(
                      onPressed: model.onReduPressed,
                      child: Image.asset(
                        Id.ic_right_arrow,
                      ),
                    ),
                  ),
                  const SizedBox(width: 25),
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: MaterialButton(
                      onPressed: model.onSharePressed,
                      child: Image.asset(Id.ic_share),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 11),
            SizedBox(
              height: 345,
              child: PageView(
                // controller: PageController(),
                controller: PageController(
                  viewportFraction: 0.9,
                ),
                // padEnds: false,
                children: const <Widget>[
                  CContainerWidget(color: Cl.black),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: CContainerWidget(color: Cl.azure),
                  ),
                  CContainerWidget(color: Cl.black),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 32,
              width: 330,
              color: Cl.white,
              child: Row(
                children: [
                  Image.asset(Id.ic_play),
                  const SizedBox(width: 10),
                  Image.asset(Id.ic_playslide),
                  const SizedBox(width: 28),
                  const Text('00:00:00 / 00:10:00'),
                  const SizedBox(width: 31),
                  Image.asset(Id.ic_valume),
                  const SizedBox(width: 10),
                  Image.asset(Id.ic_clock),
                ],
              ),
            ),
            const Spacer(),
            Container(
              height: 52,
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      PopupMenuButton(
                        child: Center(
                          child: Image.asset(Id.ic_img),
                        ),
                        itemBuilder: (context) => [
                          PopupMenuItem(
                            onTap: () => model.onChangemediaPressed(context),
                            child: Row(
                              children: [
                                Image.asset(Id.ic_img),
                                const SizedBox(width: 14),
                                const Text(
                                  'Change media',
                                  style: St.textStyle7,
                                ),
                              ],
                            ),
                          ),
                          PopupMenuItem(
                            onTap: () => model.onAddDesign(context),
                            child: Row(
                              children: [
                                Image.asset(Id.ic_smile),
                                const SizedBox(width: 14),
                                const Text('Add design', style: St.textStyle7),
                              ],
                            ),
                          ),
                          PopupMenuItem(
                            onTap: () => model.onRadio(context),
                            child: Row(
                              children: [
                                Image.asset(Id.ic_tv),
                                const SizedBox(width: 14),
                                const Text('Ratio', style: St.textStyle7),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(width: 47),
                      PopupMenuButton(
                        child: Image.asset(Id.ic_time),
                        itemBuilder: (context) => [
                          PopupMenuItem(
                            onTap: () => model.onTitlePressed(context),
                            child: Row(
                              children: [
                                Image.asset(Id.ic_time),
                                const SizedBox(width: 14),
                                const Text(
                                  'Title',
                                  style: St.textStyle7,
                                ),
                              ],
                            ),
                          ),
                          PopupMenuItem(
                            child: Row(
                              children: [
                                Image.asset(Id.ic_cc),
                                const SizedBox(width: 14),
                                const Text(
                                  'Subtitle',
                                  style: St.textStyle7,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(width: 47),
                      PopupMenuButton(
                        child: Image.asset(Id.ic_music2),
                        itemBuilder: (context) => [
                          PopupMenuItem(
                            onTap: () => model.onMusicPressed(context),
                            child: Row(
                              children: [
                                Image.asset(Id.ic_bgm),
                                const SizedBox(width: 14),
                                const Text(
                                  'BGM',
                                  style: St.textStyle7,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            // Image.asset(Id.ic_img),
          ],
        ),
      ),
    );
  }
}
