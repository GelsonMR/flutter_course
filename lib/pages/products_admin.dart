import 'package:flutter/material.dart';

import './../drawer.dart';

class ProductsAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text('Manage Products'),
      ),
      body: Center(
        child: Text('This is the page'),
      ),
    );
  }
}