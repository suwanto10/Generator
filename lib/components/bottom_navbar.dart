import 'package:flutter/material.dart';
import 'package:newlogin/screen/Dashboard/dashboard_screen.dart';
import 'package:newlogin/screen/cart/cart_screen.dart';
import '../constants.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPaddin * 2,
        right: kDefaultPaddin * 2,
        bottom: kDefaultPaddin,
      ),
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              offset: Offset(0, -10),
              blurRadius: 35,
              color: kPrimaryColor.withOpacity(0.38)),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DashboardScreen();
                  },
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(
              Icons.add_shopping_cart_outlined,
              size: 30,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return CartScreen();
                  },
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(
              Icons.account_circle_rounded,
              size: 30,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return CartScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
