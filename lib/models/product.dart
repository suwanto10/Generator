class Product {
  final String image, title, description;
  final int price, id;
  Product({
    this.id,
    this.image,
    this.title,
    this.description,
    this.price,
  });
}

List<Product> demoProducts = [
  Product(
      id: 1,
      title: "Teh Poci",
      price: 1000,
      description: desc,
      image: "assets/images/domar_app.png"),
  Product(
      id: 2,
      title: "Es Balok",
      price: 14000,
      description: desc,
      image: "assets/images/domar_app.png"),
  Product(
      id: 3,
      title: "Layang-layang",
      price: 17000,
      description: desc,
      image: "assets/images/domar_app.png"),
  Product(
      id: 4,
      title: "Semut Transparan",
      price: 13000,
      description: desc,
      image: "assets/images/domar_app.png"),
  Product(
      id: 5,
      title: "Produk Apa Ini?",
      price: 11000,
      description: desc,
      image: "assets/images/domar_app.png"),
  Product(
      id: 6,
      title: "Kursi Transparan",
      price: 15000,
      description: desc,
      image: "assets/images/domar_app.png"),
  Product(
      id: 7,
      title: "Meja Transparan",
      price: 25000,
      description: desc,
      image: "assets/images/domar_app.png"),
];

String desc =
    "Ini adalah contoh deskripsi singkat dari produk yang sedang ditampilkan..Ini adalah contoh deskripsi singkat dari produk yang sedang ditampilkan..semoga hari anda menyenangkan";
