part of main;

class _MainModel extends TTChangeNotifier<_MainView> {
  void onCancer() {}

  void onChangemediaPressed(BuildContext context) {
    showBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (_) => createChangeMedia(),
    );
  }

  void onUndoPressed() {}

  void onReduPressed() {}

  void onSharePressed() {}

  void onAddDesign(BuildContext context) {
    showBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (_) => createAddDesign(),
    );
  }

  void onRadio(BuildContext context) {
    showBottomSheet(
      context: context,
      builder: (_) => createRadio(),
    );
  }

  void onTitlePressed(BuildContext context) {
    showBottomSheet(
      context: context,
      builder: (_) => createTitle(),
    );
  }
}
