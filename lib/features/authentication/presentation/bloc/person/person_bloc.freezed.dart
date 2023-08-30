// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PersonState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loadSuccess,
    required TResult Function(String message) loadMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loadSuccess,
    TResult? Function(String message)? loadMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loadSuccess,
    TResult Function(String message)? loadMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialPerson value) initial,
    required TResult Function(LoadSuccessPerson value) loadSuccess,
    required TResult Function(LoadMessagePerson value) loadMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialPerson value)? initial,
    TResult? Function(LoadSuccessPerson value)? loadSuccess,
    TResult? Function(LoadMessagePerson value)? loadMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialPerson value)? initial,
    TResult Function(LoadSuccessPerson value)? loadSuccess,
    TResult Function(LoadMessagePerson value)? loadMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonStateCopyWith<$Res> {
  factory $PersonStateCopyWith(
          PersonState value, $Res Function(PersonState) then) =
      _$PersonStateCopyWithImpl<$Res, PersonState>;
}

/// @nodoc
class _$PersonStateCopyWithImpl<$Res, $Val extends PersonState>
    implements $PersonStateCopyWith<$Res> {
  _$PersonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialPersonCopyWith<$Res> {
  factory _$$InitialPersonCopyWith(
          _$InitialPerson value, $Res Function(_$InitialPerson) then) =
      __$$InitialPersonCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialPersonCopyWithImpl<$Res>
    extends _$PersonStateCopyWithImpl<$Res, _$InitialPerson>
    implements _$$InitialPersonCopyWith<$Res> {
  __$$InitialPersonCopyWithImpl(
      _$InitialPerson _value, $Res Function(_$InitialPerson) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialPerson implements InitialPerson {
  const _$InitialPerson();

  @override
  String toString() {
    return 'PersonState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialPerson);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loadSuccess,
    required TResult Function(String message) loadMessage,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loadSuccess,
    TResult? Function(String message)? loadMessage,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loadSuccess,
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
    required TResult Function(InitialPerson value) initial,
    required TResult Function(LoadSuccessPerson value) loadSuccess,
    required TResult Function(LoadMessagePerson value) loadMessage,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialPerson value)? initial,
    TResult? Function(LoadSuccessPerson value)? loadSuccess,
    TResult? Function(LoadMessagePerson value)? loadMessage,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialPerson value)? initial,
    TResult Function(LoadSuccessPerson value)? loadSuccess,
    TResult Function(LoadMessagePerson value)? loadMessage,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialPerson implements PersonState {
  const factory InitialPerson() = _$InitialPerson;
}

/// @nodoc
abstract class _$$LoadSuccessPersonCopyWith<$Res> {
  factory _$$LoadSuccessPersonCopyWith(
          _$LoadSuccessPerson value, $Res Function(_$LoadSuccessPerson) then) =
      __$$LoadSuccessPersonCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LoadSuccessPersonCopyWithImpl<$Res>
    extends _$PersonStateCopyWithImpl<$Res, _$LoadSuccessPerson>
    implements _$$LoadSuccessPersonCopyWith<$Res> {
  __$$LoadSuccessPersonCopyWithImpl(
      _$LoadSuccessPerson _value, $Res Function(_$LoadSuccessPerson) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LoadSuccessPerson(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadSuccessPerson implements LoadSuccessPerson {
  const _$LoadSuccessPerson({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'PersonState.loadSuccess(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSuccessPerson &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadSuccessPersonCopyWith<_$LoadSuccessPerson> get copyWith =>
      __$$LoadSuccessPersonCopyWithImpl<_$LoadSuccessPerson>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loadSuccess,
    required TResult Function(String message) loadMessage,
  }) {
    return loadSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loadSuccess,
    TResult? Function(String message)? loadMessage,
  }) {
    return loadSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loadSuccess,
    TResult Function(String message)? loadMessage,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialPerson value) initial,
    required TResult Function(LoadSuccessPerson value) loadSuccess,
    required TResult Function(LoadMessagePerson value) loadMessage,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialPerson value)? initial,
    TResult? Function(LoadSuccessPerson value)? loadSuccess,
    TResult? Function(LoadMessagePerson value)? loadMessage,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialPerson value)? initial,
    TResult Function(LoadSuccessPerson value)? loadSuccess,
    TResult Function(LoadMessagePerson value)? loadMessage,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadSuccessPerson implements PersonState {
  const factory LoadSuccessPerson({required final String message}) =
      _$LoadSuccessPerson;

  String get message;
  @JsonKey(ignore: true)
  _$$LoadSuccessPersonCopyWith<_$LoadSuccessPerson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMessagePersonCopyWith<$Res> {
  factory _$$LoadMessagePersonCopyWith(
          _$LoadMessagePerson value, $Res Function(_$LoadMessagePerson) then) =
      __$$LoadMessagePersonCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LoadMessagePersonCopyWithImpl<$Res>
    extends _$PersonStateCopyWithImpl<$Res, _$LoadMessagePerson>
    implements _$$LoadMessagePersonCopyWith<$Res> {
  __$$LoadMessagePersonCopyWithImpl(
      _$LoadMessagePerson _value, $Res Function(_$LoadMessagePerson) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LoadMessagePerson(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadMessagePerson implements LoadMessagePerson {
  const _$LoadMessagePerson({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'PersonState.loadMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMessagePerson &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadMessagePersonCopyWith<_$LoadMessagePerson> get copyWith =>
      __$$LoadMessagePersonCopyWithImpl<_$LoadMessagePerson>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loadSuccess,
    required TResult Function(String message) loadMessage,
  }) {
    return loadMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loadSuccess,
    TResult? Function(String message)? loadMessage,
  }) {
    return loadMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loadSuccess,
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
    required TResult Function(InitialPerson value) initial,
    required TResult Function(LoadSuccessPerson value) loadSuccess,
    required TResult Function(LoadMessagePerson value) loadMessage,
  }) {
    return loadMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialPerson value)? initial,
    TResult? Function(LoadSuccessPerson value)? loadSuccess,
    TResult? Function(LoadMessagePerson value)? loadMessage,
  }) {
    return loadMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialPerson value)? initial,
    TResult Function(LoadSuccessPerson value)? loadSuccess,
    TResult Function(LoadMessagePerson value)? loadMessage,
    required TResult orElse(),
  }) {
    if (loadMessage != null) {
      return loadMessage(this);
    }
    return orElse();
  }
}

abstract class LoadMessagePerson implements PersonState {
  const factory LoadMessagePerson({required final String message}) =
      _$LoadMessagePerson;

  String get message;
  @JsonKey(ignore: true)
  _$$LoadMessagePersonCopyWith<_$LoadMessagePerson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PersonEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PersonEntity model) savePerson,
    required TResult Function(String message) pushPerson,
    required TResult Function(String message) pushMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PersonEntity model)? savePerson,
    TResult? Function(String message)? pushPerson,
    TResult? Function(String message)? pushMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PersonEntity model)? savePerson,
    TResult Function(String message)? pushPerson,
    TResult Function(String message)? pushMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PersonEvent value) savePerson,
    required TResult Function(_PushPerson value) pushPerson,
    required TResult Function(_PushPersonMessage value) pushMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PersonEvent value)? savePerson,
    TResult? Function(_PushPerson value)? pushPerson,
    TResult? Function(_PushPersonMessage value)? pushMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PersonEvent value)? savePerson,
    TResult Function(_PushPerson value)? pushPerson,
    TResult Function(_PushPersonMessage value)? pushMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonEventCopyWith<$Res> {
  factory $PersonEventCopyWith(
          PersonEvent value, $Res Function(PersonEvent) then) =
      _$PersonEventCopyWithImpl<$Res, PersonEvent>;
}

/// @nodoc
class _$PersonEventCopyWithImpl<$Res, $Val extends PersonEvent>
    implements $PersonEventCopyWith<$Res> {
  _$PersonEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PersonEventCopyWith<$Res> {
  factory _$$_PersonEventCopyWith(
          _$_PersonEvent value, $Res Function(_$_PersonEvent) then) =
      __$$_PersonEventCopyWithImpl<$Res>;
  @useResult
  $Res call({PersonEntity model});
}

/// @nodoc
class __$$_PersonEventCopyWithImpl<$Res>
    extends _$PersonEventCopyWithImpl<$Res, _$_PersonEvent>
    implements _$$_PersonEventCopyWith<$Res> {
  __$$_PersonEventCopyWithImpl(
      _$_PersonEvent _value, $Res Function(_$_PersonEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$_PersonEvent(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as PersonEntity,
    ));
  }
}

/// @nodoc

class _$_PersonEvent implements _PersonEvent {
  const _$_PersonEvent(this.model);

  @override
  final PersonEntity model;

  @override
  String toString() {
    return 'PersonEvent.savePerson(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonEvent &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersonEventCopyWith<_$_PersonEvent> get copyWith =>
      __$$_PersonEventCopyWithImpl<_$_PersonEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PersonEntity model) savePerson,
    required TResult Function(String message) pushPerson,
    required TResult Function(String message) pushMessage,
  }) {
    return savePerson(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PersonEntity model)? savePerson,
    TResult? Function(String message)? pushPerson,
    TResult? Function(String message)? pushMessage,
  }) {
    return savePerson?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PersonEntity model)? savePerson,
    TResult Function(String message)? pushPerson,
    TResult Function(String message)? pushMessage,
    required TResult orElse(),
  }) {
    if (savePerson != null) {
      return savePerson(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PersonEvent value) savePerson,
    required TResult Function(_PushPerson value) pushPerson,
    required TResult Function(_PushPersonMessage value) pushMessage,
  }) {
    return savePerson(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PersonEvent value)? savePerson,
    TResult? Function(_PushPerson value)? pushPerson,
    TResult? Function(_PushPersonMessage value)? pushMessage,
  }) {
    return savePerson?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PersonEvent value)? savePerson,
    TResult Function(_PushPerson value)? pushPerson,
    TResult Function(_PushPersonMessage value)? pushMessage,
    required TResult orElse(),
  }) {
    if (savePerson != null) {
      return savePerson(this);
    }
    return orElse();
  }
}

abstract class _PersonEvent implements PersonEvent {
  const factory _PersonEvent(final PersonEntity model) = _$_PersonEvent;

  PersonEntity get model;
  @JsonKey(ignore: true)
  _$$_PersonEventCopyWith<_$_PersonEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PushPersonCopyWith<$Res> {
  factory _$$_PushPersonCopyWith(
          _$_PushPerson value, $Res Function(_$_PushPerson) then) =
      __$$_PushPersonCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_PushPersonCopyWithImpl<$Res>
    extends _$PersonEventCopyWithImpl<$Res, _$_PushPerson>
    implements _$$_PushPersonCopyWith<$Res> {
  __$$_PushPersonCopyWithImpl(
      _$_PushPerson _value, $Res Function(_$_PushPerson) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_PushPerson(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PushPerson implements _PushPerson {
  const _$_PushPerson({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'PersonEvent.pushPerson(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PushPerson &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PushPersonCopyWith<_$_PushPerson> get copyWith =>
      __$$_PushPersonCopyWithImpl<_$_PushPerson>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PersonEntity model) savePerson,
    required TResult Function(String message) pushPerson,
    required TResult Function(String message) pushMessage,
  }) {
    return pushPerson(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PersonEntity model)? savePerson,
    TResult? Function(String message)? pushPerson,
    TResult? Function(String message)? pushMessage,
  }) {
    return pushPerson?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PersonEntity model)? savePerson,
    TResult Function(String message)? pushPerson,
    TResult Function(String message)? pushMessage,
    required TResult orElse(),
  }) {
    if (pushPerson != null) {
      return pushPerson(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PersonEvent value) savePerson,
    required TResult Function(_PushPerson value) pushPerson,
    required TResult Function(_PushPersonMessage value) pushMessage,
  }) {
    return pushPerson(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PersonEvent value)? savePerson,
    TResult? Function(_PushPerson value)? pushPerson,
    TResult? Function(_PushPersonMessage value)? pushMessage,
  }) {
    return pushPerson?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PersonEvent value)? savePerson,
    TResult Function(_PushPerson value)? pushPerson,
    TResult Function(_PushPersonMessage value)? pushMessage,
    required TResult orElse(),
  }) {
    if (pushPerson != null) {
      return pushPerson(this);
    }
    return orElse();
  }
}

abstract class _PushPerson implements PersonEvent {
  const factory _PushPerson({required final String message}) = _$_PushPerson;

  String get message;
  @JsonKey(ignore: true)
  _$$_PushPersonCopyWith<_$_PushPerson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PushPersonMessageCopyWith<$Res> {
  factory _$$_PushPersonMessageCopyWith(_$_PushPersonMessage value,
          $Res Function(_$_PushPersonMessage) then) =
      __$$_PushPersonMessageCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_PushPersonMessageCopyWithImpl<$Res>
    extends _$PersonEventCopyWithImpl<$Res, _$_PushPersonMessage>
    implements _$$_PushPersonMessageCopyWith<$Res> {
  __$$_PushPersonMessageCopyWithImpl(
      _$_PushPersonMessage _value, $Res Function(_$_PushPersonMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_PushPersonMessage(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PushPersonMessage implements _PushPersonMessage {
  const _$_PushPersonMessage({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'PersonEvent.pushMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PushPersonMessage &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PushPersonMessageCopyWith<_$_PushPersonMessage> get copyWith =>
      __$$_PushPersonMessageCopyWithImpl<_$_PushPersonMessage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PersonEntity model) savePerson,
    required TResult Function(String message) pushPerson,
    required TResult Function(String message) pushMessage,
  }) {
    return pushMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PersonEntity model)? savePerson,
    TResult? Function(String message)? pushPerson,
    TResult? Function(String message)? pushMessage,
  }) {
    return pushMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PersonEntity model)? savePerson,
    TResult Function(String message)? pushPerson,
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
    required TResult Function(_PersonEvent value) savePerson,
    required TResult Function(_PushPerson value) pushPerson,
    required TResult Function(_PushPersonMessage value) pushMessage,
  }) {
    return pushMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PersonEvent value)? savePerson,
    TResult? Function(_PushPerson value)? pushPerson,
    TResult? Function(_PushPersonMessage value)? pushMessage,
  }) {
    return pushMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PersonEvent value)? savePerson,
    TResult Function(_PushPerson value)? pushPerson,
    TResult Function(_PushPersonMessage value)? pushMessage,
    required TResult orElse(),
  }) {
    if (pushMessage != null) {
      return pushMessage(this);
    }
    return orElse();
  }
}

abstract class _PushPersonMessage implements PersonEvent {
  const factory _PushPersonMessage({required final String message}) =
      _$_PushPersonMessage;

  String get message;
  @JsonKey(ignore: true)
  _$$_PushPersonMessageCopyWith<_$_PushPersonMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
