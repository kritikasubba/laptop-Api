import 'package:dio/dio.dart';
import 'package:laptop_api/model/laptop.dart';

List<Products> laptopModel = [];

Future <Laptop> fetchData() async {


  var dio = Dio();
  final response = await dio.get('https://dummyjson.com/products/search?q=Laptop');

  if(response.statusCode == 200) {
    var res = response.data;

    var values =  Laptop.fromJson(res);
    laptopModel = values.products;

    return values;
  }
  else {
    throw Exception('unsuceesful');
  }

}