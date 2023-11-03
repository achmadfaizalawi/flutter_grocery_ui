import 'package:flutter/material.dart';
import 'package:flutter_grocery_ui/data/data.dart';

class ProductDetailPage extends StatefulWidget {
  final Product product;

  const ProductDetailPage({super.key, required this.product});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int count = 1;
  bool isFavorite = false;

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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        shadowColor: Colors.green,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios, color: Colors.black)),
        title:
            const Text("Detail Product", style: TextStyle(color: Colors.black)),
        actions: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                  onTap: () {
                    isFavorite = !isFavorite;
                    setState(() {});
                  },
                  child: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: Colors.red)))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          Text(widget.product.name,
              style: const TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                  fontWeight: FontWeight.w700)),
          Center(
            child: Hero(
                tag: widget.product.image,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.45,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.product.image),
                          fit: BoxFit.contain)),
                )),
          ),
          Container(
            color: Colors.grey[200],
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Row(
              children: [
                Text(
                  'Rp ${widget.product.price}',
                  style: const TextStyle(
                      color: Colors.green,
                      fontSize: 30,
                      fontWeight: FontWeight.w800),
                ),
                Text(' /${widget.product.quantity}',
                    style: const TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                        fontWeight: FontWeight.w700)),
              ],
            ),
          ),
          Expanded(
              child: Container(
            color: Colors.grey[200],
            padding: const EdgeInsets.all(20),
            child: Text(
              widget.product.description,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.justify,
              overflow: TextOverflow.ellipsis,
              maxLines: 6,
            ),
          )),
          Container(
            height: 100,
            color: Colors.grey,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: removeCount,
                        child: const Icon(
                          Icons.remove_circle_outline,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(count.toString(),
                            style: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                                color: Colors.white)),
                      ),
                      InkWell(
                          onTap: addCount,
                          child: const Icon(
                            Icons.add_circle_outline,
                            size: 40,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  width: 190,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                      child: Text("Buy",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600))),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
