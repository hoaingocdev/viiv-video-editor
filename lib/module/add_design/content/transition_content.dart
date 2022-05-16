part of add_design;

class TransitionContent extends StatelessWidget {
  const TransitionContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.watch<_AddDesignModel>();

    return Column(
      children: [
        const SizedBox(height: 10),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.only(left: 15, top: 10, right: 15),
            itemCount: model.stickers.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 7,
              crossAxisSpacing: 7,
              childAspectRatio: 81 / 96,
            ),
            itemBuilder: (_, i) {
              return StickerItemWidget(
                designInfo: model.stickers[i],
                onPressed: () => model.onTransitionPressed(i),
                isSeleted: i == model.transitionIndex,
              );
            },
          ),
        ),
        Container(
          height: 52,
          width: double.infinity,
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Row(
            children: [
              InkWell(
                onTap: model.onBackPressed,
                child: const Icon(Icons.arrow_back_ios),
              ),
              const Spacer(),
              MaterialButton(
                onPressed: model.isTrasitionApplyEnabled ? () => model.onTransitionApplyPressed() : null,
                child: Text(
                  'Apply',
                  style: TextStyle(
                    color: model.isTrasitionApplyEnabled ? Cl.darkishPink : Cl.veryLightPink,
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: MediaQueryData.fromWindow(window).padding.bottom,
        ),
      ],
    );
  }
}
