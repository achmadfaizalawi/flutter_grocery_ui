import 'package:flutter/material.dart';
import 'package:flutter_grocery_ui/data/data.dart';
import 'package:flutter_grocery_ui/product_detail_page/product_detail_page.dart';

class CardBuilder extends StatefulWidget {
  final Product product;

  const CardBuilder({super.key, required this.product});

  @override
  State<CardBuilder> createState() => _CardBuilderState();
}

class _CardBuilderState extends State<CardBuilder> {
  int count = 0;

  void addCount() {
    setState(() {});
    count++;
  }

  void removeCount() {
    if (count != 0) {
      setState(() {});
      count--;
    }
  }

  @override
  Widget build(context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return ProductDetailPage(product: widget.product);
          },
        ));
      },
      child: Card(
        elevation: 2,
        shadowColor: Colors.green,
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
                tag: widget.product.image,
                child: SizedBox(
                    height: 150, child: Image.asset(widget.product.image))),
            const SizedBox(height: 6),
            Text(
              'Rp ${widget.product.price}',
              style: const TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(widget.product.name,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
            const SizedBox(height: 3),
            Text(widget.product.quantity,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
            const SizedBox(height: 4),
            const Divider(
              height: 2,
              color: Colors.grey,
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {},
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.add_shopping_cart, color: Colors.green),
                        Text(
                          "Buy",
                          style: TextStyle(color: Colors.green, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: Row(
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(10),
                        onTap: removeCount,
                        child: const Icon(
                          Icons.remove_circle_outline,
                          size: 18,
                          color: Colors.green,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(count.toString(),
                            style: const TextStyle(fontSize: 16)),
                      ),
                      InkWell(
                        borderRadius: BorderRadius.circular(10),
                        onTap: addCount,
                        child: const Icon(
                          Icons.add_circle_outline,
                          size: 18,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
