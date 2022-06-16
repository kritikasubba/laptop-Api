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

  List<String> apiDetails = [

    
  ];
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
        centerTitle: true,
        title: Text('Laptop Api'),
      ),
      body: Consumer<AuthProvider>(
        builder: (context, value, child) {
          return ListView.builder(
              itemCount: laptopModel.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(border: Border.all(
                          color: Colors.red.shade100,
                          
                          width: 2
                        ),
                        
                         borderRadius: const BorderRadius.all(Radius.circular(32)),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(32)),
                          child: Image.network(laptopModel[index].thumbnail ?? "",
                             
                              fit: BoxFit.fill, ),
                        ),
                      ),
                          const SizedBox(
                        height: 5,
                      ),
                     Text(
                        "Price: ${laptopModel[index].price.toString()}",
                        style: const TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Brand: ${laptopModel[index].brand ?? ""}",
                        style: const TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Decription: ${laptopModel[index].description ?? ""}",
                        style: const TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Category: ${laptopModel[index].category ?? ""}",
                        style: const TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Discount Percentage: ${laptopModel[index].discountPercentage.toString()}",
                        style: const TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Title: ${laptopModel[index].title ?? ""}",
                        style: const TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Rating: ${laptopModel[index].rating.toString()}",
                        style: const TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    
                    ],
                  ),
                );
              });
        },
      ),
    );
  }
}
