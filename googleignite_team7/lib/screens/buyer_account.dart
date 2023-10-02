import 'package:flutter/material.dart';
import 'package:googleignite_team7/widgets/MyFilledButton.dart';

class BuyerAccount extends StatefulWidget {
  @override
  _BuyerAccountState createState() => _BuyerAccountState();
}

class _BuyerAccountState extends State<BuyerAccount> {
  int _currentIndex = 4;

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
                const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 30),
                      Text(
                        "Seth King",
                        style: TextStyle(
                            fontSize: 24.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: ListMenuOptions(),
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
      ),
    );
  }
}

class ListMenuOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const ListTile(
          title: Text(
            "My Account",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
          ),
        ),
        const ListTile(
          title: Text(
            "Profile Information",
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        const Divider(
          color: Color.fromRGBO(
              190, 190, 190, 1), // You can customize the color of the divider
          thickness: 1.0, // You can adjust the thickness of the divider
        ),
        const ListTile(
          title: Text(
            "My Subscription",
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        const Divider(
          color: Color.fromRGBO(
              190, 190, 190, 1), // You can customize the color of the divider
          thickness: 1.0, // You can adjust the thickness of the divider
        ),
        const ListTile(
          title: Text(
            "Payment Methods",
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        const ListTile(
          title: Text(
            "General",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
          ),
        ),
        const ListTile(
          title: Text(
            "Help Centre",
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        const Divider(
          color: Color.fromRGBO(
              190, 190, 190, 1), // You can customize the color of the divider
          thickness: 1.0, // You can adjust the thickness of the divider
        ),
        const ListTile(
          title: Text(
            "Settings",
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        const Divider(
          color: Color.fromRGBO(
              190, 190, 190, 1), // You can customize the color of the divider
          thickness: 1.0, // You can adjust the thickness of the divider
        ),
        const ListTile(
          title: Text(
            "Languages",
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        const Divider(
          color: Color.fromRGBO(
              190, 190, 190, 1), // You can customize the color of the divider
          thickness: 1.0, // You can adjust the thickness of the divider
        ),
        const ListTile(
          title: Text(
            "Share Feedback",
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
          child: MyFilledButton(
            label: "Logout",
            onPressed: () {
              Navigator.pushNamed(context, '/register_or_login');
            },
            fillColor: Colors.black,
            borderColor: Colors.transparent,
            fontColor: Colors.white,
          ),
        )
      ],
    );
  }
}
