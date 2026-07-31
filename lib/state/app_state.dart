import '../models/automation_settings.dart';

class AppState {
  AppState._();

  static final AppState instance = AppState._();

  AutomationSettings automationSettings = AutomationSettings();

  bool automationRunning = false;
  bool aiBusy = false;

  String currentScreen = "Dashboard";

  bool floatingBubbleVisible = false;

  int messagesSentToday = 0;
  int repliesSentToday = 0;

  List<String> activeAccounts = [];

  bool emergencyAlarmTriggered = false;
}