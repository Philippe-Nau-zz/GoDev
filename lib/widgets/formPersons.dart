import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormPersons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Nova Pessoa'),
          Divider(
            color: Theme.of(context).primaryColor,
          )
        ],
      ),
      titleTextStyle: Theme.of(context).textTheme.headline5,
      content: Container(
        height: 130,
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(labelText: 'Nome'),
              ),
              TextFormField(
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Sobrenome'),
              ),
            ],
          ),
        ),
      ),
      buttonPadding: EdgeInsets.all(5),
      actions: [
        FlatButton(
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Theme.of(context).buttonColor,
            ),
            child: Text(
              'Cancelar',
              style: Theme.of(context).textTheme.button,
            ),
          ),
          onPressed: () => Get.back(),
        ),
        FlatButton(
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Theme.of(context).accentColor,
            ),
            child: Text(
              'Confirmar',
              style: Theme.of(context).textTheme.button,
            ),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
