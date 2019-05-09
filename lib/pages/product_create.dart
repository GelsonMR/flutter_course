import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductCreatePageState();
  }
}

class _ProductCreatePageState extends State<ProductCreatePage> {
  String titleValue = '';
  String descriptionValue = '';
  double priceValue = 0.0;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          onChanged: (String value) {
            setState(() {
              titleValue = value;
            });
          },
        ),
        Text('Title: ' + titleValue),
        TextField(
          keyboardType: TextInputType.multiline,
          maxLines: 4,
          onChanged: (String value) {
            setState(() {
              descriptionValue = value;
            });
          },
        ),
        Text('Description: ' + descriptionValue),
        TextField(
          keyboardType: TextInputType.number,
          onChanged: (String value) {
            setState(() {
              priceValue = double.parse(value);
            });
          },
        ),
        Text('Price: ' + priceValue.toString()),
      ],
    );
  }
}
