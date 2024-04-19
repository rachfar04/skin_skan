import 'package:flutter/material.dart';

class ScanLesionPage extends StatelessWidget {
  final String title;

  const ScanLesionPage({
    Key? key, 
    required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scan Lesion'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,  // This should be within Column
            children: <Widget>[
              SizedBox(height: 8), // Add some spacing between the buttons
              SizedBox(
                width: double.infinity, // Makes the button full width
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/camera');  // Make sure the route is defined in your MaterialApp routes  
                  }, 
                  child: Text('Take photo'),
                ),
              ),
              SizedBox(height: 8), // Add some spacing between the buttons
              SizedBox(
                width: double.infinity, // Makes the button full width
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/gallery');  // Make sure the route is defined in your MaterialApp routes
                  },
                  child: Text('Choose from gallery'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
