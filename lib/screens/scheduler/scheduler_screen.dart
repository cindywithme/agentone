import 'package:flutter/material.dart';

class SchedulerScreen extends StatelessWidget {
  const SchedulerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scheduler"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          SchedulerCard(
            icon: Icons.access_time,
            title: "Working Hours",
            subtitle: "5:00 PM - 11:00 AM",
          ),

          SizedBox(height: 15),

          SchedulerCard(
            icon: Icons.repeat,
            title: "Reply Interval",
            subtitle: "Pause every 5 minutes to check replies",
          ),

          SizedBox(height: 15),

          SchedulerCard(
            icon: Icons.speed,
            title: "Messaging Speed",
            subtitle: "10 accounts per minute",
          ),

          SizedBox(height: 15),

          SchedulerCard(
            icon: Icons.calendar_today,
            title: "Repeat Schedule",
            subtitle: "Run every day",
          ),
        ],
      ),
    );
  }
}

class SchedulerCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const SchedulerCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: ListTile(
        leading: Icon(icon, size: 34),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}