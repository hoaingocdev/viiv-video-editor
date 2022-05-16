part of add_design;

class StickerContent extends StatelessWidget {
  const StickerContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.watch<_AddDesignModel>();

    return Column(
      children: [
        const SizedBox(height: 10),
        SizedBox(
          height: 25,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            separatorBuilder: (_, __) => const SizedBox(width: 5),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (_, i) {
              return HashtagItemWidget(
                name: '신나는',
                onPressed: () => model.onHashtagPressed(i),
                isSelected: i == model.hashtagIndex,
              );
            },
          ),
        ),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.only(left: 15, top: 10, right: 15),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 7,
              crossAxisSpacing: 7,

              // childAspectRatio: 81 / 96,
            ),
            itemCount: model.stickers.length,
            itemBuilder: (_, i) {
              return StickerItemWidget(
                designInfo: model.stickers[i],
                hasTitle: false,
                onPressed: () => model.onStickerItemPressed(i),
                isSeleted: i == model.stickerIndex,
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
                onPressed: model.isStickerApplyEnabled
                    ? () {
                        model.onStickerApplyPressed();
                      }
                    : null,
                child: Text(
                  'Apply',
                  style: TextStyle(color: model.isStickerApplyEnabled ? Cl.darkishPink : Cl.veryLightPink),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: MediaQueryData.fromWindow(window).padding.bottom)
      ],
    );
  }
}
