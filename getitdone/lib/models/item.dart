class Item {
  final String title;
  bool isdone;

  Item({required this.title, this.isdone = false});

  void toggleStatus() {
    isdone = !isdone;
  }
}
