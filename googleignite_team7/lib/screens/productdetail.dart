import 'package:flutter/material.dart';
import 'package:googleignite_team7/widgets/MyFilledButton.dart';

class ProductDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Stack(
              children: [
                Container(
                  color: Colors.white,
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 40),
                      Expanded(
                        child: Container(
                          width: 200,
                          height: 200,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage("assets/images/redpepperbig.png"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.white,
              width: double.infinity,
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                      children: [
                        ListTile(
                          title: Text(
                            "Red Bell Pepper",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(Icons.favorite_border_outlined),
                          subtitle: Text("1kg, Price"),
                        ),
                        ListTile(
                          title: Row(
                            children: [
                              IconButton(
                                icon: Icon(Icons.remove),
                                onPressed: () {
                                  // decrementQuantity(items[index]);
                                },
                              ),
                              Text(
                                '1',
                                style: TextStyle(fontSize: 16),
                              ),
                              IconButton(
                                icon: Icon(Icons.add),
                                onPressed: () {
                                  // incrementQuantity(items[index]);
                                },
                              ),
                            ],
                          ),
                          trailing: Text(
                            "\$4.99",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        const ListTile(
                          title: Text(
                            "Product Details",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.0),
                          ),
                        ),
                        const ListTile(
                          title: Text(
                            "A red bell pepper is a vibrant, sweet-tasting vegetable known for its brilliant red color and distinctive bell shape. Red bell peppers are rich in vitamins, particularly vitamin C, and provide a satisfying crunch and sweet flavor to culinary creations.",
                            style: TextStyle(fontSize: 14.0),
                          ),
                        ),
                        const Divider(
                          color: Color.fromRGBO(190, 190, 190,
                              1), // You can customize the color of the divider
                          thickness:
                              1.0, // You can adjust the thickness of the divider
                        ),
                        ListTile(
                          title: Text(
                            "Nutrition",
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                          trailing: Text("100gr"),
                        ),
                        const Divider(
                          color: Color.fromRGBO(190, 190, 190,
                              1), // You can customize the color of the divider
                          thickness:
                              1.0, // You can adjust the thickness of the divider
                        ),
                        ListTile(
                          title: Text(
                            "Review",
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                          trailing: Image.asset("assets/images/rating.png"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(25.0),
                    child: MyFilledButton(
                      label: "Add to Cart",
                      fontColor: Colors.white,
                      fillColor: Colors.black,
                      borderColor: Colors.transparent,
                      onPressed: () {
                        // Handle button press
                        Navigator.pushNamed(context, "/buyer_select");
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}