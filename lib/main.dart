import 'package:flutter/material.dart';
import 'package:laptop_api/provider/auth_provider.dart';
import 'package:laptop_api/views/laptop_api.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (_) => AuthProvider(),
    child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LaptopApi(),
    ),
    );
    
  
    
  }
}