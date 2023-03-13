import 'package:flutter/material.dart';
import 'package:frac/model/item.dart';


class ChatMes with ChangeNotifier {


  List selectedSubject = [];

  add(Item product) {

    selectedSubject.add(product);
    notifyListeners();
  }
  delete(Item product) {
    selectedSubject.remove(product);


    notifyListeners();
  }
}