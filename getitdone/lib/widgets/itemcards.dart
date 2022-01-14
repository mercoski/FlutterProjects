import 'package:flutter/material.dart';

class ItemCards extends StatelessWidget {
  final String title;
  final bool isdone;
  final Function(bool?) toggleStatus;
  final Function(DismissDirection?) removeElement;
  ItemCards(
      {required this.title,
      required this.isdone,
      required this.toggleStatus,
      required this.removeElement});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(title),
      onDismissed: removeElement,
      child: Card(
        color: isdone ? Theme.of(context).primaryColor : null,
        elevation: isdone ? 1 : 5,
        shadowColor: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child: ListTile(
          title: Text(
            title,
            maxLines: 3,
            style: isdone
                ? TextStyle(
                    color: Colors.black, decoration: TextDecoration.lineThrough)
                : TextStyle(color: Colors.black),
          ),
          trailing: Checkbox(
            onChanged: toggleStatus,
            value: isdone,
            activeColor: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
