part of title;

class StickerWidget extends StatefulWidget {
  final bool isSelected;
  final VoidCallback? onPressed;
  final TitleInfo titleInfo;

  const StickerWidget({
    Key? key,
    this.isSelected = false,
    this.onPressed,
    required this.titleInfo,
  }) : super(key: key);

  @override
  State<StickerWidget> createState() => _StickerWidgetState();
}

class _StickerWidgetState extends State<StickerWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: widget.onPressed,
        child: Container(
          height: 50,
          width: 109,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              color: widget.isSelected ? Cl.darkishPink : Cl.veryLightPink,
            ),
          ),
          padding: EdgeInsets.all(16),
          child: Image.network(
            'https://freenice.net/wp-content/uploads/2021/08/hinh-ve-cute-de-thuong-ngo-nghinh-dang-yeu-dep-nhat.jpg',
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
