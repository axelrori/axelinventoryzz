import 'package:flutter/material.dart';
import 'package:axelinventoryzz/models/item_models.dart'; // Replace with your actual path

class ItemListPage extends StatelessWidget {
  final List<Product> items;

  ItemListPage({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item List'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(items[index].name),
              subtitle: Text(
                  'Harga: ${items[index].price}\nAmount: ${items[index].amount}\nDeskripsi: ${items[index].description}'),
            ),
          );
        },
      ),
    );
  }
}
