import 'package:flutter/material.dart';

class ApiProvider extends ChangeNotifier {
  final List dataList = [];
  bool getData = false;

  void queryData({required List data}) {
    dataList.clear();
    dataList.addAll(data);
    notifyListeners();
  }
}
