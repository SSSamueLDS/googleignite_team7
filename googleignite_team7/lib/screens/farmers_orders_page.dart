import 'package:flutter/material.dart';


class FarmerOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _BannerNavigation(),
            _SimpleTopNav(),
            _Orders(),
            _Orders(),
            _Orders(),
            _Orders(),
            // Other widgets
          ],
        ),
      ),
      bottomNavigationBar: _BottomNav(),
    );
  }
}



class _BannerNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity, // Set width to occupy the entire screen width
          height: MediaQuery.of(context).size.height * 0.3, // Adjust height as needed
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.cover, // Cover the entire container
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  // Add your back button logic here
                  Navigator.pop(context); // Example of popping the current screen
                },
              ),
              Text(
                'My Orders',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w700,
                  height: 1.5, // Adjust the height as needed
                ),
              ),
              SizedBox(width: 48), // Add spacing between back button and text
            ],
          ),
        ),
      ],
    );
  }
}

class _SimpleTopNav extends StatefulWidget {
  @override
  _SimpleTopNavState createState() => _SimpleTopNavState();
}

class _SimpleTopNavState extends State<_SimpleTopNav> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final items = ['All', 'Pending', 'Accepted', 'Preparing', 'Delivered', 'Cancelled'];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(items.length, (index) {
          final item = items[index];
          final isActive = index == selectedIndex;

          return InkWell(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });

              // Handle the click, e.g., navigate to the corresponding page
              Navigator.pushNamed(context, '/404');
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 3, // Width of the bottom border
                    color: isActive ? Color(0xFF006B3C) : Colors.transparent, // Green bottom border when active
                  ),
                ),
              ),
              child: Text(
                item,
                style: TextStyle(
                  color: isActive ? Color(0xFF006B3C) : Color(0xFFADADAD), // Text color when active
                  fontSize: 14,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

class _Orders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle the click on the whole box, e.g., navigate to the order details page
        Navigator.pushNamed(context, '/404');
      },
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 1.0,
              color: Colors.grey, // Add a bottom border
            ),
          ),
        ),
        child: Row(
          children: [
            // Image on the left
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.blue, // Example background color for the image
                borderRadius: BorderRadius.circular(25.0),
                // You can use an actual image here
              ),
              // You can replace this with your image widget
              child: Icon(Icons.image, color: Colors.white),
            ),
            SizedBox(width: 16.0), // Add spacing between image and text
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text aligned left next to the image
                  Text(
                    'Order #12345',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Total: \$50.00',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            // Small arrow to the right
            GestureDetector(
              onTap: () {
                // Handle the click on the arrow, e.g., navigate to order details
                Navigator.pushNamed(context, '/404');
              },
              child: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}



















class _BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<_BottomNav> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      elevation: 8.0,
      selectedItemColor: Color.fromRGBO(0, 107, 60, 1),
      unselectedItemColor: Colors.grey,
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
    );
  }
}




