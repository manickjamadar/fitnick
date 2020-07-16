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
      final newElement = newList[newIndex];
      newList[newIndex] = oldElement;
      newList[oldIndex] = newElement;
    }
    return newList;
  }
}
