// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'people_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PeopleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<PeopleEntity> people) loadSuccess,
    required TResult Function(String message) loadMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<PeopleEntity> people)? loadSuccess,
    TResult? Function(String message)? loadMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<PeopleEntity> people)? loadSuccess,
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
abstract class $PeopleStateCopyWith<$Res> {
  factory $PeopleStateCopyWith(
          PeopleState value, $Res Function(PeopleState) then) =
      _$PeopleStateCopyWithImpl<$Res, PeopleState>;
}

/// @nodoc
class _$PeopleStateCopyWithImpl<$Res, $Val extends PeopleState>
    implements $PeopleStateCopyWith<$Res> {
  _$PeopleStateCopyWithImpl(this._value, this._then);

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
    extends _$PeopleStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'PeopleState.initial()';
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
    required TResult Function(List<PeopleEntity> people) loadSuccess,
    required TResult Function(String message) loadMessage,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<PeopleEntity> people)? loadSuccess,
    TResult? Function(String message)? loadMessage,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<PeopleEntity> people)? loadSuccess,
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

abstract class _Initial implements PeopleState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PeopleEntity> people});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$PeopleStateCopyWithImpl<$Res, _$_LoadSuccess>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? people = null,
  }) {
    return _then(_$_LoadSuccess(
      people: null == people
          ? _value._people
          : people // ignore: cast_nullable_to_non_nullable
              as List<PeopleEntity>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess({required final List<PeopleEntity> people})
      : _people = people;

  final List<PeopleEntity> _people;
  @override
  List<PeopleEntity> get people {
    if (_people is EqualUnmodifiableListView) return _people;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_people);
  }

  @override
  String toString() {
    return 'PeopleState.loadSuccess(people: $people)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            const DeepCollectionEquality().equals(other._people, _people));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_people));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<PeopleEntity> people) loadSuccess,
    required TResult Function(String message) loadMessage,
  }) {
    return loadSuccess(people);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<PeopleEntity> people)? loadSuccess,
    TResult? Function(String message)? loadMessage,
  }) {
    return loadSuccess?.call(people);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<PeopleEntity> people)? loadSuccess,
    TResult Function(String message)? loadMessage,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(people);
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

abstract class _LoadSuccess implements PeopleState {
  const factory _LoadSuccess({required final List<PeopleEntity> people}) =
      _$_LoadSuccess;

  List<PeopleEntity> get people;
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
    extends _$PeopleStateCopyWithImpl<$Res, _$_LoadMessage>
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
    return 'PeopleState.loadMessage(message: $message)';
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
    required TResult Function(List<PeopleEntity> people) loadSuccess,
    required TResult Function(String message) loadMessage,
  }) {
    return loadMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<PeopleEntity> people)? loadSuccess,
    TResult? Function(String message)? loadMessage,
  }) {
    return loadMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<PeopleEntity> people)? loadSuccess,
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

abstract class _LoadMessage implements PeopleState {
  const factory _LoadMessage({required final String message}) = _$_LoadMessage;

  String get message;
  @JsonKey(ignore: true)
  _$$_LoadMessageCopyWith<_$_LoadMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PeopleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPeople,
    required TResult Function(List<PeopleEntity> people) pushPeople,
    required TResult Function(String message) pushMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPeople,
    TResult? Function(List<PeopleEntity> people)? pushPeople,
    TResult? Function(String message)? pushMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPeople,
    TResult Function(List<PeopleEntity> people)? pushPeople,
    TResult Function(String message)? pushMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PeopleEvent value) getPeople,
    required TResult Function(_PushPeople value) pushPeople,
    required TResult Function(_PushMessage value) pushMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PeopleEvent value)? getPeople,
    TResult? Function(_PushPeople value)? pushPeople,
    TResult? Function(_PushMessage value)? pushMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PeopleEvent value)? getPeople,
    TResult Function(_PushPeople value)? pushPeople,
    TResult Function(_PushMessage value)? pushMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeopleEventCopyWith<$Res> {
  factory $PeopleEventCopyWith(
          PeopleEvent value, $Res Function(PeopleEvent) then) =
      _$PeopleEventCopyWithImpl<$Res, PeopleEvent>;
}

/// @nodoc
class _$PeopleEventCopyWithImpl<$Res, $Val extends PeopleEvent>
    implements $PeopleEventCopyWith<$Res> {
  _$PeopleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PeopleEventCopyWith<$Res> {
  factory _$$_PeopleEventCopyWith(
          _$_PeopleEvent value, $Res Function(_$_PeopleEvent) then) =
      __$$_PeopleEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PeopleEventCopyWithImpl<$Res>
    extends _$PeopleEventCopyWithImpl<$Res, _$_PeopleEvent>
    implements _$$_PeopleEventCopyWith<$Res> {
  __$$_PeopleEventCopyWithImpl(
      _$_PeopleEvent _value, $Res Function(_$_PeopleEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PeopleEvent implements _PeopleEvent {
  const _$_PeopleEvent();

  @override
  String toString() {
    return 'PeopleEvent.getPeople()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PeopleEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPeople,
    required TResult Function(List<PeopleEntity> people) pushPeople,
    required TResult Function(String message) pushMessage,
  }) {
    return getPeople();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPeople,
    TResult? Function(List<PeopleEntity> people)? pushPeople,
    TResult? Function(String message)? pushMessage,
  }) {
    return getPeople?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPeople,
    TResult Function(List<PeopleEntity> people)? pushPeople,
    TResult Function(String message)? pushMessage,
    required TResult orElse(),
  }) {
    if (getPeople != null) {
      return getPeople();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PeopleEvent value) getPeople,
    required TResult Function(_PushPeople value) pushPeople,
    required TResult Function(_PushMessage value) pushMessage,
  }) {
    return getPeople(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PeopleEvent value)? getPeople,
    TResult? Function(_PushPeople value)? pushPeople,
    TResult? Function(_PushMessage value)? pushMessage,
  }) {
    return getPeople?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PeopleEvent value)? getPeople,
    TResult Function(_PushPeople value)? pushPeople,
    TResult Function(_PushMessage value)? pushMessage,
    required TResult orElse(),
  }) {
    if (getPeople != null) {
      return getPeople(this);
    }
    return orElse();
  }
}

abstract class _PeopleEvent implements PeopleEvent {
  const factory _PeopleEvent() = _$_PeopleEvent;
}

/// @nodoc
abstract class _$$_PushPeopleCopyWith<$Res> {
  factory _$$_PushPeopleCopyWith(
          _$_PushPeople value, $Res Function(_$_PushPeople) then) =
      __$$_PushPeopleCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PeopleEntity> people});
}

/// @nodoc
class __$$_PushPeopleCopyWithImpl<$Res>
    extends _$PeopleEventCopyWithImpl<$Res, _$_PushPeople>
    implements _$$_PushPeopleCopyWith<$Res> {
  __$$_PushPeopleCopyWithImpl(
      _$_PushPeople _value, $Res Function(_$_PushPeople) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? people = null,
  }) {
    return _then(_$_PushPeople(
      people: null == people
          ? _value._people
          : people // ignore: cast_nullable_to_non_nullable
              as List<PeopleEntity>,
    ));
  }
}

/// @nodoc

class _$_PushPeople implements _PushPeople {
  const _$_PushPeople({required final List<PeopleEntity> people})
      : _people = people;

  final List<PeopleEntity> _people;
  @override
  List<PeopleEntity> get people {
    if (_people is EqualUnmodifiableListView) return _people;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_people);
  }

  @override
  String toString() {
    return 'PeopleEvent.pushPeople(people: $people)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PushPeople &&
            const DeepCollectionEquality().equals(other._people, _people));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_people));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PushPeopleCopyWith<_$_PushPeople> get copyWith =>
      __$$_PushPeopleCopyWithImpl<_$_PushPeople>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPeople,
    required TResult Function(List<PeopleEntity> people) pushPeople,
    required TResult Function(String message) pushMessage,
  }) {
    return pushPeople(people);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPeople,
    TResult? Function(List<PeopleEntity> people)? pushPeople,
    TResult? Function(String message)? pushMessage,
  }) {
    return pushPeople?.call(people);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPeople,
    TResult Function(List<PeopleEntity> people)? pushPeople,
    TResult Function(String message)? pushMessage,
    required TResult orElse(),
  }) {
    if (pushPeople != null) {
      return pushPeople(people);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PeopleEvent value) getPeople,
    required TResult Function(_PushPeople value) pushPeople,
    required TResult Function(_PushMessage value) pushMessage,
  }) {
    return pushPeople(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PeopleEvent value)? getPeople,
    TResult? Function(_PushPeople value)? pushPeople,
    TResult? Function(_PushMessage value)? pushMessage,
  }) {
    return pushPeople?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PeopleEvent value)? getPeople,
    TResult Function(_PushPeople value)? pushPeople,
    TResult Function(_PushMessage value)? pushMessage,
    required TResult orElse(),
  }) {
    if (pushPeople != null) {
      return pushPeople(this);
    }
    return orElse();
  }
}

abstract class _PushPeople implements PeopleEvent {
  const factory _PushPeople({required final List<PeopleEntity> people}) =
      _$_PushPeople;

  List<PeopleEntity> get people;
  @JsonKey(ignore: true)
  _$$_PushPeopleCopyWith<_$_PushPeople> get copyWith =>
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
    extends _$PeopleEventCopyWithImpl<$Res, _$_PushMessage>
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
    return 'PeopleEvent.pushMessage(message: $message)';
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
    required TResult Function() getPeople,
    required TResult Function(List<PeopleEntity> people) pushPeople,
    required TResult Function(String message) pushMessage,
  }) {
    return pushMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPeople,
    TResult? Function(List<PeopleEntity> people)? pushPeople,
    TResult? Function(String message)? pushMessage,
  }) {
    return pushMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPeople,
    TResult Function(List<PeopleEntity> people)? pushPeople,
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
    required TResult Function(_PeopleEvent value) getPeople,
    required TResult Function(_PushPeople value) pushPeople,
    required TResult Function(_PushMessage value) pushMessage,
  }) {
    return pushMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PeopleEvent value)? getPeople,
    TResult? Function(_PushPeople value)? pushPeople,
    TResult? Function(_PushMessage value)? pushMessage,
  }) {
    return pushMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PeopleEvent value)? getPeople,
    TResult Function(_PushPeople value)? pushPeople,
    TResult Function(_PushMessage value)? pushMessage,
    required TResult orElse(),
  }) {
    if (pushMessage != null) {
      return pushMessage(this);
    }
    return orElse();
  }
}

abstract class _PushMessage implements PeopleEvent {
  const factory _PushMessage({required final String message}) = _$_PushMessage;

  String get message;
  @JsonKey(ignore: true)
  _$$_PushMessageCopyWith<_$_PushMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
