import 'package:flutter/material.dart';
import 'package:product_crud_operation/screens/add_new_product_screen.dart';
import 'package:product_crud_operation/widgets/Product_Item.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product List ==== 1:01:14"),
      ),
      body: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemCount: 7,
        itemBuilder: (context, index) {
          return const ProductItem();
        },
        separatorBuilder: (context, index) => const SizedBox(height: 15),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50)
        ),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const AddNewProductScreen()));
        },
        child: const Icon(Icons.add, color: Colors.white, size: 30,),
      ),
    );
  }

}


