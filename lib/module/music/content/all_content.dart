part of music;

class AllContent extends StatelessWidget {
  final ValueChanged<int>? onPressed;
  final int categoryIndex;
  const AllContent({
    Key? key,
    required this.categoryIndex,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.watch<_MusicModel>();

    return GridView.builder(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 10,
        childAspectRatio: 165 / 50,
      ),
      itemCount: model.categories.length,
      itemBuilder: (_, i) {
        final item = model.categories[i];
        final isSelected = i == categoryIndex;
        return InkWell(
          onTap: () => onPressed?.call(i),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: isSelected ? Cl.darkishPink : Cl.veryLightPink),
            ),
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.network(
                    item.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned.fill(
                  child: Container(
                    color: Cl.black.withOpacity(0.4),
                  ),
                ),
                Center(
                  child: Text(
                    item.title,
                    style: St.textStyle10,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
