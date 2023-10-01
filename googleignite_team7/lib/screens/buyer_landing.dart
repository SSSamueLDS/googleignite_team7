// ignore_for_file: override_on_non_overriding_member

import 'package:flutter/material.dart';
import 'package:googleignite_team7/widgets/MyFilledButton.dart';

class BuyerLanding extends StatelessWidget {
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
        SingleChildScrollView(
                  child: Column(
                  children: [
                    _buildLogo(context),  
                    _buildSearchBar(context),
                  ],
                  )
                ),
      ]),
    );
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
  Widget _buildSearchBar(BuildContext context) {
    bool searchText = true;
    return Form(
      child: Column(
        
        children: [
           TextFormField(
            
            obscureText: searchText,
            enableSuggestions: false,
            autocorrect: false,
            decoration: InputDecoration(
              prefixIcon: IconButton(
                onPressed: () {
                  searchText = !searchText;
                },
                icon: Icon(
                     Icons.search,
                  color: Colors.black,
                ),
              ),
              labelText: 'Search Store',
              labelStyle: TextStyle(
                color: Colors.grey,
              ),
              ),
            ),
        ],
          
      ),
      );
}
}