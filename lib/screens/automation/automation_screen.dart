import 'package:flutter/material.dart';
import '../scheduler/scheduler_screen.dart';

class AutomationScreen extends StatelessWidget {
  const AutomationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Automation"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const AutomationTile(
            icon: Icons.play_circle_fill,
            title: "Start Automation",
            subtitle: "Begin today's automation",
          ),

          const SizedBox(height: 15),

          const AutomationTile(
            icon: Icons.stop_circle,
            title: "Stop Automation",
            subtitle: "Immediately stop all tasks",
          ),

          const SizedBox(height: 15),

          const AutomationTile(
            icon: Icons.pause_circle,
            title: "Pause",
            subtitle: "Temporarily pause automation",
          ),

          const SizedBox(height: 15),

          AutomationTile(
            icon: Icons.schedule,
            title: "Scheduler",
            subtitle: "Working hours and timing",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SchedulerScreen(),
                ),
              );
            },
          ),

          const SizedBox(height: 15),

          const AutomationTile(
            icon: Icons.people,
            title: "Accounts",
            subtitle: "Accounts used for automation",
          ),

          const SizedBox(height: 15),

          const AutomationTile(
            icon: Icons.smart_toy,
            title: "AI Replies",
            subtitle: "Configure AI conversations",
          ),

          const SizedBox(height: 15),

          const AutomationTile(
            icon: Icons.circle_notifications,
            title: "Floating Bubble",
            subtitle: "Enable floating assistant",
          ),

          const SizedBox(height: 15),

          const AutomationTile(
            icon: Icons.warning,
            title: "Emergency Alarm",
            subtitle: "Alert if automation stops",
          ),
        ],
      ),
    );
  }
}

class AutomationTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback? onTap;

  const AutomationTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: ListTile(
        onTap: onTap,
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