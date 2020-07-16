import 'package:fitnick/domain/core/unique_id.dart';
import 'package:fitnick/domain/exercise/models/exercise.dart';

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

  List<P> filter<P>(List<P> list, bool Function(T, P) test) {
    final cleanedList = this.where((t) => list.any((p) => test(t, p))).toList();
    final filteredList =
        cleanedList.map((t) => list.firstWhere((p) => test(t, p))).toList();
    return filteredList;
  }
}
