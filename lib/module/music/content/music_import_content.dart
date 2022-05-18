part of music;

class MusicImportContent extends StatelessWidget {
  final ValueChanged<int>? onLongPressed;
  final int importIndex;
  const MusicImportContent({
    Key? key,
    this.onLongPressed,
    required this.importIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.watch<_MusicModel>();

    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: model.musicImports.length,
            separatorBuilder: (_, __) => const SizedBox(height: 12),
            itemBuilder: (_, i) {
              final item = model.musicImports[i];
              final isSelected = i == importIndex;

              return InkWell(
                onLongPress: () => onLongPressed?.call(i),
                child: Row(
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
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: isSelected
                          ? InkWell(
                              onTap: () => model.onDeletePressed(i),
                              child: const Icon(
                                Icons.close,
                                color: Color(0xffff0000),
                              ),
                            )
                          : Image.asset(Id.ic_play),
                    ),
                    const SizedBox(width: 15),
                  ],
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: MediaQueryData.fromWindow(window).padding.bottom + 52,
          child: Center(
            child: MaterialButton(
              onPressed: model.onUploadPressed,
              child: const Text(
                'Upload',
                style: St.textStyle5,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
