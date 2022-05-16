part of add_design;

class StickerItemWidget extends StatefulWidget {
  final bool hasTitle;
  final bool isSeleted;
  final VoidCallback? onPressed;
  final DesignInfo designInfo;

  const StickerItemWidget({
    Key? key,
    this.hasTitle = true,
    this.isSeleted = false,
    this.onPressed,
    required this.designInfo,
  }) : super(key: key);

  @override
  State<StickerItemWidget> createState() => _StickerItemWidgetState();
}

class _StickerItemWidgetState extends State<StickerItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: widget.onPressed,
            child: Container(
              height: 80,
              width: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color: widget.isSeleted ? Cl.darkishPink : Cl.veryLightPink,
                ),
              ),
              padding: widget.hasTitle ? EdgeInsets.all(16) : EdgeInsets.zero,
              child: Image.network(
                'https://freenice.net/wp-content/uploads/2021/08/hinh-ve-cute-de-thuong-ngo-nghinh-dang-yeu-dep-nhat.jpg',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        if (widget.hasTitle) ...[
          const SizedBox(height: 1),
          if (widget.hasTitle)
            Text(
              widget.designInfo.title,
            ),
        ],
      ],
    );
  }
}
