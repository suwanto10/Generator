import 'package:flutter/material.dart';
import 'package:newlogin/details/details_screen.dart';
import 'package:newlogin/models/product.dart';
import 'package:newlogin/screen/Dashboard/components/item_card.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // children: <Widget>[Text("Selamat Anda Berhasil Login")],
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        const SizedBox(
          height: 8,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text("Top Product",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20.0,
                crossAxisSpacing: 20.0,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => ItemCard(
                product: products[index],
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                      product: products[index],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}