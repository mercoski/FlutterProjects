import 'package:flutter/material.dart';
import 'package:getitdone/models/items_data.dart';
import 'package:getitdone/widgets/item_adder.dart';
import 'package:getitdone/widgets/itemcards.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Get It Done'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: ItemAdder(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: Text(
                    '${Provider.of<ItemData>(context).items.length} Items',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        return ItemCards(
                          title:
                              Provider.of<ItemData>(context).items[index].title,
                          isdone: Provider.of<ItemData>(context)
                              .items[index]
                              .isdone,
                          toggleStatus: (_) {
                            Provider.of<ItemData>(context, listen: false)
                                .toggleStatus(index);
                          },
                          removeElement: (_) =>
                              Provider.of<ItemData>(context, listen: false)
                                  .removeItem(index),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          const Divider(),
                      itemCount: Provider.of<ItemData>(context).items.length),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
