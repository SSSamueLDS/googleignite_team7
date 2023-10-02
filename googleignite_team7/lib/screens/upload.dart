import 'package:flutter/material.dart';
import 'package:googleignite_team7/widgets/MyFilledButton.dart';

class Upload extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
          )),
        ),
        Column(
          children: [buildTop(context), buildBottom(context)],
        ),
      ]),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BackButton(
                color: Colors.black,
              ),
              Text(
                "Upload New Product",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
        ],
      ));

  Widget buildBottom(BuildContext context) => Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height - 150,
        width: double.infinity,
        child: Column(children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 16.0),
              child: Text(
                "Upload Picture",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "DM Sans",
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 8.0, left: 16.0, bottom: 16.0),
              child: Text(
                "This picture will be shown when listed on buyer's page",
                style: TextStyle(
                  fontFamily: "DM Sans",
                ),
              ),
            ),
          ),
          Card(
            color: Colors.grey[100],
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(
                color: Colors.black,
                width: 1,
                style: BorderStyle.solid,
              ),
            ),
            child: InkWell(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 18, horizontal: 25),
                width: MediaQuery.of(context).size.width * .70,
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Upload Picture',
                      style: TextStyle(fontSize: 17.0, color: Colors.grey[600]),
                    ),
                    Icon(
                      Icons.photo_camera,
                      color: Colors.grey[700],
                    )
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 32.0, left: 16.0, bottom: 0),
              child: Text(
                "Product Information",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "DM Sans",
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Name of Product',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Description',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Available Quantity',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Select Metrics (e.g. kg, g, lbs, etc.)',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Expiry Date',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Open to?',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: MyFilledButton(
                label: "Save",
                onPressed: () {
                  Navigator.pushNamed(context, '/farmersearchlisting');
                },
                fillColor: Colors.black,
                borderColor: Colors.black,
                fontColor: Colors.white),
          )
        ]),
      );
}
