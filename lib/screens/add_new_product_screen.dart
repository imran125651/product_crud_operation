import 'package:flutter/material.dart';

class AddNewProductScreen extends StatefulWidget {
  const AddNewProductScreen({super.key});

  @override
  State<AddNewProductScreen> createState() => _AddNewProductScreenState();
}

class _AddNewProductScreenState extends State<AddNewProductScreen> {

  final TextEditingController _productController = TextEditingController();
  final TextEditingController _unitPriceController = TextEditingController();
  final TextEditingController _totalPriceController = TextEditingController();
  final TextEditingController _productCodeController = TextEditingController();
  final TextEditingController _productImageController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();



  @override
  void dispose() {
    _productController.dispose();
    _unitPriceController.dispose();
    _totalPriceController.dispose();
    _productCodeController.dispose();
    _productImageController.dispose();
    _quantityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Product"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _productController,
                decoration: const InputDecoration(
                  hintText: "Name",
                  labelText: "Product Name"
                ),
              ),
              TextFormField(
                controller: _unitPriceController,
                decoration: const InputDecoration(
                    hintText: "Unit Price",
                    labelText: "Unit Price"
                ),
              ),
              TextFormField(
                controller: _totalPriceController,
                decoration:  const InputDecoration(
                    hintText: "Total Price",
                    labelText: "Total Price"
                ),
              ),
              TextFormField(
                controller: _productController,
                decoration: const InputDecoration(
                    hintText: "Image",
                    labelText: "Product Image"
                ),
              ),
              TextFormField(
                controller: _productCodeController,
                decoration: const InputDecoration(
                    hintText: "Product Code",
                    labelText: "Product Code"
                ),
              ),
              TextFormField(
                controller: _quantityController,
                decoration: const InputDecoration(
                  hintText: "Quantity",
                  labelText: "Quantity"
                ),
              ),

              const SizedBox(height: 10),
              
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size.fromWidth(double.maxFinite)
                ),
                onPressed: (){

                },
                child: Text("Add Product")
              )
            ],
          ),
        ),
      ),
    );
  }
}
