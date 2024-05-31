import 'package:flutter/cupertino.dart';

class NumbersListProvider extends ChangeNotifier {
  List<int> numbers = [1, 2, 3, 4];

  void add() {
    int lastNumber = numbers.last;
    numbers.add(lastNumber + 1);
    notifyListeners();
  }
}
