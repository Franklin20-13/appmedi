// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'getDoctors_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetDoctorsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<PersonEntity> doctors) loadSuccess,
    required TResult Function(String message) loadMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<PersonEntity> doctors)? loadSuccess,
    TResult? Function(String message)? loadMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<PersonEntity> doctors)? loadSuccess,
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
abstract class $GetDoctorsStateCopyWith<$Res> {
  factory $GetDoctorsStateCopyWith(
          GetDoctorsState value, $Res Function(GetDoctorsState) then) =
      _$GetDoctorsStateCopyWithImpl<$Res, GetDoctorsState>;
}

/// @nodoc
class _$GetDoctorsStateCopyWithImpl<$Res, $Val extends GetDoctorsState>
    implements $GetDoctorsStateCopyWith<$Res> {
  _$GetDoctorsStateCopyWithImpl(this._value, this._then);

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
    extends _$GetDoctorsStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'GetDoctorsState.initial()';
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
    required TResult Function(List<PersonEntity> doctors) loadSuccess,
    required TResult Function(String message) loadMessage,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<PersonEntity> doctors)? loadSuccess,
    TResult? Function(String message)? loadMessage,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<PersonEntity> doctors)? loadSuccess,
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

abstract class _Initial implements GetDoctorsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PersonEntity> doctors});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$GetDoctorsStateCopyWithImpl<$Res, _$_LoadSuccess>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctors = null,
  }) {
    return _then(_$_LoadSuccess(
      doctors: null == doctors
          ? _value._doctors
          : doctors // ignore: cast_nullable_to_non_nullable
              as List<PersonEntity>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess({required final List<PersonEntity> doctors})
      : _doctors = doctors;

  final List<PersonEntity> _doctors;
  @override
  List<PersonEntity> get doctors {
    if (_doctors is EqualUnmodifiableListView) return _doctors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_doctors);
  }

  @override
  String toString() {
    return 'GetDoctorsState.loadSuccess(doctors: $doctors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            const DeepCollectionEquality().equals(other._doctors, _doctors));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_doctors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<PersonEntity> doctors) loadSuccess,
    required TResult Function(String message) loadMessage,
  }) {
    return loadSuccess(doctors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<PersonEntity> doctors)? loadSuccess,
    TResult? Function(String message)? loadMessage,
  }) {
    return loadSuccess?.call(doctors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<PersonEntity> doctors)? loadSuccess,
    TResult Function(String message)? loadMessage,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(doctors);
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

abstract class _LoadSuccess implements GetDoctorsState {
  const factory _LoadSuccess({required final List<PersonEntity> doctors}) =
      _$_LoadSuccess;

  List<PersonEntity> get doctors;
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
    extends _$GetDoctorsStateCopyWithImpl<$Res, _$_LoadMessage>
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
    return 'GetDoctorsState.loadMessage(message: $message)';
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
    required TResult Function(List<PersonEntity> doctors) loadSuccess,
    required TResult Function(String message) loadMessage,
  }) {
    return loadMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<PersonEntity> doctors)? loadSuccess,
    TResult? Function(String message)? loadMessage,
  }) {
    return loadMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<PersonEntity> doctors)? loadSuccess,
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

abstract class _LoadMessage implements GetDoctorsState {
  const factory _LoadMessage({required final String message}) = _$_LoadMessage;

  String get message;
  @JsonKey(ignore: true)
  _$$_LoadMessageCopyWith<_$_LoadMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetDoctorsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDoctors,
    required TResult Function(List<PersonEntity> doctors) pushDoctors,
    required TResult Function(String message) pushMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDoctors,
    TResult? Function(List<PersonEntity> doctors)? pushDoctors,
    TResult? Function(String message)? pushMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDoctors,
    TResult Function(List<PersonEntity> doctors)? pushDoctors,
    TResult Function(String message)? pushMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDoctorsEvent value) getDoctors,
    required TResult Function(_PushDoctors value) pushDoctors,
    required TResult Function(_PushMessage value) pushMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDoctorsEvent value)? getDoctors,
    TResult? Function(_PushDoctors value)? pushDoctors,
    TResult? Function(_PushMessage value)? pushMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDoctorsEvent value)? getDoctors,
    TResult Function(_PushDoctors value)? pushDoctors,
    TResult Function(_PushMessage value)? pushMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDoctorsEventCopyWith<$Res> {
  factory $GetDoctorsEventCopyWith(
          GetDoctorsEvent value, $Res Function(GetDoctorsEvent) then) =
      _$GetDoctorsEventCopyWithImpl<$Res, GetDoctorsEvent>;
}

/// @nodoc
class _$GetDoctorsEventCopyWithImpl<$Res, $Val extends GetDoctorsEvent>
    implements $GetDoctorsEventCopyWith<$Res> {
  _$GetDoctorsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetDoctorsEventCopyWith<$Res> {
  factory _$$_GetDoctorsEventCopyWith(
          _$_GetDoctorsEvent value, $Res Function(_$_GetDoctorsEvent) then) =
      __$$_GetDoctorsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetDoctorsEventCopyWithImpl<$Res>
    extends _$GetDoctorsEventCopyWithImpl<$Res, _$_GetDoctorsEvent>
    implements _$$_GetDoctorsEventCopyWith<$Res> {
  __$$_GetDoctorsEventCopyWithImpl(
      _$_GetDoctorsEvent _value, $Res Function(_$_GetDoctorsEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetDoctorsEvent implements _GetDoctorsEvent {
  const _$_GetDoctorsEvent();

  @override
  String toString() {
    return 'GetDoctorsEvent.getDoctors()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetDoctorsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDoctors,
    required TResult Function(List<PersonEntity> doctors) pushDoctors,
    required TResult Function(String message) pushMessage,
  }) {
    return getDoctors();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDoctors,
    TResult? Function(List<PersonEntity> doctors)? pushDoctors,
    TResult? Function(String message)? pushMessage,
  }) {
    return getDoctors?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDoctors,
    TResult Function(List<PersonEntity> doctors)? pushDoctors,
    TResult Function(String message)? pushMessage,
    required TResult orElse(),
  }) {
    if (getDoctors != null) {
      return getDoctors();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDoctorsEvent value) getDoctors,
    required TResult Function(_PushDoctors value) pushDoctors,
    required TResult Function(_PushMessage value) pushMessage,
  }) {
    return getDoctors(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDoctorsEvent value)? getDoctors,
    TResult? Function(_PushDoctors value)? pushDoctors,
    TResult? Function(_PushMessage value)? pushMessage,
  }) {
    return getDoctors?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDoctorsEvent value)? getDoctors,
    TResult Function(_PushDoctors value)? pushDoctors,
    TResult Function(_PushMessage value)? pushMessage,
    required TResult orElse(),
  }) {
    if (getDoctors != null) {
      return getDoctors(this);
    }
    return orElse();
  }
}

abstract class _GetDoctorsEvent implements GetDoctorsEvent {
  const factory _GetDoctorsEvent() = _$_GetDoctorsEvent;
}

/// @nodoc
abstract class _$$_PushDoctorsCopyWith<$Res> {
  factory _$$_PushDoctorsCopyWith(
          _$_PushDoctors value, $Res Function(_$_PushDoctors) then) =
      __$$_PushDoctorsCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PersonEntity> doctors});
}

/// @nodoc
class __$$_PushDoctorsCopyWithImpl<$Res>
    extends _$GetDoctorsEventCopyWithImpl<$Res, _$_PushDoctors>
    implements _$$_PushDoctorsCopyWith<$Res> {
  __$$_PushDoctorsCopyWithImpl(
      _$_PushDoctors _value, $Res Function(_$_PushDoctors) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctors = null,
  }) {
    return _then(_$_PushDoctors(
      doctors: null == doctors
          ? _value._doctors
          : doctors // ignore: cast_nullable_to_non_nullable
              as List<PersonEntity>,
    ));
  }
}

/// @nodoc

class _$_PushDoctors implements _PushDoctors {
  const _$_PushDoctors({required final List<PersonEntity> doctors})
      : _doctors = doctors;

  final List<PersonEntity> _doctors;
  @override
  List<PersonEntity> get doctors {
    if (_doctors is EqualUnmodifiableListView) return _doctors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_doctors);
  }

  @override
  String toString() {
    return 'GetDoctorsEvent.pushDoctors(doctors: $doctors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PushDoctors &&
            const DeepCollectionEquality().equals(other._doctors, _doctors));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_doctors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PushDoctorsCopyWith<_$_PushDoctors> get copyWith =>
      __$$_PushDoctorsCopyWithImpl<_$_PushDoctors>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDoctors,
    required TResult Function(List<PersonEntity> doctors) pushDoctors,
    required TResult Function(String message) pushMessage,
  }) {
    return pushDoctors(doctors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDoctors,
    TResult? Function(List<PersonEntity> doctors)? pushDoctors,
    TResult? Function(String message)? pushMessage,
  }) {
    return pushDoctors?.call(doctors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDoctors,
    TResult Function(List<PersonEntity> doctors)? pushDoctors,
    TResult Function(String message)? pushMessage,
    required TResult orElse(),
  }) {
    if (pushDoctors != null) {
      return pushDoctors(doctors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDoctorsEvent value) getDoctors,
    required TResult Function(_PushDoctors value) pushDoctors,
    required TResult Function(_PushMessage value) pushMessage,
  }) {
    return pushDoctors(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDoctorsEvent value)? getDoctors,
    TResult? Function(_PushDoctors value)? pushDoctors,
    TResult? Function(_PushMessage value)? pushMessage,
  }) {
    return pushDoctors?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDoctorsEvent value)? getDoctors,
    TResult Function(_PushDoctors value)? pushDoctors,
    TResult Function(_PushMessage value)? pushMessage,
    required TResult orElse(),
  }) {
    if (pushDoctors != null) {
      return pushDoctors(this);
    }
    return orElse();
  }
}

abstract class _PushDoctors implements GetDoctorsEvent {
  const factory _PushDoctors({required final List<PersonEntity> doctors}) =
      _$_PushDoctors;

  List<PersonEntity> get doctors;
  @JsonKey(ignore: true)
  _$$_PushDoctorsCopyWith<_$_PushDoctors> get copyWith =>
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
    extends _$GetDoctorsEventCopyWithImpl<$Res, _$_PushMessage>
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
    return 'GetDoctorsEvent.pushMessage(message: $message)';
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
    required TResult Function() getDoctors,
    required TResult Function(List<PersonEntity> doctors) pushDoctors,
    required TResult Function(String message) pushMessage,
  }) {
    return pushMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDoctors,
    TResult? Function(List<PersonEntity> doctors)? pushDoctors,
    TResult? Function(String message)? pushMessage,
  }) {
    return pushMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDoctors,
    TResult Function(List<PersonEntity> doctors)? pushDoctors,
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
    required TResult Function(_GetDoctorsEvent value) getDoctors,
    required TResult Function(_PushDoctors value) pushDoctors,
    required TResult Function(_PushMessage value) pushMessage,
  }) {
    return pushMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDoctorsEvent value)? getDoctors,
    TResult? Function(_PushDoctors value)? pushDoctors,
    TResult? Function(_PushMessage value)? pushMessage,
  }) {
    return pushMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDoctorsEvent value)? getDoctors,
    TResult Function(_PushDoctors value)? pushDoctors,
    TResult Function(_PushMessage value)? pushMessage,
    required TResult orElse(),
  }) {
    if (pushMessage != null) {
      return pushMessage(this);
    }
    return orElse();
  }
}

abstract class _PushMessage implements GetDoctorsEvent {
  const factory _PushMessage({required final String message}) = _$_PushMessage;

  String get message;
  @JsonKey(ignore: true)
  _$$_PushMessageCopyWith<_$_PushMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
