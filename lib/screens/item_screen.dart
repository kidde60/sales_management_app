import 'package:flutter/material.dart';

import 'item.dart';

class ItemScreen extends StatefulWidget {
  const ItemScreen({super.key});

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  List<Item> items = List.empty(growable: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Item'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const TextField(
              decoration: InputDecoration(
                  hintText: 'Item name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
              maxLength: 15,
            ),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              decoration: InputDecoration(
                  hintText: 'Quantity',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
              maxLength: 15,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              decoration: InputDecoration(
                  hintText: 'Cost Of Item',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
              maxLength: 15,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              decoration: InputDecoration(
                  hintText: 'Selling Price',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
              maxLength: 15,
              keyboardType: TextInputType.number,
            ),
            items.isEmpty
                ? const Text('No item add, Please add Items')
                : ListView.builder(
                    itemBuilder: ((context, index) => getRow(index))),
          ],
        ),
      ),
    );
  }

  getRow(int index) {
    return ListTile(
      title: Column(
        children: [
          Text(items[index].name),
          Text(items[index].quantity.toString()),
          Text(items[index].cost.toString()),
          Text(items[index].price.toString()),
        ],
      ),
    );
  }
}
