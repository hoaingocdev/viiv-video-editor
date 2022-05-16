part of change_media;

class ImportContent extends StatelessWidget {
  const ImportContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.read<_ChangeMediaModel>();

    return Expanded(
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
    );
  }
}
