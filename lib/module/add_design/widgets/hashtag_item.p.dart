part of add_design;

class HashtagItemWidget extends StatelessWidget {
  final String name;
  final bool isSelected;
  final VoidCallback? onPressed;
  const HashtagItemWidget({
    Key? key,
    required this.name,
    this.isSelected = false,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(13),
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(13),
        onTap: onPressed,
        child: Container(
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              border: Border.all(
                color: isSelected ? Cl.darkishPink : Cl.veryLightPink,
              )
              // color: Cl.black,
              ),
          child: Center(
            child: Text('#$name'),
          ),
        ),
      ),
    );
  }
}
