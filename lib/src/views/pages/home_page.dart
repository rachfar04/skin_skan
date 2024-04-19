import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String title;

  const HomePage({
    Key? key, 
    required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),  // Use the passed title here if you need it
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,  // This should be within Column
            children: <Widget>[
              SizedBox(
                width: double.infinity, // Makes the button full width
                child: ElevatedButton(
                  onPressed: null,  // Disabled
                  child: Text('Profile'),
                ),
              ),
              SizedBox(height: 8), // Add some spacing between the buttons
              SizedBox(
                width: double.infinity, // Makes the button full width
                child: ElevatedButton(
                  onPressed: null,  // Disabled
                  child: Text('My Products'),
                ),
              ),
              SizedBox(height: 8), // Add some spacing between the buttons
              SizedBox(
                width: double.infinity, // Makes the button full width
                child: ElevatedButton(
                  onPressed: null,  // Disabled
                  child: Text('Lesion Mapping'),
                ),
              ),
              SizedBox(height: 8), // Add some spacing between the buttons
              SizedBox(
                width: double.infinity, // Makes the button full width
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/scanLesion');  // Make sure the route is defined in your MaterialApp routes
                  },
                  child: Text('Scan Lesion'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
