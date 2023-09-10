part of 'notifications_bloc.dart';

@freezed
class NotificationsEvent with _$NotificationsEvent {
  const factory NotificationsEvent.getNotifications() = _NotificationsEvent;
  const factory NotificationsEvent.pushMedicamentItemss({required List<NotificationCollection?> items}) = _PushNotifications;
  const factory NotificationsEvent.pushMessage({required String message}) = _PushMessage;
}