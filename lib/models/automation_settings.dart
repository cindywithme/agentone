class AutomationSettings {
  String startTime;
  String stopTime;

  int messagingSpeed;
  int replyInterval;

  bool floatingBubbleEnabled;
  bool emergencyAlarmEnabled;
  bool aiRepliesEnabled;

  List<String> selectedAccounts;

  AutomationSettings({
    this.startTime = "17:00",
    this.stopTime = "11:00",
    this.messagingSpeed = 10,
    this.replyInterval = 5,
    this.floatingBubbleEnabled = false,
    this.emergencyAlarmEnabled = true,
    this.aiRepliesEnabled = true,
    List<String>? selectedAccounts,
  }) : selectedAccounts = selectedAccounts ?? [];
}