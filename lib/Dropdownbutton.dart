// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyDropdownListView(),
    );
  }
}

class MyDropdownListView extends StatefulWidget {
  const MyDropdownListView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyDropdownListViewState createState() => _MyDropdownListViewState();
}

class _MyDropdownListViewState extends State<MyDropdownListView> {
  List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];
  String selectedValue = 'Item 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dropdown with ListView'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<String>(
              value: selectedValue,
              onChanged: (String? newValue) {
                setState(() {
                  selectedValue = newValue!;
                });
              },
              items: items.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(items[index]),
                    // Add any other list item customization as needed
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
