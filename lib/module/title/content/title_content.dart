part of title;

class TitleContent extends StatelessWidget {
  const TitleContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.watch<_TitleModel>();

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
        const SizedBox(height: 10),
        Expanded(
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 9,
              mainAxisSpacing: 9,
              childAspectRatio: 109 / 50,
            ),
            padding: const EdgeInsets.all(15),
            itemCount: model.importTitle.length,
            itemBuilder: (_, i) {
              return StickerWidget(
                titleInfo: model.importTitle[i],
                onPressed: () => model.onTitlePressed(i),
                isSelected: i == model.titleIndex,
              );
            },
          ),
        ),
      ],
    );
  }
}
