class College {
  final String _name;
  final String _deadline;

  College({String name, String deadline})
      : _name = name,
        _deadline = deadline;

  String getName() {
    return _name;
  }

  String getDeadline() {
    return _deadline;
  }
}
