part of text;

class TextWidget extends StatefulWidget {
  final bool isSelected;
  final VoidCallback? onPressed;
  final TitleInfo titleInfo;

  const TextWidget({
    Key? key,
    this.isSelected = false,
    this.onPressed,
    required this.titleInfo,
  }) : super(key: key);

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
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
          child: Image.network(
            widget.titleInfo.imageUrl,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
