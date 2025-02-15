import 'package:flutter/material.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Text(
          'dwellio',
          textAlign: TextAlign.left,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 20,
              fontStyle: FontStyle.italic),
        ),
        SizedBox(
          height: 50,
        ),
        Text(
            'Please provide the information of the place you would like to search for!!',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 20,
            )),
        SizedBox(
          height: 30,
        ),
        SizedBox(
          width: 300,
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                hintText: 'District'),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        SizedBox(
          width: 300,
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                hintText: 'City'),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        SizedBox(
          width: 300,
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                hintText: 'Pincode'),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        SizedBox(
          width: 300,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black, foregroundColor: Colors.white),
            onPressed: () {},
            child: const Text('Continue'),
          ),
        ),
      ],
    ));
  }
}
