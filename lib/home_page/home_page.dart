import 'package:flutter/material.dart';
import 'package:flutter_grocery_ui/data/data.dart';
import 'package:flutter_grocery_ui/widget/card_builder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: const Icon(Icons.menu, color: Colors.black),
        title: const Text("Fruit & Vegetable Shop",
            style: TextStyle(color: Colors.black)),
        centerTitle: true,
        actions: [
          Row(
            children: [
              const Icon(Icons.search, color: Colors.black),
              Stack(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.shopping_cart, color: Colors.black),
                  ),
                  Positioned(
                    right: 4,
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                          color: Colors.red, shape: BoxShape.circle),
                      child: const Center(
                          child: Text(
                        "2",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: allData.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.6,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return CardBuilder(product: allData[index]);
          },
        ),
      ),
    );
  }
}
