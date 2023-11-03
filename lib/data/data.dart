class Product {
  final String name;
  final String price;
  final String quantity;
  final String image;
  final String description;

  Product(this.name, this.price, this.quantity, this.image, this.description);
}

final List<Product> allData = [
  Product("Lettuce", "5.000", "1 pcs", "assets/images/IMG_1.png",
      "Lettuce is a vegetable plant that is usually grown in temperate and tropical climates. Its main use is as a salad. Lettuce is used in a variety of dishes, including soups, sandwiches, and can even be grilled."),
  Product("Carrot", "10.000", "1 pcs", "assets/images/IMG_2.png",
      "Carrots are a vegetable that is quite popular and can be used in various dishes. Starting from drinks, cakes, salads, stir-fries, and many more."),
  Product("Tomato", "5.000", "1 pcs", "assets/images/IMG_3.png",
      "Tomatoes are a popular fruit and are often used in various dishes. Apart from providing a fresh and delicious taste, tomatoes are also rich in nutrients that are beneficial for health."),
  Product("Corn", "10.000", "1 pcs", "assets/images/IMG_4.png",
      "Corn is one of the most important carbohydrate-producing food crops in the world, apart from wheat and rice. For residents of Central and South America, ears of corn are the staple food, as for some residents of Africa and several regions in Indonesia."),
  Product("Broccoli", "15.000", "1 pcs", "assets/images/IMG_5.png",
      "Broccoli or green cabbage is a vegetable that comes from the cabbage family (Brassicaceae). Until now, broccoli is often an ingredient in various delicious dishes."),
  Product("Potato", "8.000", "1 pcs", "assets/images/IMG_6.png",
      "Potatoes are tuber plants belonging to the Solanaceae family. Meanwhile, potatoes are often a source of carbohydrates in various types of dishes."),
];
