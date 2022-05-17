part of music;

class RecommentContent extends StatelessWidget {
  final List<MusicInfo> list;
  const RecommentContent({
    Key? key,
    required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: list.length,
      separatorBuilder: (_, __) => const SizedBox(height: 12),
      itemBuilder: (_, i) {
        return MusicWidget(
          recommanedInfo: list[i],
        );
      },
    );
  }
}
