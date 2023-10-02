import 'package:flutter/material.dart';
import 'package:googleignite_team7/widgets/MyFilledButton.dart';

class payment_successful extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // potentially add other widgets here
            buildBanner(context),
            buildBottom(context),
            buildButton(context),
          ],
        ),
      ),
    );
  }

  Widget buildBanner(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.3,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Order Successful',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w700,
                height: 1.5,
              ),
            ),
            SizedBox(width: 48),
          ],
        ),
      ),
    );
  }

  Widget buildText1(BuildContext context) {
    return Center(
      child: Text(
        'Thank You for placing the order with us.',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 1),
          fontFamily: 'DM Sans',
          fontSize: 18,
          letterSpacing: 0,
          fontWeight: FontWeight.normal,
          height: 1,
        ),
      ),
    );
  }

  Widget buildtick(BuildContext context) {
    return Center(
      child: Container(
        width: 124,
        height: 132,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/paymenttick.png'),
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }

  Widget buildText2(BuildContext context) {
    return Center(
      child: Text(
        'Estimated Delivery Time: 2 Hours',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 1),
          fontFamily: 'DM Sans',
          fontSize: 18,
          letterSpacing: 0,
          fontWeight: FontWeight.normal,
          height: 1,
        ),
      ),
    );
  }

  Widget buildBottom(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Color(0xFFF7F7F7),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildtick(context),
            SizedBox(height: 8),
            buildText1(context),
            SizedBox(height: 8),
            buildText2(context),
          ],
        ),
      ),
    );
  }

  Widget buildButton(BuildContext context) {
    return Center(
      child: Container(
        width: 326,
        height: 63,
        decoration: ShapeDecoration(
          color: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        child: Center(
          child: SizedBox(
            width: 225,
            height: 54,
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/buyer_transaction_page');
              },
              child: const Text(
                'Done',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
