import 'package:flutter/material.dart';
import '../screens/add_new_product_screen.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      tileColor: Colors.black12.withOpacity(0.1),
      title: const Text("Product name"),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Product Code: CODE"),
          const Text("Price: \$120"),
          const Text("Quantity: 2"),
          const Text("Total Price: \$240"),
          const Divider(),

          OverflowBar(
            alignment: MainAxisAlignment.end,
            overflowSpacing: 0.1,
            spacing: 5,
            children: [
              TextButton.icon(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const AddNewProductScreen();
                    },));
                  },
                  icon: const Icon(Icons.edit),
                  label: const Text("Edit")
              ),

              TextButton.icon(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const AddNewProductScreen()));
                },
                icon: const Icon(Icons.delete, color: Colors.red),
                label: const Text("Delete", style: TextStyle(color: Colors.red))
              ),
            ],
          )
        ],
      ),
    );
  }
}
