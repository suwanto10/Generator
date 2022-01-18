import 'package:flutter/material.dart';
import 'package:newlogin/models/product.dart';
import 'package:newlogin/screen/Dashboard/components/search_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<Product> products;
  String query = '';
  @override
  void initState() {
    super.initState();

    products = demoProducts;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(
          children: <Widget>[
            buildSearch(),
            Expanded(
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return buildProduct(product);
                },
              ),
            ),
          ],
        ),
      );

  Widget buildSearch() => SearchWidget(
        text: query,
        hintText: 'Search Products',
        onChanged: searchProduct,
      );

  Widget buildProduct(Product product) => ListTile(
        leading: Image.asset(
          "assets/images/domar_app.png",
          fit: BoxFit.cover,
          width: 50,
          height: 50,
        ),
        title: Text(product.title),
      );

  void searchProduct(String query) {
    final products = demoProducts.where((product) {
      final titleLower = product.title.toLowerCase();
      final searchLower = query.toLowerCase();

      return titleLower.contains(searchLower);
    }).toList();

    setState(() {
      this.query = query;
      this.products = products;
    });
  }
}
