part of change_media;

class GalleryContent extends StatefulWidget {
  const GalleryContent({Key? key}) : super(key: key);

  @override
  State<GalleryContent> createState() => _GalleryContentState();
}

class _GalleryContentState extends State<GalleryContent> {
  @override
  Widget build(BuildContext context) {
    final model = context.read<_ChangeMediaModel>();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 12),
          child: Row(
            children: [
              const Text('Gallery'),
              const SizedBox(width: 11),
              PopupMenuButton(
                child: SizedBox(
                  height: 15,
                  width: 15,
                  child: Image.asset(Id.ic_close),
                ),
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    child: Text('album1'),
                  ),
                  const PopupMenuItem(
                    child: Text('album2'),
                  ),
                  const PopupMenuItem(
                    child: Text('album3'),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        Expanded(
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 9,
              mainAxisSpacing: 9,
            ),
            itemCount: model.importMedias.length,
            itemBuilder: (_, i) {
              return MediaInfosWidget(
                mediaInfo: model.importMedias[i],
              );
            },
          ),
        )
      ],
    );
  }
}
