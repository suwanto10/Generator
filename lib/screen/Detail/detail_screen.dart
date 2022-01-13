import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newlogin/models/product.dart';
import 'package:newlogin/screen/Detail/components/body.dart';

class DetailScreen extends StatelessWidget {
  final Product product;
  const DetailScreen({
    Key key,
    this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blueAccent,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/search.svg"),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
          ),
          onPressed: () {},
        ),
        const SizedBox(
          width: 20 / 2,
        )
      ],
    );
  }
}
