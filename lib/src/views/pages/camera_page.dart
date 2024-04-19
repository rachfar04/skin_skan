import 'package:flutter/material.dart';

class CameraPage extends StatelessWidget {
  final String title;

  const CameraPage({
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
            mainAxisSize: MainAxisSize.min,  // Controls the size of the column
            children: <Widget>[
              Container(
                width: double.infinity,  // Makes the container full width
                height: 300,  // Fixed height for the image placeholder
                decoration: BoxDecoration(
                  color: Colors.grey[300],  // Light grey color for the placeholder
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Icon(
                  Icons.camera_alt,  // Icon to suggest that this is the place for an image
                  size: 50,
                  color: Colors.grey[700],
                ),
                alignment: Alignment.center,
              ),
              SizedBox(height: 20),  // Spacing between the image placeholder and the button
              SizedBox(
                width: double.infinity,  // Makes the button full width
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/results');  // Make sure the route is defined in your MaterialApp routes
                  },
                  child: Text('Go to Results'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 12),  // Adds vertical padding
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
