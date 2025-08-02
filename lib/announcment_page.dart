import 'package:flutter/material.dart';

class AnnouncementsPage extends StatelessWidget {
  final List<String> messages = [
    "🎉 Congrats to the top 3 fundraisers!",
    "📢 Next milestone: ₹10,000 donations",
    "🔥 Keep referring to unlock exclusive gifts!",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Announcements")),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: messages.map((msg) => Card(
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Text(msg),
          ),
        )).toList(),
      ),
    );
  }
}
