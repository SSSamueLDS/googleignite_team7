// ignore_for_file: override_on_non_overriding_member

import 'package:flutter/material.dart';
import 'package:googleignite_team7/widgets/MyFilledButton.dart';

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
            children: [_buildLogo(context), Expanded(child: SearchResults())],
          ),
        ]),
      ),
    );
  }
}

  @override
  Widget _buildLogo(BuildContext context) {
    return Container(
      height: 200,
      margin: const EdgeInsets.only(top: 30),
      child: Image.asset(
        'assets/images/logo_without_text.png',
      ),
    );
  }

  @override
  Widget _buildSecondContainer(BuildContext context) {
    return Container(
      height: 100,
      width: 600,
      child: 
      SingleChildScrollView(
        child: SearchResults(),
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
      margin: EdgeInsets.only(top: 32.0, left: 32.0, right: 32.0, bottom: 50.0),
      child: SingleChildScrollView(
        padding: EdgeInsets.all(32.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
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
