
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'AddItemScreen.dart';
import 'ItemAddNotifier.dart';

class HomeScreen extends StatefulWidget {

 const HomeScreen({
    Key? key,
  }) : super(key: key);


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
//  late String ItemAddNotifier;
 @override
 void initState(){
   Provider.of<ItemAddNotifier>(context).itemList = null;
   super.initState();
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (context) {
                    return const AddItemScreen();
                  },
                ),
              );
            },
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Consumer<ItemAddNotifier>(
                builder: (context, itemAddNotifier, _) {
                  return ListView.builder(
                    itemCount: itemAddNotifier.itemList!.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          itemAddNotifier.itemList![index].itemName,
                          style: const TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
