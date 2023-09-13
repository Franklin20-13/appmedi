// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifications_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotificationsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<NotificationCollection?> items) loadSuccess,
    required TResult Function(String message) loadMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<NotificationCollection?> items)? loadSuccess,
    TResult? Function(String message)? loadMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<NotificationCollection?> items)? loadSuccess,
    TResult Function(String message)? loadMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadMessage value) loadMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadMessage value)? loadMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadMessage value)? loadMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsStateCopyWith<$Res> {
  factory $NotificationsStateCopyWith(
          NotificationsState value, $Res Function(NotificationsState) then) =
      _$NotificationsStateCopyWithImpl<$Res, NotificationsState>;
}

/// @nodoc
class _$NotificationsStateCopyWithImpl<$Res, $Val extends NotificationsState>
    implements $NotificationsStateCopyWith<$Res> {
  _$NotificationsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'NotificationsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<NotificationCollection?> items) loadSuccess,
    required TResult Function(String message) loadMessage,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<NotificationCollection?> items)? loadSuccess,
    TResult? Function(String message)? loadMessage,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<NotificationCollection?> items)? loadSuccess,
    TResult Function(String message)? loadMessage,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadMessage value) loadMessage,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadMessage value)? loadMessage,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadMessage value)? loadMessage,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NotificationsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<NotificationCollection?> items});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res, _$_LoadSuccess>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$_LoadSuccess(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<NotificationCollection?>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess({required final List<NotificationCollection?> items})
      : _items = items;

  final List<NotificationCollection?> _items;
  @override
  List<NotificationCollection?> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'NotificationsState.loadSuccess(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<NotificationCollection?> items) loadSuccess,
    required TResult Function(String message) loadMessage,
  }) {
    return loadSuccess(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<NotificationCollection?> items)? loadSuccess,
    TResult? Function(String message)? loadMessage,
  }) {
    return loadSuccess?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<NotificationCollection?> items)? loadSuccess,
    TResult Function(String message)? loadMessage,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadMessage value) loadMessage,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadMessage value)? loadMessage,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadMessage value)? loadMessage,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements NotificationsState {
  const factory _LoadSuccess(
      {required final List<NotificationCollection?> items}) = _$_LoadSuccess;

  List<NotificationCollection?> get items;
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadMessageCopyWith<$Res> {
  factory _$$_LoadMessageCopyWith(
          _$_LoadMessage value, $Res Function(_$_LoadMessage) then) =
      __$$_LoadMessageCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_LoadMessageCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res, _$_LoadMessage>
    implements _$$_LoadMessageCopyWith<$Res> {
  __$$_LoadMessageCopyWithImpl(
      _$_LoadMessage _value, $Res Function(_$_LoadMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_LoadMessage(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadMessage implements _LoadMessage {
  const _$_LoadMessage({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'NotificationsState.loadMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadMessage &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadMessageCopyWith<_$_LoadMessage> get copyWith =>
      __$$_LoadMessageCopyWithImpl<_$_LoadMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<NotificationCollection?> items) loadSuccess,
    required TResult Function(String message) loadMessage,
  }) {
    return loadMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<NotificationCollection?> items)? loadSuccess,
    TResult? Function(String message)? loadMessage,
  }) {
    return loadMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<NotificationCollection?> items)? loadSuccess,
    TResult Function(String message)? loadMessage,
    required TResult orElse(),
  }) {
    if (loadMessage != null) {
      return loadMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadMessage value) loadMessage,
  }) {
    return loadMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadMessage value)? loadMessage,
  }) {
    return loadMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadMessage value)? loadMessage,
    required TResult orElse(),
  }) {
    if (loadMessage != null) {
      return loadMessage(this);
    }
    return orElse();
  }
}

abstract class _LoadMessage implements NotificationsState {
  const factory _LoadMessage({required final String message}) = _$_LoadMessage;

  String get message;
  @JsonKey(ignore: true)
  _$$_LoadMessageCopyWith<_$_LoadMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NotificationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isNow) getNotifications,
    required TResult Function(List<NotificationCollection?> items)
        pushMedicamentItemss,
    required TResult Function(String message) pushMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isNow)? getNotifications,
    TResult? Function(List<NotificationCollection?> items)?
        pushMedicamentItemss,
    TResult? Function(String message)? pushMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isNow)? getNotifications,
    TResult Function(List<NotificationCollection?> items)? pushMedicamentItemss,
    TResult Function(String message)? pushMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotificationsEvent value) getNotifications,
    required TResult Function(_PushNotifications value) pushMedicamentItemss,
    required TResult Function(_PushMessage value) pushMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotificationsEvent value)? getNotifications,
    TResult? Function(_PushNotifications value)? pushMedicamentItemss,
    TResult? Function(_PushMessage value)? pushMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotificationsEvent value)? getNotifications,
    TResult Function(_PushNotifications value)? pushMedicamentItemss,
    TResult Function(_PushMessage value)? pushMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsEventCopyWith<$Res> {
  factory $NotificationsEventCopyWith(
          NotificationsEvent value, $Res Function(NotificationsEvent) then) =
      _$NotificationsEventCopyWithImpl<$Res, NotificationsEvent>;
}

/// @nodoc
class _$NotificationsEventCopyWithImpl<$Res, $Val extends NotificationsEvent>
    implements $NotificationsEventCopyWith<$Res> {
  _$NotificationsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_NotificationsEventCopyWith<$Res> {
  factory _$$_NotificationsEventCopyWith(_$_NotificationsEvent value,
          $Res Function(_$_NotificationsEvent) then) =
      __$$_NotificationsEventCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isNow});
}

/// @nodoc
class __$$_NotificationsEventCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res, _$_NotificationsEvent>
    implements _$$_NotificationsEventCopyWith<$Res> {
  __$$_NotificationsEventCopyWithImpl(
      _$_NotificationsEvent _value, $Res Function(_$_NotificationsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isNow = null,
  }) {
    return _then(_$_NotificationsEvent(
      null == isNow
          ? _value.isNow
          : isNow // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NotificationsEvent implements _NotificationsEvent {
  const _$_NotificationsEvent(this.isNow);

  @override
  final bool isNow;

  @override
  String toString() {
    return 'NotificationsEvent.getNotifications(isNow: $isNow)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationsEvent &&
            (identical(other.isNow, isNow) || other.isNow == isNow));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isNow);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotificationsEventCopyWith<_$_NotificationsEvent> get copyWith =>
      __$$_NotificationsEventCopyWithImpl<_$_NotificationsEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isNow) getNotifications,
    required TResult Function(List<NotificationCollection?> items)
        pushMedicamentItemss,
    required TResult Function(String message) pushMessage,
  }) {
    return getNotifications(isNow);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isNow)? getNotifications,
    TResult? Function(List<NotificationCollection?> items)?
        pushMedicamentItemss,
    TResult? Function(String message)? pushMessage,
  }) {
    return getNotifications?.call(isNow);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isNow)? getNotifications,
    TResult Function(List<NotificationCollection?> items)? pushMedicamentItemss,
    TResult Function(String message)? pushMessage,
    required TResult orElse(),
  }) {
    if (getNotifications != null) {
      return getNotifications(isNow);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotificationsEvent value) getNotifications,
    required TResult Function(_PushNotifications value) pushMedicamentItemss,
    required TResult Function(_PushMessage value) pushMessage,
  }) {
    return getNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotificationsEvent value)? getNotifications,
    TResult? Function(_PushNotifications value)? pushMedicamentItemss,
    TResult? Function(_PushMessage value)? pushMessage,
  }) {
    return getNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotificationsEvent value)? getNotifications,
    TResult Function(_PushNotifications value)? pushMedicamentItemss,
    TResult Function(_PushMessage value)? pushMessage,
    required TResult orElse(),
  }) {
    if (getNotifications != null) {
      return getNotifications(this);
    }
    return orElse();
  }
}

abstract class _NotificationsEvent implements NotificationsEvent {
  const factory _NotificationsEvent(final bool isNow) = _$_NotificationsEvent;

  bool get isNow;
  @JsonKey(ignore: true)
  _$$_NotificationsEventCopyWith<_$_NotificationsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PushNotificationsCopyWith<$Res> {
  factory _$$_PushNotificationsCopyWith(_$_PushNotifications value,
          $Res Function(_$_PushNotifications) then) =
      __$$_PushNotificationsCopyWithImpl<$Res>;
  @useResult
  $Res call({List<NotificationCollection?> items});
}

/// @nodoc
class __$$_PushNotificationsCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res, _$_PushNotifications>
    implements _$$_PushNotificationsCopyWith<$Res> {
  __$$_PushNotificationsCopyWithImpl(
      _$_PushNotifications _value, $Res Function(_$_PushNotifications) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$_PushNotifications(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<NotificationCollection?>,
    ));
  }
}

/// @nodoc

class _$_PushNotifications implements _PushNotifications {
  const _$_PushNotifications(
      {required final List<NotificationCollection?> items})
      : _items = items;

  final List<NotificationCollection?> _items;
  @override
  List<NotificationCollection?> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'NotificationsEvent.pushMedicamentItemss(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PushNotifications &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PushNotificationsCopyWith<_$_PushNotifications> get copyWith =>
      __$$_PushNotificationsCopyWithImpl<_$_PushNotifications>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isNow) getNotifications,
    required TResult Function(List<NotificationCollection?> items)
        pushMedicamentItemss,
    required TResult Function(String message) pushMessage,
  }) {
    return pushMedicamentItemss(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isNow)? getNotifications,
    TResult? Function(List<NotificationCollection?> items)?
        pushMedicamentItemss,
    TResult? Function(String message)? pushMessage,
  }) {
    return pushMedicamentItemss?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isNow)? getNotifications,
    TResult Function(List<NotificationCollection?> items)? pushMedicamentItemss,
    TResult Function(String message)? pushMessage,
    required TResult orElse(),
  }) {
    if (pushMedicamentItemss != null) {
      return pushMedicamentItemss(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotificationsEvent value) getNotifications,
    required TResult Function(_PushNotifications value) pushMedicamentItemss,
    required TResult Function(_PushMessage value) pushMessage,
  }) {
    return pushMedicamentItemss(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotificationsEvent value)? getNotifications,
    TResult? Function(_PushNotifications value)? pushMedicamentItemss,
    TResult? Function(_PushMessage value)? pushMessage,
  }) {
    return pushMedicamentItemss?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotificationsEvent value)? getNotifications,
    TResult Function(_PushNotifications value)? pushMedicamentItemss,
    TResult Function(_PushMessage value)? pushMessage,
    required TResult orElse(),
  }) {
    if (pushMedicamentItemss != null) {
      return pushMedicamentItemss(this);
    }
    return orElse();
  }
}

abstract class _PushNotifications implements NotificationsEvent {
  const factory _PushNotifications(
          {required final List<NotificationCollection?> items}) =
      _$_PushNotifications;

  List<NotificationCollection?> get items;
  @JsonKey(ignore: true)
  _$$_PushNotificationsCopyWith<_$_PushNotifications> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PushMessageCopyWith<$Res> {
  factory _$$_PushMessageCopyWith(
          _$_PushMessage value, $Res Function(_$_PushMessage) then) =
      __$$_PushMessageCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_PushMessageCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res, _$_PushMessage>
    implements _$$_PushMessageCopyWith<$Res> {
  __$$_PushMessageCopyWithImpl(
      _$_PushMessage _value, $Res Function(_$_PushMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_PushMessage(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PushMessage implements _PushMessage {
  const _$_PushMessage({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'NotificationsEvent.pushMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PushMessage &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PushMessageCopyWith<_$_PushMessage> get copyWith =>
      __$$_PushMessageCopyWithImpl<_$_PushMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isNow) getNotifications,
    required TResult Function(List<NotificationCollection?> items)
        pushMedicamentItemss,
    required TResult Function(String message) pushMessage,
  }) {
    return pushMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isNow)? getNotifications,
    TResult? Function(List<NotificationCollection?> items)?
        pushMedicamentItemss,
    TResult? Function(String message)? pushMessage,
  }) {
    return pushMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isNow)? getNotifications,
    TResult Function(List<NotificationCollection?> items)? pushMedicamentItemss,
    TResult Function(String message)? pushMessage,
    required TResult orElse(),
  }) {
    if (pushMessage != null) {
      return pushMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotificationsEvent value) getNotifications,
    required TResult Function(_PushNotifications value) pushMedicamentItemss,
    required TResult Function(_PushMessage value) pushMessage,
  }) {
    return pushMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotificationsEvent value)? getNotifications,
    TResult? Function(_PushNotifications value)? pushMedicamentItemss,
    TResult? Function(_PushMessage value)? pushMessage,
  }) {
    return pushMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotificationsEvent value)? getNotifications,
    TResult Function(_PushNotifications value)? pushMedicamentItemss,
    TResult Function(_PushMessage value)? pushMessage,
    required TResult orElse(),
  }) {
    if (pushMessage != null) {
      return pushMessage(this);
    }
    return orElse();
  }
}

abstract class _PushMessage implements NotificationsEvent {
  const factory _PushMessage({required final String message}) = _$_PushMessage;

  String get message;
  @JsonKey(ignore: true)
  _$$_PushMessageCopyWith<_$_PushMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
