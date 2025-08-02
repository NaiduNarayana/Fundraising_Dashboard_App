import 'package:flutter/material.dart';

class LeaderboardPage extends StatelessWidget {
  final List<Map<String, dynamic>> leaders = [
    {"name": "Anita", "score": 8000},
    {"name": "Ravi", "score": 7000},
    {"name": "Lakshmi", "score": 5000},
    {"name": "John", "score": 4000},
    {"name": "Meena", "score": 3500},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Leaderboard")),
      body: ListView.builder(
        itemCount: leaders.length,
        itemBuilder: (context, index) {
          final leader = leaders[index];
          return ListTile(
            leading: CircleAvatar(child: Text('${index + 1}')),
            title: Text(leader['name']),
            trailing: Text("₹${leader['score']}"),
          );
        },
      ),
    );
  }
}
