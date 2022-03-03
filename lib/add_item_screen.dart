// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerparactice/item_add_notifier.dart';
class AddItemScreen extends StatefulWidget {
  const AddItemScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<AddItemScreen> createState() => _AddItemScreenState();
}

class _AddItemScreenState extends State<AddItemScreen> {
  final String title = 'Add Items';
  

 final TextEditingController _itemNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _itemNameController,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(15.0),
                hintText: 'Item Name',
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            RaisedButton(
              child: const Text('ADD ITEM'),
              onPressed: () async {
                if (_itemNameController.text.isEmpty) {
                  return;
                }
                await Provider.of<ItemAddNotifier>(context, listen: false)
                    .addItem(_itemNameController.text);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}