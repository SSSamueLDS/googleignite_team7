import 'package:flutter/material.dart';
import 'package:googleignite_team7/widgets/MyFilledButton.dart';

class BuyerCart extends StatefulWidget {
  @override
  _BuyerCartState createState() => _BuyerCartState();
}

class _BuyerCartState extends State<BuyerCart> {
  int _currentIndex = 2;

  List<String> items = [
    'Red Bell Pepper',
    'Eggs',
    'Banana',
    'Ginger',
  ]; // Add some sample items
  Map<String, int> quantities = {
    'Red Bell Pepper': 1,
    'Eggs': 2,
    'Banana': 3,
    'Ginger': 4,
  };

  Map<String, double> prices = {
    'Red Bell Pepper': 3.99,
    'Eggs': 2,
    'Banana': 1.99,
    'Ginger': 2.99,
  }; // Add some sample items

  List<String> images = [
    'assets/images/redbellpepper.png',
    'assets/images/eggs.png',
    'assets/images/banana.png',
    'assets/images/ginger.png',
  ];

  void addItem(String item) {
    setState(() {
      if (items.contains(item)) {
        if (quantities[item] != null) {
          quantities[item] = (quantities[item] ?? 0) + 1;
        }
      } else {
        items.add(item);
        images.add('assets/images/$item.png');
        quantities[item] = 1;
      }
    });
  }

  void removeItem(int index) {
    setState(() {
      items.removeAt(index);
      images.removeAt(index);
    });
  }

  void incrementQuantity(String item) {
    setState(() {
      quantities[item] = (quantities[item] ?? 0) + 1;
    });
  }

  void decrementQuantity(String item) {
    setState(() {
      if (quantities[item]! > 1) {
        quantities[item] =
            (quantities[item] ?? 0) - 1; // Decrement the quantity by 1
      } else {
        // If quantity is 1 or less, remove the item
        int itemIndex = items.indexOf(item);
        if (itemIndex >= 0) {
          items.removeAt(itemIndex);
          images.removeAt(itemIndex);
          quantities.remove(item);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              buildTop(context),
              buildBottom(context),
              buildNavbar(context),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildTop(BuildContext context) => Container(
        margin: const EdgeInsets.only(top: 30),
        height: 120,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 110,
                    left: 10,
                  ),
                  child: BackButton(
                    color: Colors.black,
                  ),
                ),
                Text(
                  "My Cart",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      );

  Widget buildBottom(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height - 240,
          width: double.infinity,
          child: ListView.builder(
            padding: EdgeInsets.all(0),
            itemCount: items.length, // Specify the number of items in the list
            itemBuilder: (context, index) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image.asset(
                        images[index],
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              items[index],
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                IconButton(
                                  icon: Icon(Icons.remove),
                                  onPressed: () {
                                    decrementQuantity(items[index]);
                                  },
                                ),
                                Text(
                                  '${quantities[items[index]]}',
                                  style: TextStyle(fontSize: 16),
                                ),
                                IconButton(
                                  icon: Icon(Icons.add),
                                  onPressed: () {
                                    incrementQuantity(items[index]);
                                  },
                                ),
                              ],
                            ),
                            Text(
                              "Price: " +
                                  '\$${(prices[items[index]]! * quantities[items[index]]!).toStringAsFixed(2)}',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.remove_circle_outline),
                        onPressed: () {
                          removeItem(index);
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        Positioned(
          bottom: 16,
          left: 16,
          right: 16,
          child: MyFilledButton(
            borderColor: Colors.black,
            label: "Checkout",
            onPressed: () {
              // Implement checkout logic here
              Navigator.pushNamed(context, '/buyer_review');
            },
            fillColor: Colors.black,
            fontColor: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget buildNavbar(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          // for changing of pages
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/buyer_explore');
              break;
            case 1:
              Navigator.pushNamed(context, '/buyer_select');
              break;
            case 2:
              Navigator.pushNamed(context, '/buyer_cart');
              break;
            case 3:
              break;
            case 4:
              Navigator.pushNamed(context, '/buyer_account');
              break;
          }
        },
        elevation: 8.0,
        selectedItemColor: Color.fromRGBO(0, 107, 60, 1),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_module),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account")
        ],
      );
  }
}
