part of 'notifications_bloc.dart';

@freezed
class NotificationsState with _$NotificationsState {
  const factory NotificationsState.initial() = _Initial;
  const factory NotificationsState.loadSuccess({required List<NotificationCollection?> items}) = _LoadSuccess;
  const factory NotificationsState.loadMessage({required String message}) = _LoadMessage;
}