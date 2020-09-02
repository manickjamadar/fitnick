extension ListX<T> on List<T> {
  List<T> reorder(int oldIndex, int newIndex) {
    final newList = [...this];
    if (oldIndex < newIndex) {
      //card moved to bottom
      final oldElement = newList[oldIndex];
      newList.insert(newIndex, oldElement);
      newList.removeAt(oldIndex);
    } else {
      //card moved upward
      final oldElement = newList[oldIndex];
      newList.removeAt(oldIndex);
      newList.insert(newIndex, oldElement);
    }
    return newList;
  }

  List<P> filter<P>(List<P> list, bool Function(T, P) test) {
    final cleanedList = this.where((t) => list.any((p) => test(t, p))).toList();
    final filteredList =
        cleanedList.map((t) => list.firstWhere((p) => test(t, p))).toList();
    return filteredList;
  }

  bool containsAll(List<T> list) {
    return list.every((element) => this.contains(element));
  }

  bool hasNext(int currentIndex) {
    return currentIndex >= 0 && currentIndex < this.length - 1;
  }

  bool hasPrevious(int currentIndex) {
    return currentIndex > 0 && currentIndex < this.length;
  }

  List<T> removeBy(T element) {
    return this.where((e) => e != element).toList();
  }
}
