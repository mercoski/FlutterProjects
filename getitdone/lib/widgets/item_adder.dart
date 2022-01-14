import 'package:flutter/material.dart';
import 'package:getitdone/models/items_data.dart';
import 'package:provider/provider.dart';

class ItemAdder extends StatelessWidget {
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          context: context,
          builder: (context) => Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: SingleChildScrollView(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: textEditingController,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            alignLabelWithHint: true,
                            border: OutlineInputBorder(),
                            focusColor: Theme.of(context).primaryColor,
                            labelText: 'Item Name',
                            hintText: 'Add Item'),
                        autofocus: true,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        textEditingController.text != ''
                            ? Provider.of<ItemData>(context, listen: false)
                                .addItem(textEditingController.text)
                            : null;
                        Navigator.pop(context);
                      },
                      child: Text('ADD'),
                      style: ElevatedButton.styleFrom(
                          primary: Theme.of(context).primaryColor),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      child: Icon(Icons.add),
    );
  }
}
