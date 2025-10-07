import 'package:flutter/material.dart';
import 'home.dart';


//Class which has the list of places to visit
class List_Screen extends StatelessWidget {
  final List<String> Places = [
    'Ahmedabad',
    'Gandhinagar',
    'Dwarka',
    'Somnath',
    'Rann of Kutch',
    'Gir-Junagadh',
    'Surat',
    'Vadodara',
    'Changa',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView Screen')),

      body: ListView.builder(
        itemCount: Places.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(child: Text(Places[index][0])),
              title: Text(Places[index]),
              subtitle: Text('Kuch din toh guzaro Gujarat mein! ${index + 1}'),
              trailing: Icon(Icons.travel_explore, color: const Color.fromARGB(255, 107, 169, 255)),
            ),
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        tooltip: 'Go back to main page',
        child: Icon(Icons.arrow_back),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
