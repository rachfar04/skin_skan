import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  final String title;

  const GalleryPage({
    Key? key, 
    required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5, // Creates a grid with 5 columns
                  crossAxisSpacing: 4.0, // Spacing between the columns
                  mainAxisSpacing: 4.0, // Spacing between the rows
                ),
                itemCount: 25, // Creates 25 placeholders (5x5)
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300], // Light grey color for the placeholder
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Icon(
                      Icons.image, // Icon to represent images
                      color: Colors.grey[700],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 16), // Space between the grid and the button
            SizedBox(
              width: double.infinity, // Makes the button full width
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/results'); // Navigation to the Results Page
                },
                child: Text('Go to Results'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
