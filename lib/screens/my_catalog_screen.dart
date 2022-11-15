import 'package:flutter/material.dart';
import 'package:market/components/my_appbar.dart';

class MyCatalogScreen extends StatelessWidget {
  const MyCatalogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: ListView(
        children: [
          ListTile(
            leading: Container(
              width: 40,
              height: 20,
              color: Colors.blue,
            ),
            title: Text('\$42'),
            trailing: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/category");
                },
                child: Text("Add My Cart")),
          ),
          ListTile(
            leading: Container(
              width: 40,
              height: 20,
              color: Colors.red,
            ),
            title: Text('\$25'),
            trailing: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/category");
                },
                child: Text("Add My Cart")),
          ),
          ListTile(
            leading: Container(
              width: 40,
              height: 20,
              color: Colors.green,
            ),
            title: Text('\$40'),
            trailing: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/category");
                },
                child: Text("Add My Cart")),
          )
        ],
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/category");
            },
            icon: Icon(Icons.shopping_cart))
      ],
      backgroundColor: Color(0xff3860c4),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Container(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "Catalog",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
