// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_medicines_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetMedicinesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<MedicamentModel> medicines) loadSuccess,
    required TResult Function(String message) loadMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<MedicamentModel> medicines)? loadSuccess,
    TResult? Function(String message)? loadMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<MedicamentModel> medicines)? loadSuccess,
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
abstract class $GetMedicinesStateCopyWith<$Res> {
  factory $GetMedicinesStateCopyWith(
          GetMedicinesState value, $Res Function(GetMedicinesState) then) =
      _$GetMedicinesStateCopyWithImpl<$Res, GetMedicinesState>;
}

/// @nodoc
class _$GetMedicinesStateCopyWithImpl<$Res, $Val extends GetMedicinesState>
    implements $GetMedicinesStateCopyWith<$Res> {
  _$GetMedicinesStateCopyWithImpl(this._value, this._then);

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
    extends _$GetMedicinesStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'GetMedicinesState.initial()';
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
    required TResult Function(List<MedicamentModel> medicines) loadSuccess,
    required TResult Function(String message) loadMessage,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<MedicamentModel> medicines)? loadSuccess,
    TResult? Function(String message)? loadMessage,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<MedicamentModel> medicines)? loadSuccess,
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

abstract class _Initial implements GetMedicinesState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MedicamentModel> medicines});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$GetMedicinesStateCopyWithImpl<$Res, _$_LoadSuccess>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicines = null,
  }) {
    return _then(_$_LoadSuccess(
      medicines: null == medicines
          ? _value._medicines
          : medicines // ignore: cast_nullable_to_non_nullable
              as List<MedicamentModel>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess({required final List<MedicamentModel> medicines})
      : _medicines = medicines;

  final List<MedicamentModel> _medicines;
  @override
  List<MedicamentModel> get medicines {
    if (_medicines is EqualUnmodifiableListView) return _medicines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_medicines);
  }

  @override
  String toString() {
    return 'GetMedicinesState.loadSuccess(medicines: $medicines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            const DeepCollectionEquality()
                .equals(other._medicines, _medicines));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_medicines));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<MedicamentModel> medicines) loadSuccess,
    required TResult Function(String message) loadMessage,
  }) {
    return loadSuccess(medicines);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<MedicamentModel> medicines)? loadSuccess,
    TResult? Function(String message)? loadMessage,
  }) {
    return loadSuccess?.call(medicines);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<MedicamentModel> medicines)? loadSuccess,
    TResult Function(String message)? loadMessage,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(medicines);
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

abstract class _LoadSuccess implements GetMedicinesState {
  const factory _LoadSuccess({required final List<MedicamentModel> medicines}) =
      _$_LoadSuccess;

  List<MedicamentModel> get medicines;
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
    extends _$GetMedicinesStateCopyWithImpl<$Res, _$_LoadMessage>
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
    return 'GetMedicinesState.loadMessage(message: $message)';
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
    required TResult Function(List<MedicamentModel> medicines) loadSuccess,
    required TResult Function(String message) loadMessage,
  }) {
    return loadMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<MedicamentModel> medicines)? loadSuccess,
    TResult? Function(String message)? loadMessage,
  }) {
    return loadMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<MedicamentModel> medicines)? loadSuccess,
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

abstract class _LoadMessage implements GetMedicinesState {
  const factory _LoadMessage({required final String message}) = _$_LoadMessage;

  String get message;
  @JsonKey(ignore: true)
  _$$_LoadMessageCopyWith<_$_LoadMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetMedicinesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMedicines,
    required TResult Function(List<MedicamentModel> medicines) pushMedicines,
    required TResult Function(String message) pushMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMedicines,
    TResult? Function(List<MedicamentModel> medicines)? pushMedicines,
    TResult? Function(String message)? pushMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMedicines,
    TResult Function(List<MedicamentModel> medicines)? pushMedicines,
    TResult Function(String message)? pushMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMedicinesEvent value) getMedicines,
    required TResult Function(_PushMedicines value) pushMedicines,
    required TResult Function(_PushMessage value) pushMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMedicinesEvent value)? getMedicines,
    TResult? Function(_PushMedicines value)? pushMedicines,
    TResult? Function(_PushMessage value)? pushMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMedicinesEvent value)? getMedicines,
    TResult Function(_PushMedicines value)? pushMedicines,
    TResult Function(_PushMessage value)? pushMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMedicinesEventCopyWith<$Res> {
  factory $GetMedicinesEventCopyWith(
          GetMedicinesEvent value, $Res Function(GetMedicinesEvent) then) =
      _$GetMedicinesEventCopyWithImpl<$Res, GetMedicinesEvent>;
}

/// @nodoc
class _$GetMedicinesEventCopyWithImpl<$Res, $Val extends GetMedicinesEvent>
    implements $GetMedicinesEventCopyWith<$Res> {
  _$GetMedicinesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetMedicinesEventCopyWith<$Res> {
  factory _$$_GetMedicinesEventCopyWith(_$_GetMedicinesEvent value,
          $Res Function(_$_GetMedicinesEvent) then) =
      __$$_GetMedicinesEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetMedicinesEventCopyWithImpl<$Res>
    extends _$GetMedicinesEventCopyWithImpl<$Res, _$_GetMedicinesEvent>
    implements _$$_GetMedicinesEventCopyWith<$Res> {
  __$$_GetMedicinesEventCopyWithImpl(
      _$_GetMedicinesEvent _value, $Res Function(_$_GetMedicinesEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetMedicinesEvent implements _GetMedicinesEvent {
  const _$_GetMedicinesEvent();

  @override
  String toString() {
    return 'GetMedicinesEvent.getMedicines()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetMedicinesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMedicines,
    required TResult Function(List<MedicamentModel> medicines) pushMedicines,
    required TResult Function(String message) pushMessage,
  }) {
    return getMedicines();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMedicines,
    TResult? Function(List<MedicamentModel> medicines)? pushMedicines,
    TResult? Function(String message)? pushMessage,
  }) {
    return getMedicines?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMedicines,
    TResult Function(List<MedicamentModel> medicines)? pushMedicines,
    TResult Function(String message)? pushMessage,
    required TResult orElse(),
  }) {
    if (getMedicines != null) {
      return getMedicines();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMedicinesEvent value) getMedicines,
    required TResult Function(_PushMedicines value) pushMedicines,
    required TResult Function(_PushMessage value) pushMessage,
  }) {
    return getMedicines(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMedicinesEvent value)? getMedicines,
    TResult? Function(_PushMedicines value)? pushMedicines,
    TResult? Function(_PushMessage value)? pushMessage,
  }) {
    return getMedicines?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMedicinesEvent value)? getMedicines,
    TResult Function(_PushMedicines value)? pushMedicines,
    TResult Function(_PushMessage value)? pushMessage,
    required TResult orElse(),
  }) {
    if (getMedicines != null) {
      return getMedicines(this);
    }
    return orElse();
  }
}

abstract class _GetMedicinesEvent implements GetMedicinesEvent {
  const factory _GetMedicinesEvent() = _$_GetMedicinesEvent;
}

/// @nodoc
abstract class _$$_PushMedicinesCopyWith<$Res> {
  factory _$$_PushMedicinesCopyWith(
          _$_PushMedicines value, $Res Function(_$_PushMedicines) then) =
      __$$_PushMedicinesCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MedicamentModel> medicines});
}

/// @nodoc
class __$$_PushMedicinesCopyWithImpl<$Res>
    extends _$GetMedicinesEventCopyWithImpl<$Res, _$_PushMedicines>
    implements _$$_PushMedicinesCopyWith<$Res> {
  __$$_PushMedicinesCopyWithImpl(
      _$_PushMedicines _value, $Res Function(_$_PushMedicines) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicines = null,
  }) {
    return _then(_$_PushMedicines(
      medicines: null == medicines
          ? _value._medicines
          : medicines // ignore: cast_nullable_to_non_nullable
              as List<MedicamentModel>,
    ));
  }
}

/// @nodoc

class _$_PushMedicines implements _PushMedicines {
  const _$_PushMedicines({required final List<MedicamentModel> medicines})
      : _medicines = medicines;

  final List<MedicamentModel> _medicines;
  @override
  List<MedicamentModel> get medicines {
    if (_medicines is EqualUnmodifiableListView) return _medicines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_medicines);
  }

  @override
  String toString() {
    return 'GetMedicinesEvent.pushMedicines(medicines: $medicines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PushMedicines &&
            const DeepCollectionEquality()
                .equals(other._medicines, _medicines));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_medicines));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PushMedicinesCopyWith<_$_PushMedicines> get copyWith =>
      __$$_PushMedicinesCopyWithImpl<_$_PushMedicines>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMedicines,
    required TResult Function(List<MedicamentModel> medicines) pushMedicines,
    required TResult Function(String message) pushMessage,
  }) {
    return pushMedicines(medicines);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMedicines,
    TResult? Function(List<MedicamentModel> medicines)? pushMedicines,
    TResult? Function(String message)? pushMessage,
  }) {
    return pushMedicines?.call(medicines);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMedicines,
    TResult Function(List<MedicamentModel> medicines)? pushMedicines,
    TResult Function(String message)? pushMessage,
    required TResult orElse(),
  }) {
    if (pushMedicines != null) {
      return pushMedicines(medicines);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMedicinesEvent value) getMedicines,
    required TResult Function(_PushMedicines value) pushMedicines,
    required TResult Function(_PushMessage value) pushMessage,
  }) {
    return pushMedicines(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMedicinesEvent value)? getMedicines,
    TResult? Function(_PushMedicines value)? pushMedicines,
    TResult? Function(_PushMessage value)? pushMessage,
  }) {
    return pushMedicines?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMedicinesEvent value)? getMedicines,
    TResult Function(_PushMedicines value)? pushMedicines,
    TResult Function(_PushMessage value)? pushMessage,
    required TResult orElse(),
  }) {
    if (pushMedicines != null) {
      return pushMedicines(this);
    }
    return orElse();
  }
}

abstract class _PushMedicines implements GetMedicinesEvent {
  const factory _PushMedicines(
      {required final List<MedicamentModel> medicines}) = _$_PushMedicines;

  List<MedicamentModel> get medicines;
  @JsonKey(ignore: true)
  _$$_PushMedicinesCopyWith<_$_PushMedicines> get copyWith =>
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
    extends _$GetMedicinesEventCopyWithImpl<$Res, _$_PushMessage>
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
    return 'GetMedicinesEvent.pushMessage(message: $message)';
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
    required TResult Function() getMedicines,
    required TResult Function(List<MedicamentModel> medicines) pushMedicines,
    required TResult Function(String message) pushMessage,
  }) {
    return pushMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMedicines,
    TResult? Function(List<MedicamentModel> medicines)? pushMedicines,
    TResult? Function(String message)? pushMessage,
  }) {
    return pushMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMedicines,
    TResult Function(List<MedicamentModel> medicines)? pushMedicines,
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
    required TResult Function(_GetMedicinesEvent value) getMedicines,
    required TResult Function(_PushMedicines value) pushMedicines,
    required TResult Function(_PushMessage value) pushMessage,
  }) {
    return pushMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMedicinesEvent value)? getMedicines,
    TResult? Function(_PushMedicines value)? pushMedicines,
    TResult? Function(_PushMessage value)? pushMessage,
  }) {
    return pushMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMedicinesEvent value)? getMedicines,
    TResult Function(_PushMedicines value)? pushMedicines,
    TResult Function(_PushMessage value)? pushMessage,
    required TResult orElse(),
  }) {
    if (pushMessage != null) {
      return pushMessage(this);
    }
    return orElse();
  }
}

abstract class _PushMessage implements GetMedicinesEvent {
  const factory _PushMessage({required final String message}) = _$_PushMessage;

  String get message;
  @JsonKey(ignore: true)
  _$$_PushMessageCopyWith<_$_PushMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
