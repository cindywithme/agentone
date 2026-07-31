import 'package:flutter/material.dart';
import 'ai_chat/chat_screen.dart';
import 'automation/automation_screen.dart';
import 'scheduler/scheduler_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AgentOne Dashboard'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          DashboardCard(
            icon: Icons.smart_toy,
            title: 'AI Chat',
            subtitle: 'Talk with AgentOne',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ChatScreen(),
                ),
              );
            },
          ),

          const SizedBox(height: 15),

          DashboardCard(
            icon: Icons.auto_awesome,
            title: 'Automation',
            subtitle: 'Manage campaigns',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AutomationScreen(),
                ),
              );
            },
          ),

          const SizedBox(height: 15),

          const DashboardCard(
            icon: Icons.people,
            title: 'Accounts',
            subtitle: 'Manage your accounts',
          ),

          const SizedBox(height: 15),

          DashboardCard(
            icon: Icons.schedule,
            title: 'Scheduler',
            subtitle: 'Working hours & timing',
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

          const DashboardCard(
            icon: Icons.bar_chart,
            title: 'Statistics',
            subtitle: 'Performance overview',
          ),

          const SizedBox(height: 15),

          const DashboardCard(
            icon: Icons.monitor_heart,
            title: 'Monitor',
            subtitle: 'Health & alerts',
          ),

          const SizedBox(height: 15),

          const DashboardCard(
            icon: Icons.settings,
            title: 'Settings',
            subtitle: 'App preferences',
          ),
        ],
      ),
    );
  }
}

class DashboardCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback? onTap;

  const DashboardCard({
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
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 12,
        ),
        leading: Icon(
          icon,
          size: 34,
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}