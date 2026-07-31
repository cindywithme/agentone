import '../state/app_state.dart';

class AutomationEngine {
  AutomationEngine._();

  static final AutomationEngine instance = AutomationEngine._();

  final AppState _appState = AppState.instance;

  void startAutomation() {
    _appState.automationRunning = true;
    _appState.emergencyAlarmTriggered = false;
  }

  void pauseAutomation() {
    _appState.automationRunning = false;
  }

  void stopAutomation() {
    _appState.automationRunning = false;
  }

  bool get isRunning => _appState.automationRunning;
}