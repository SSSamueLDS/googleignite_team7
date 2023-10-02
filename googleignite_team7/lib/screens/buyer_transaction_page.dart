import 'package:flutter/material.dart';


class CheckoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // potentially add other widgets here
            _BannerNavigation(),
            CreditCardForm(), 
            _SimpleCheckBox(),
            _SaveCard(),
            _ToOrderReview(),
          ],
        ),
      ),
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
                'Checkout',
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

class CreditCardForm extends StatefulWidget {
  @override
  _CreditCardFormState createState() => _CreditCardFormState();
}

enum FormStatus { enabled, disabled }

class _CreditCardFormState extends State<CreditCardForm> {
  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController expiryDateController = TextEditingController();
  final TextEditingController cvvController = TextEditingController();
  final TextEditingController cardNameController = TextEditingController();
  FormStatus formStatus = FormStatus.disabled; // Track the form's enabled/disabled state

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Radio(
                value: FormStatus.enabled,
                groupValue: formStatus,
                onChanged: (value) {
                  setState(() {
                    formStatus = value as FormStatus;
                  });
                },
              ), // Label for the radio button
              SizedBox(width: 16), // Add spacing between radio button and label
              Text(
                'Credit Card Details',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          TextFormField(
            controller: cardNumberController,
            decoration: InputDecoration(
              labelText: 'Card Number',
              border: OutlineInputBorder(),
            ),
            enabled: formStatus == FormStatus.enabled, // Enable/disable the form based on the radio button state
          ),
          SizedBox(height: 16),
          TextFormField(
            controller: expiryDateController,
            decoration: InputDecoration(
              labelText: 'Expiry Date',
              border: OutlineInputBorder(),
            ),
            enabled: formStatus == FormStatus.enabled,
          ),
          SizedBox(height: 16),
          TextFormField(
            controller: cvvController,
            decoration: InputDecoration(
              labelText: 'CVV',
              border: OutlineInputBorder(),
            ),
            enabled: formStatus == FormStatus.enabled,
          ),
          SizedBox(height: 16),
          TextFormField(
            controller: cardNameController,
            decoration: InputDecoration(
              labelText: 'Name on Card',
              border: OutlineInputBorder(),
            ),
            enabled: formStatus == FormStatus.enabled,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    cardNumberController.dispose();
    expiryDateController.dispose();
    cvvController.dispose();
    super.dispose();
  }
}



class _SimpleCheckBox extends StatefulWidget {
  @override
  _SimpleCheckBoxState createState() => _SimpleCheckBoxState();
}

class _SimpleCheckBoxState extends State<_SimpleCheckBox> {
  bool selfPickup = false;
  bool delivery = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Span the whole width of the screen
      padding: EdgeInsets.all(16.0), // Add padding from the edges
      decoration: BoxDecoration(
        color: Color(0xFFF7F7F7), // Grey background color // Rounded corners
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Delivery Method',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Checkbox(
                value: selfPickup,
                onChanged: (value) {
                  setState(() {
                    selfPickup = value!;
                    if (value == true) {
                      // Handle self-pickup logic
                      delivery = false; // Uncheck the delivery checkbox if self-pickup is selected
                    }
                  });
                },
              ),
              Text(
                'Self pick up of items',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: delivery,
                onChanged: (value) {
                  setState(() {
                    delivery = value!;
                    if (value == true) {
                      // Handle delivery logic
                      selfPickup = false; // Uncheck the self-pickup checkbox if delivery is selected
                    }
                  });
                },
              ),
              Text(
                'Arrange for Delivery',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class _SaveCard extends StatefulWidget {
  @override
  _SaveCardState createState() => _SaveCardState();
}

class _SaveCardState extends State<_SaveCard> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.0),

      child: Center( child: Column(
        children: [
          Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Checkbox(
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: Text(
                    'Securely save card for quicker checkout. (One-Time Password may not be required for future transactions)',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: Text(
              'You will not be charged until you have reviewed and placed your order in the next step',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.black,
                fontSize: 10,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}





class _ToOrderReview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
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
              // print("Button pressed");
              Navigator.pushNamed(context, '/buyer_review');
            },
            child: const Text(
              'Continue to Order Review',
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
      ],
    );
  }
}

