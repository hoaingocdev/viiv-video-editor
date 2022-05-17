part of music;

class MusicImportContent extends StatelessWidget {
  const MusicImportContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.watch<_MusicModel>();

    return ListView.separated(
      shrinkWrap: true,
      itemCount: model.musicImports.length,
      separatorBuilder: (_, __) => const SizedBox(height: 12),
      itemBuilder: (_, i) {
        final item = model.musicImports[i];

        return Row(
          children: [
            Container(
              height: 40,
              width: 40,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: Image.network(
                item.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: St.textStyle9,
                  ),
                  Text(
                    item.artis,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: St.textStyle9,
                  ),
                ],
              ),
            ),
            // const Spacer(),
            Image.asset(Id.ic_play),
          ],
        );
      },
    );
  }
}
