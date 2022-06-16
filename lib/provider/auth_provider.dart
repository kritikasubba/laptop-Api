import 'package:flutter/cupertino.dart';
import 'package:laptop_api/model/laptop.dart';
import 'package:laptop_api/views/views.dart';

class AuthProvider extends ChangeNotifier{
  Laptop? _laptopModel;

  Laptop? get laptopProduct {
    return _laptopModel;


  }

  set get(Laptop? lModel) {
    _laptopModel = lModel;
  }

 getPost() async {
  _laptopModel = await fetchData();
  notifyListeners();
 }

  
}