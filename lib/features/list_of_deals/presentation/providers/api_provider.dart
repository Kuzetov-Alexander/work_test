import 'package:flutter/material.dart';

class ApiProvider extends ChangeNotifier {
  final List data = [];

  void queryData(context, {required List data}) {
    print(data);
  }
}
