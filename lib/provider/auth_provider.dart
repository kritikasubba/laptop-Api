import 'package:flutter/cupertino.dart';
import 'package:laptop_api/model/laptop.dart';

class AuthProvider extends ChangeNotifier{
  Laptop? _laptopModel;

  Laptop? get laptopProduct {
    return _laptopModel;


  }

  set get(Laptop? lModel) {
    _laptopModel = lModel;
  }

 

  
}