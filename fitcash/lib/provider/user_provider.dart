import 'package:fitcash/utils/db_keys.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class UserProvider extends ChangeNotifier {
  
  // * variables
  String _name = '';
  List _allExpenses = [];

  // * getter
  String get name => _name;

  // * setter
  void setData(data) {}

  Future<void> addExpense({
    DateTime? date,
    required double amount,
    required String note,
    String? category,
    required int expenseType,
    required String modeOfPayment,
    List<String>? tagList,
  }) async {
    try {
      Box? box = await Hive.openBox(DbKeys.dbExpense);
      await getAllExpenseList();
      Map expenseObj = {
        'name': _name,
        'amount': 0.0,
        'date': date ?? DateTime.now(),
        'mode': modeOfPayment,
        'category': category ?? 'others',
        'type': expenseType,
        'tags': tagList ?? [],
      };

      _allExpenses.add(expenseObj);
      await box.put(DbKeys.dballexpenseKey, _allExpenses);

      notifyListeners();
    } catch (err) {}
  }

  Future<void> getAllExpenseList() async {
    try {
      Box? box = await Hive.openBox(DbKeys.dbExpense);
      _allExpenses = box.get(DbKeys.dballexpenseKey);
      notifyListeners();
      return;
    } catch (err) {
      return;
    }
  }
}
