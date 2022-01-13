import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Column(
          children: <Widget>[
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text(
                  "Ini Gambar Gambarr",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const <Widget>[
                Text(
                  "Ini nama produk",
                ),
                Text("Ini Harga")
              ],
            ),
            Row(
              children: const <Widget>[
                Text(
                  "Deskripsi Singkat",
                ),
              ],
            ),
            Row(
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Add Cart",
                  ),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
