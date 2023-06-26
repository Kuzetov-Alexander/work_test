import 'package:flutter/material.dart';

class ApiProvider extends ChangeNotifier {
  final List dataList = [];

  void queryData({required List data}) {
    dataList.clear();
    dataList.addAll(data);
  }
}
