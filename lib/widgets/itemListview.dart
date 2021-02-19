import 'package:flutter/material.dart';

class ItemListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Sala - 00',
            style: Theme.of(context).textTheme.headline3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Capacidade: 100',
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                'Livre: 100',
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
          Divider(
            color: Theme.of(context).primaryColor,
            height: 25,
          )
        ],
      ),
    );
  }
}
