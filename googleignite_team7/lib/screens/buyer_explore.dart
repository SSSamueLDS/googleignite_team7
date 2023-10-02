import 'package:flutter/material.dart';

<<<<<<< Updated upstream
class BuyerExplore extends StatefulWidget {
  @override
  _BuyerExplore createState() => _BuyerExplore();
=======
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Debugging'),
      ),
      body: BuyerExploreBuild(),
    ),
  ));
}

class BuyerExploreBuild extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();

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
              SizedBox(height: 40),
              _buildLogo(context),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Search...',
                    suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () => _searchController.clear(),
                    ),
                    prefixIcon: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        // Perform the search here
                      },
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: const BorderSide(
                        color: Colors.green, // Replace Colors.blue with your desired color
                        width: 2.0, // You can adjust the width of the border
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    Expanded(
                      child: BuyerExplores(),
                    )
                  ],
              ))
            ],
          ),
        ]),
      ),
    );
  }
>>>>>>> Stashed changes
}

class _BuyerExplore extends State<BuyerExplore> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
<<<<<<< Updated upstream
          Expanded(
            flex: 1,
            child: Stack(
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
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 30),
                      Image.asset(
                        'assets/images/logo_without_text.png',
                      ),
                      FloatingActionButton.small(
                        onPressed: () {},
                        backgroundColor: Color.fromRGBO(0, 107, 60, 1),
                        child: const Icon(Icons.add),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
=======
          // Expanded(
          //   child: SearchResults(),
          // ),
>>>>>>> Stashed changes
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: HorizontalScrollExample(
                horizontalHeaderText: 'Category',
                verticalHeaderText: 'All Listings',
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        elevation: 8.0, // Add elevation here
        selectedItemColor: Color.fromRGBO(0, 107, 60, 1), // Set the selected tab text color
        unselectedItemColor: Colors.grey, // Set the unselected tab text color
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_module),
            label: 'Listings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_shipping),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class HorizontalScrollExample extends StatelessWidget {
  final String horizontalHeaderText;
  final String verticalHeaderText;

  HorizontalScrollExample({
    required this.horizontalHeaderText,
    required this.verticalHeaderText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            horizontalHeaderText,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: 150, // Adjust the height as needed
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: const Color.fromRGBO(240, 240, 240, 1),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/rice.png', // Replace with your image path
                        height: 60, // Adjust the image height as needed
                        width: 60, // Adjust the image width as needed
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Rice',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: const Color.fromRGBO(240, 240, 240, 1),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/millet.png', // Replace with your image path
                        height: 60, // Adjust the image height as needed
                        width: 60, // Adjust the image width as needed
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Millet',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: const Color.fromRGBO(240, 240, 240, 1),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/pulses.png', // Replace with your image path
                        height: 60, // Adjust the image height as needed
                        width: 60, // Adjust the image width as needed
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Pulses',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: const Color.fromRGBO(240, 240, 240, 1),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/sugarcane.png', // Replace with your image path
                        height: 60, // Adjust the image height as needed
                        width: 60, // Adjust the image width as needed
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Sugarcane',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
              ),
              // Add more items as needed
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            verticalHeaderText,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              child: GridView(
                  padding: const EdgeInsets.all(8.0), // Add padding here
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                  ),
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        // color: Colors.orange,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 100, // Adjust the height as needed
                            width:
                                double.infinity, // Adjust the width as needed
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Image.asset(
<<<<<<< Updated upstream
                              'assets/images/basmati_white.jpg', // Replace with your image path
=======
                              'assets/images/exploreimg1.png', // Replace with your image path
                              fit: BoxFit.contain,
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
                            ),
                            child: Image.asset(
                              'assets/images/exploreimg2.png', // Replace with your image path
                              fit: BoxFit.contain,
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
                            ),
                            child: Image.asset(
                              'assets/images/exploreimg3.png', // Replace with your image path
                              fit: BoxFit.contain,
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
                            ),
                            child: Image.asset(
                              'assets/images/exploreimg5.png', // Replace with your image path
                              fit: BoxFit.contain,
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
                            ),
                            child: Image.asset(
                              'assets/images/exploreimg4.png', // Replace with your image path
                              fit: BoxFit.contain,
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
                            ),
                            child: Image.asset(
                              'assets/images/exploreimg6.png', // Replace with your image path
>>>>>>> Stashed changes
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Basmati Rice',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.0),
                            ),
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '1000kg available',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Color.fromRGBO(151, 152, 159, 1)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        // color: Colors.orange,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 100, // Adjust the height as needed
                            width:
                                double.infinity, // Adjust the width as needed
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: const Color.fromRGBO(240, 240, 240, 1),
                            ),
                            child: Image.asset(
                              'assets/images/brown_rice.png', // Replace with your image path
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Brown Rice',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.0),
                            ),
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '1000kg available',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Color.fromRGBO(151, 152, 159, 1)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        // color: Colors.orange,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 100, // Adjust the height as needed
                            width:
                                double.infinity, // Adjust the width as needed
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: const Color.fromRGBO(240, 240, 240, 1),
                            ),
                            child: Image.asset(
                              'assets/images/jasmine_white_rice.jpg', // Replace with your image path
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Jasmine White Rice',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.0),
                            ),
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '1000kg available',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Color.fromRGBO(151, 152, 159, 1)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        // color: Colors.orange,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 100, // Adjust the height as needed
                            width:
                                double.infinity, // Adjust the width as needed
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: const Color.fromRGBO(240, 240, 240, 1),
                            ),
                            child: Image.asset(
                              'assets/images/pearl_millet.jpg', // Replace with your image path
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Organic Pearl Millet',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.0),
                            ),
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '1000kg available',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Color.fromRGBO(151, 152, 159, 1)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        // color: Colors.orange,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 100, // Adjust the height as needed
                            width:
                                double.infinity, // Adjust the width as needed
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: const Color.fromRGBO(240, 240, 240, 1),
                            ),
                            child: Image.asset(
                              'assets/images/lentils.png', // Replace with your image path
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Lentils',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.0),
                            ),
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '500kg available',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Color.fromRGBO(151, 152, 159, 1)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        // color: Colors.orange,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 100, // Adjust the height as needed
                            width:
                                double.infinity, // Adjust the width as needed
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: const Color.fromRGBO(240, 240, 240, 1),
                            ),
                            child: Image.asset(
                              'assets/images/ground_peanuts.png', // Replace with your image path
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Ground Peanuts',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.0),
                            ),
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '1000kg available',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Color.fromRGBO(151, 152, 159, 1)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ],
    );
  }
}
