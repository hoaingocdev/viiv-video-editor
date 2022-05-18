part of music;

class RecommentContent extends StatelessWidget {
  final List<MusicInfo> list;
  final int playIndex;
  final ValueChanged<int>? onPlayPressed;

  const RecommentContent({
    Key? key,
    required this.list,
    required this.playIndex,
    this.onPlayPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: list.length,
      separatorBuilder: (_, __) => const SizedBox(height: 12),
      itemBuilder: (_, i) {
        return MusicWidget(
          musicInfo: list[i],
          onPressed: () => onPlayPressed?.call(i),
          isSelected: i == playIndex,
        );
      },
    );
  }
}
