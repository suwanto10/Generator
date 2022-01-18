import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:newlogin/screen/Dashboard/dashboard_screen.dart';
import 'package:newlogin/screen/cart/cart_screen.dart';

class CurvedNavbar extends StatelessWidget {
  const CurvedNavbar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      color: Colors.blueAccent,
      backgroundColor: Colors.transparent,
      buttonBackgroundColor: Colors.blueAccent,
      height: 50,
      items: [
        Icon(
          Icons.home,
          size: 20,
        ),
        Icon(
          Icons.add_shopping_cart_rounded,
          size: 20,
        ),
        Icon(
          Icons.account_circle_rounded,
          size: 20,
        )
      ],
      animationDuration: Duration(milliseconds: 200),
      animationCurve: Curves.bounceInOut,
      onTap: (index) {
        debugPrint("Current Index is $index");
        if (index == 0) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return DashboardScreen();
              },
            ),
          );
        }
        if (index == 1) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return CartScreen();
              },
            ),
          );
        }
        if (index == 2) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return CartScreen();
              },
            ),
          );
        }
      },
    );
  }
}
