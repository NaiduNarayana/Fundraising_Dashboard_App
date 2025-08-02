import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  final String internName;

  DashboardPage({required this.internName});

  final String referralCodeSuffix = "2025";
  final int totalDonations = 5000;
  final List<String> rewards = ["Gift Card", "T-Shirt", "Badge"];

  @override
  Widget build(BuildContext context) {
    final String referralCode = "${internName.toLowerCase()}$referralCodeSuffix";

    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        actions: [
          IconButton(
            icon: Icon(Icons.leaderboard),
            onPressed: () => Navigator.pushNamed(context, '/leaderboard'),
          ),
          IconButton(
            icon: Icon(Icons.announcement),
            onPressed: () => Navigator.pushNamed(context, '/announcements'),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome, $internName", style: TextStyle(fontSize: 22)),
            SizedBox(height: 8),
            Text("Referral Code: $referralCode"),
            SizedBox(height: 16),
            Text("Total Donations Raised: ₹$totalDonations", style: TextStyle(fontSize: 18)),
            SizedBox(height: 16),
            Text("Rewards:", style: TextStyle(fontWeight: FontWeight.bold)),
            Wrap(
              spacing: 10,
              children: rewards.map((reward) => Chip(label: Text(reward))).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
