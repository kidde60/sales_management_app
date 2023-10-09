import 'package:flutter/material.dart';

import 'item.dart';

class ItemScreen extends StatefulWidget {
  const ItemScreen({super.key});

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  List<Item> items = List.empty(growable: true);

  TextEditingController nameController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  TextEditingController costController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

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
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                  hintText: 'Item name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
              maxLength: 15,
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: quantityController,
              decoration: const InputDecoration(
                  hintText: 'Quantity',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
              maxLength: 15,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: costController,
              decoration: const InputDecoration(
                  hintText: 'Cost Of Item',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
              maxLength: 15,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: priceController,
              decoration: const InputDecoration(
                  hintText: 'Selling Price',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
              maxLength: 15,
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
                onPressed: () {
                  String name = nameController.text.trim();
                  String quantity = quantityController.text.trim();
                  String cost = costController.text.trim();
                  String price = priceController.text.trim();

                  if (name.isNotEmpty && quantity.isNotEmpty) {
                    setState(() {
                      items.add(Item(
                          name: name,
                          quantity: int.parse(quantity),
                          cost: int.parse(cost),
                          price: int.parse(price)));

                      nameController.text = '';
                      quantityController.text = '';
                      costController.text = '';
                      priceController.text = '';
                    });
                  }
                },
                child: const Text('Submit')),
            const SizedBox(
              height: 10,
            ),
            items.isEmpty
                ? const Text('No item add, Please add Items')
                : Expanded(
                    child: ListView.builder(
                        itemCount: items.length,
                        itemBuilder: ((context, index) => getRow(index))),
                  ),
          ],
        ),
      ),
    );
  }

  getRow(int index) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          child: Text(items[index].name[0]),
        ),
        title: Column(
          children: [
            Text(items[index].name),
            Text(items[index].quantity.toString()),
            Text(items[index].cost.toString()),
            Text(items[index].price.toString()),
          ],
        ),
      ),
    );
  }
}
