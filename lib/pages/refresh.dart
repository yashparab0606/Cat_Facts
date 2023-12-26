

import 'package:flutter/material.dart';

class Refresh extends StatefulWidget {
  const Refresh({super.key});

  @override
  _RefreshState createState() => _RefreshState();
}

class _RefreshState extends State<Refresh> {
  List<String> items = List.generate(10, (index) => "Item $index");

  Future<void> _refreshData() async {
    // Simulate a delay (you can replace this with actual data fetching).
    await Future.delayed(Duration(seconds: 2));

    setState(() {
      // Replace this with code to refresh your data.
      items = List.generate(10, (index) => "Refreshed Item $index");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pull to Refresh Example"),
      ),
      body: RefreshIndicator(
        onRefresh: _refreshData,
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
            );
          },
        ),
      ),
    );
  }
}
