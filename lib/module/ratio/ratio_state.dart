part of ratio;

class _RatioViewState extends TTState<_RatioModel, _RatioView> {
  @override
  Widget buildWithModel(BuildContext context, _RatioModel model) {
    return SizedBox(
      child: Container(
        height: MediaQueryData.fromWindow(window).padding.bottom + 160,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildRatioButton(
                  title: '9:16',
                  onPressed: () => model.onAspectRatioPressed(AspectRatioEnum.portrait),
                  isSelected: model.aspectRatioIndex == AspectRatioEnum.portrait,
                ),
                buildRatioButton(
                  title: '1:1',
                  height: 42,
                  width: 42,
                  onPressed: () => model.onAspectRatioPressed(AspectRatioEnum.square),
                  isSelected: model.aspectRatioIndex == AspectRatioEnum.square,
                ),
                buildRatioButton(
                  title: '16:9',
                  height: 38,
                  width: 56,
                  onPressed: () => model.onAspectRatioPressed(AspectRatioEnum.landscape),
                  isSelected: model.aspectRatioIndex == AspectRatioEnum.landscape,
                )
              ],
            ),
            const SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  MaterialButton(
                    onPressed: model.onCancelPressed,
                    child: const Text(
                      'Cancel',
                      style: St.textStyle,
                    ),
                  ),
                  const Spacer(),
                  MaterialButton(
                    onPressed: model.onConfirmPressed,
                    child: Text(
                      'Confirm',
                      style: St.textStyle2.copyWith(
                        color: model.isSelected ? Cl.darkishPink : Cl.veryLightPink,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildRatioButton({
    required String title,
    double? width,
    double? height,
    VoidCallback? onPressed,
    bool isSelected = false,
  }) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: height ?? 56,
        width: width ?? 38,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: isSelected ? Cl.darkishPink : Cl.black, width: 2),
        ),
        child: Center(
          child: Text(
            title,
            style: St.textStyle2.copyWith(
              color: isSelected ? Cl.darkishPink : Cl.black,
            ),
          ),
        ),
      ),
    );
  }
}
