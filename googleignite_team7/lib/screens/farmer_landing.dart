import 'package:flutter/material.dart';
import 'package:googleignite_team7/widgets/MyFilledButton.dart';

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
          height: 10,
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
class FarmerLanding extends StatefulWidget {
  @override
  _FarmerLandingState createState() => _FarmerLandingState();
}

class _FarmerLandingState extends State<FarmerLanding> {
  final TextEditingController _searchController = TextEditingController();
  int _currentIndex = 0;

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
                      SizedBox(height: 40),
                      Image.asset(
                        'assets/images/logo_without_text.png',
                      ),
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
                                color: Colors
                                    .green, // Replace Colors.blue with your desired color
                                width:
                                    2.0, // You can adjust the width of the border
                              ),
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
          // Expanded(
          //   child: SearchResults(),
          // ),
          Expanded(
            flex: 2,
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
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/farmer_landing');
              break;
            case 1:
              Navigator.pushNamed(context, '/farmer_orders');
              break;
            case 2:
              Navigator.pushNamed(context, '/farmer_account');
              break;    
          }
        },
        elevation: 8.0, // Add elevation here
        selectedItemColor:
            Color.fromRGBO(0, 107, 60, 1), // Set the selected tab text color
        unselectedItemColor: Colors.grey, // Set the unselected tab text color
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
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
        Align(
          alignment: Alignment.topRight,
          child: FloatingActionButton.small(
            onPressed: () {
              Navigator.pushNamed(context, '/upload');
            },
            backgroundColor: Color.fromRGBO(0, 107, 60, 1),
            child: const Icon(Icons.add),
          ),
        ),
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
                              color: const Color.fromRGBO(240, 240, 240, 1),
                            ),
                            child: Image.asset(
                              'assets/images/basmati_white.jpg', // Replace with your image path
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
