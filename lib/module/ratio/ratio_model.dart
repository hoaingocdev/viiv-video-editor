part of ratio;

enum AspectRatioEnum { portrait, square, landscape, unknow }

class _RatioModel extends TTChangeNotifier<_RatioView> {
  AspectRatioEnum aspectRatioIndex = AspectRatioEnum.unknow;
  bool get isSelected => aspectRatioIndex != AspectRatioEnum.unknow;

  void onAspectRatioPressed(AspectRatioEnum e) {
    if (aspectRatioIndex != e) {
      aspectRatioIndex = e;
      notifyListeners();
    }
  }

  void onConfirmPressed() => Navigator.of(context!).pop();

  void onCancelPressed() => Navigator.of(context!).pop();
}
