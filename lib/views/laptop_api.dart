import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:laptop_api/provider/auth_provider.dart';
import 'package:laptop_api/views/views.dart';
import 'package:provider/provider.dart';

class LaptopApi extends StatefulWidget {
  const LaptopApi({Key? key}) : super(key: key);

  @override
  State<LaptopApi> createState() => _LaptopApiState();
}

class _LaptopApiState extends State<LaptopApi> {
  @override
  void initState() {
   Future.microtask(() {
    Provider.of<AuthProvider>(context, listen: false).getPost();
   });
    super.initState();
  }
  Widget build(BuildContext context) {

    return Scaffold(
appBar: AppBar(
  title: Text('Laptop Api'),
),
body: Consumer<AuthProvider> (builder: (context, value, child) {
  return ListView.builder(
    itemCount: laptopModel.length,
    itemBuilder: (context, index) {
    return Column(
      children: [
Image.network(laptopModel[index].thumbnail ?? ""),
Text(laptopModel[index].price.toString()),

      ],
    );
    
  });
},),

    );
    
    
    
  }
}