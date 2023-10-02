// ignore_for_file: override_on_non_overriding_member

import 'package:flutter/material.dart';
import 'package:googleignite_team7/screens/buyer_explore.dart';
import 'package:googleignite_team7/widgets/MyFilledButton.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Debugging'),
      ),
      body: BuyerLanding(),
    ),
  ));
}

class BuyerLanding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(children: [
          Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.cover,
            )),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildLogo(context),
              Expanded(
                  child: Stack(
                children: [
                  Expanded(
                    child: BuyerExplore(),
                  )
                ],
              ))
            ],
          ),
        ]),
      ),
    );
  }
}

@override
Widget _buildLogo(BuildContext context) {
  return Container(
    height: 100,
    margin: const EdgeInsets.only(top: 5),
    child: Image.asset(
      'assets/images/logo_without_text.png',
    ),
  );
}

class SearchResults extends StatefulWidget {
  @override
  _SearchResultsState createState() => _SearchResultsState();
}

class _SearchResultsState extends State<SearchResults> {
  bool filteredDataVisible = false;

  List<String> data = [
    'Apple',
    'Banana',
    'Cherry',
    'Date',
    'Grapes',
    'Lemon',
    'Orange',
    'Peach',
    'Pear',
    'Plum',
  ];

  List<String> filteredData = [];

  @override
  void initState() {
    super.initState();
  }

  void filterSearchResults(String query) {
    List<String> dummySearchList = <String>[];
    dummySearchList.addAll(data);
    if (query.isNotEmpty) {
      filteredData.addAll(data);
      List<String> dummyListData = <String>[];
      dummySearchList.forEach((item) {
        if (item.toLowerCase().contains(query.toLowerCase())) {
          dummyListData.add(item);
        }
      });
      setState(() {
        filteredData.clear();
        filteredData.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        filteredData.clear();
        filteredData.addAll(data);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.all(5),
      child: SingleChildScrollView(
        padding: EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: TextField(
                onChanged: (value) {
                  filterSearchResults(value);
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search Store',
                ),
              ),
            ),
            Container(
              height: 400,
              child: ListView.builder(
                itemCount: filteredData.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(filteredData[index]),
                    // You can add more details or customize ListTile as needed
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BuyerExplore extends StatefulWidget {
  @override
  _BuyerLand createState() => _BuyerLand();
}

class _BuyerLand extends State<BuyerLand> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SearchResults(),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: HorizontalScrollExample(
                verticalHeaderText: 'All Listings',
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
        // for changing of pages
        switch (index) {
          case 0:
            Navigator.pushNamed(context, '/buyer_landing');
            break;
          case 1:
            Navigator.pushNamed(context, '');
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
    ),
    );
  }
}

class HorizontalScrollExample extends StatelessWidget {
  final String verticalHeaderText;

  HorizontalScrollExample({
    required this.verticalHeaderText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 150,
              child: GridView(
                  padding: const EdgeInsets.all(5.0), // Add padding here
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                  ),
                  children: [
                    Container(
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        // color: Colors.orange,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 150, // Adjust the height as needed
                            width:
                                double.infinity, // Adjust the width as needed
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: const Color.fromRGBO(240, 240, 240, 1),
                            ),
                            child: Image.asset(
                              'assets/images/exploreimg1.png', // Replace with your image path
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Fresh Fruit and Vegetables',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        // color: Colors.orange,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 150, // Adjust the height as needed
                            width:
                                double.infinity, // Adjust the width as needed
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: const Color.fromRGBO(240, 240, 240, 1),
                            ),
                            child: Image.asset(
                              'assets/images/exploreimg2.png', // Replace with your image path
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Cooking Oil & Ghee',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        // color: Colors.orange,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 150, // Adjust the height as needed
                            width:
                                double.infinity, // Adjust the width as needed
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: const Color.fromRGBO(240, 240, 240, 1),
                            ),
                            child: Image.asset(
                              'assets/images/exploreimg3.png', // Replace with your image path
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Meat & Fish',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        // color: Colors.orange,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 150, // Adjust the height as needed
                            width:
                                double.infinity, // Adjust the width as needed
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: const Color.fromRGBO(240, 240, 240, 1),
                            ),
                            child: Image.asset(
                              'assets/images/exploreimg4.png', // Replace with your image path
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Bakery & Snacks',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        // color: Colors.orange,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 150, // Adjust the height as needed
                            width:
                                double.infinity, // Adjust the width as needed
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: const Color.fromRGBO(240, 240, 240, 1),
                            ),
                            child: Image.asset(
                              'assets/images/exploreimg5.png', // Replace with your image path
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Dairy & Eggs',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        // color: Colors.orange,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 150, // Adjust the height as needed
                            width:
                                double.infinity, // Adjust the width as needed
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: const Color.fromRGBO(240, 240, 240, 1),
                            ),
                            child: Image.asset(
                              'assets/images/exploreimg6.png', // Replace with your image path
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Beverages',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
        )
      ],
    );
  }
}
