part of text;

class TitleContent extends StatelessWidget {
  final List<TitleInfo> list;
  final List<HashtagInfo> hashtags;
  final int selectedIndex;
  final int selectedHashtagIndex;

  final ValueChanged<int>? onHashtagPressed;
  final ValueChanged<int>? onItemPressed;

  const TitleContent({
    Key? key,
    required this.list,
    required this.selectedIndex,
    required this.hashtags,
    required this.selectedHashtagIndex,
    this.onItemPressed,
    this.onHashtagPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.watch<_TextModel>();

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
            itemCount: hashtags.length,
            itemBuilder: (_, i) {
              return HashtagWidget(
                hashtagInfo: hashtags[i],
                onPressed: () => onHashtagPressed?.call(i),
                isSelected: i == selectedHashtagIndex,
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
            itemCount: list.length,
            itemBuilder: (_, i) {
              return TextWidget(
                titleInfo: list[i],
                onPressed: () => onItemPressed?.call(i),
                isSelected: i == selectedIndex,
              );
            },
          ),
        ),
      ],
    );
  }
}
