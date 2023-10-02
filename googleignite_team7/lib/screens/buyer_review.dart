import 'package:flutter/material.dart';
import 'package:googleignite_team7/widgets/MyFilledButton.dart';

class BuyerReview extends StatelessWidget {
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
            children: [buildTop(context), buildBottom(context)],
          ),
        ],
      ),
    );
  }
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
                  right: 118,
                  left: 10,
                ),
                child: BackButton(
                  color: Colors.black,
                ),
              ),
              Text(
                "Review",
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
  int _currentIndex = 2;

  List<String> items = [
    'Eggs',
    'Banana',
    'Ginger',
  ]; // Add some sample items
  Map<String, int> quantities = {
    'Eggs': 2,
    'Banana': 3,
    'Ginger': 4,
  };

  Map<String, double> prices = {
    'Eggs': 2,
    'Banana': 1.99,
    'Ginger': 2.99,
  };

  List<String> images = [
    'assets/images/eggs.png',
    'assets/images/banana.png',
    'assets/images/ginger.png',
  ];

  double subtotal = 0;
  for (int i = 0; i < items.length; i++) {
    subtotal += prices[items[i]]! * quantities[items[i]]!;
  }

  return Stack(
    children: [
      Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height - 150,
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
                              Text(
                                "Quantity: " + '${quantities[items[index]]}',
                                style: TextStyle(fontSize: 16),
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
                  ],
                ),
              ),
            );
          },
        ),
      ),
      Positioned(
        bottom: 100,
        child: Container(
          padding: EdgeInsets.all(0),
          height: 50,
          width: MediaQuery.of(context).size.width,
          color: Colors.grey[300],
          child: Center(
            child: Text(
              "Delivery Method: Delivery by Truck \nSubTotal: \$" + "${subtotal}",
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
      SizedBox(height: 16),
      Positioned(
        bottom: 30,
        left: 16,
        right: 16,
        child: MyFilledButton(
          borderColor: Colors.black,
          label: "Pay Now",
          onPressed: () {
            // Implement checkout logic here
            Navigator.pushNamed(context, '');
          },
          fillColor: Colors.black,
          fontColor: Colors.white,
        ),
      ),
    ],
  );
}
