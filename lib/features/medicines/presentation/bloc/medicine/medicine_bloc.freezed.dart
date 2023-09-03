// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medicine_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MedicineState {
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
    required TResult Function(InitialMedicine value) initial,
    required TResult Function(LoadSuccessMedicine value) loadSuccess,
    required TResult Function(LoadMessageMedicine value) loadMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialMedicine value)? initial,
    TResult? Function(LoadSuccessMedicine value)? loadSuccess,
    TResult? Function(LoadMessageMedicine value)? loadMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialMedicine value)? initial,
    TResult Function(LoadSuccessMedicine value)? loadSuccess,
    TResult Function(LoadMessageMedicine value)? loadMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicineStateCopyWith<$Res> {
  factory $MedicineStateCopyWith(
          MedicineState value, $Res Function(MedicineState) then) =
      _$MedicineStateCopyWithImpl<$Res, MedicineState>;
}

/// @nodoc
class _$MedicineStateCopyWithImpl<$Res, $Val extends MedicineState>
    implements $MedicineStateCopyWith<$Res> {
  _$MedicineStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialMedicineCopyWith<$Res> {
  factory _$$InitialMedicineCopyWith(
          _$InitialMedicine value, $Res Function(_$InitialMedicine) then) =
      __$$InitialMedicineCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialMedicineCopyWithImpl<$Res>
    extends _$MedicineStateCopyWithImpl<$Res, _$InitialMedicine>
    implements _$$InitialMedicineCopyWith<$Res> {
  __$$InitialMedicineCopyWithImpl(
      _$InitialMedicine _value, $Res Function(_$InitialMedicine) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialMedicine implements InitialMedicine {
  const _$InitialMedicine();

  @override
  String toString() {
    return 'MedicineState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialMedicine);
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
    required TResult Function(InitialMedicine value) initial,
    required TResult Function(LoadSuccessMedicine value) loadSuccess,
    required TResult Function(LoadMessageMedicine value) loadMessage,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialMedicine value)? initial,
    TResult? Function(LoadSuccessMedicine value)? loadSuccess,
    TResult? Function(LoadMessageMedicine value)? loadMessage,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialMedicine value)? initial,
    TResult Function(LoadSuccessMedicine value)? loadSuccess,
    TResult Function(LoadMessageMedicine value)? loadMessage,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialMedicine implements MedicineState {
  const factory InitialMedicine() = _$InitialMedicine;
}

/// @nodoc
abstract class _$$LoadSuccessMedicineCopyWith<$Res> {
  factory _$$LoadSuccessMedicineCopyWith(_$LoadSuccessMedicine value,
          $Res Function(_$LoadSuccessMedicine) then) =
      __$$LoadSuccessMedicineCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LoadSuccessMedicineCopyWithImpl<$Res>
    extends _$MedicineStateCopyWithImpl<$Res, _$LoadSuccessMedicine>
    implements _$$LoadSuccessMedicineCopyWith<$Res> {
  __$$LoadSuccessMedicineCopyWithImpl(
      _$LoadSuccessMedicine _value, $Res Function(_$LoadSuccessMedicine) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LoadSuccessMedicine(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadSuccessMedicine implements LoadSuccessMedicine {
  const _$LoadSuccessMedicine({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'MedicineState.loadSuccess(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSuccessMedicine &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadSuccessMedicineCopyWith<_$LoadSuccessMedicine> get copyWith =>
      __$$LoadSuccessMedicineCopyWithImpl<_$LoadSuccessMedicine>(
          this, _$identity);

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
    required TResult Function(InitialMedicine value) initial,
    required TResult Function(LoadSuccessMedicine value) loadSuccess,
    required TResult Function(LoadMessageMedicine value) loadMessage,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialMedicine value)? initial,
    TResult? Function(LoadSuccessMedicine value)? loadSuccess,
    TResult? Function(LoadMessageMedicine value)? loadMessage,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialMedicine value)? initial,
    TResult Function(LoadSuccessMedicine value)? loadSuccess,
    TResult Function(LoadMessageMedicine value)? loadMessage,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadSuccessMedicine implements MedicineState {
  const factory LoadSuccessMedicine({required final String message}) =
      _$LoadSuccessMedicine;

  String get message;
  @JsonKey(ignore: true)
  _$$LoadSuccessMedicineCopyWith<_$LoadSuccessMedicine> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMessageMedicineCopyWith<$Res> {
  factory _$$LoadMessageMedicineCopyWith(_$LoadMessageMedicine value,
          $Res Function(_$LoadMessageMedicine) then) =
      __$$LoadMessageMedicineCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LoadMessageMedicineCopyWithImpl<$Res>
    extends _$MedicineStateCopyWithImpl<$Res, _$LoadMessageMedicine>
    implements _$$LoadMessageMedicineCopyWith<$Res> {
  __$$LoadMessageMedicineCopyWithImpl(
      _$LoadMessageMedicine _value, $Res Function(_$LoadMessageMedicine) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LoadMessageMedicine(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadMessageMedicine implements LoadMessageMedicine {
  const _$LoadMessageMedicine({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'MedicineState.loadMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMessageMedicine &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadMessageMedicineCopyWith<_$LoadMessageMedicine> get copyWith =>
      __$$LoadMessageMedicineCopyWithImpl<_$LoadMessageMedicine>(
          this, _$identity);

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
    required TResult Function(InitialMedicine value) initial,
    required TResult Function(LoadSuccessMedicine value) loadSuccess,
    required TResult Function(LoadMessageMedicine value) loadMessage,
  }) {
    return loadMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialMedicine value)? initial,
    TResult? Function(LoadSuccessMedicine value)? loadSuccess,
    TResult? Function(LoadMessageMedicine value)? loadMessage,
  }) {
    return loadMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialMedicine value)? initial,
    TResult Function(LoadSuccessMedicine value)? loadSuccess,
    TResult Function(LoadMessageMedicine value)? loadMessage,
    required TResult orElse(),
  }) {
    if (loadMessage != null) {
      return loadMessage(this);
    }
    return orElse();
  }
}

abstract class LoadMessageMedicine implements MedicineState {
  const factory LoadMessageMedicine({required final String message}) =
      _$LoadMessageMedicine;

  String get message;
  @JsonKey(ignore: true)
  _$$LoadMessageMedicineCopyWith<_$LoadMessageMedicine> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MedicineEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) deleteItem,
    required TResult Function(MedicamentModel model) saveMedicine,
    required TResult Function(String message) pushMedicine,
    required TResult Function(String message) pushMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? deleteItem,
    TResult? Function(MedicamentModel model)? saveMedicine,
    TResult? Function(String message)? pushMedicine,
    TResult? Function(String message)? pushMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? deleteItem,
    TResult Function(MedicamentModel model)? saveMedicine,
    TResult Function(String message)? pushMedicine,
    TResult Function(String message)? pushMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MedicineDeleteEvent value) deleteItem,
    required TResult Function(_MedicineEvent value) saveMedicine,
    required TResult Function(_PushMedicine value) pushMedicine,
    required TResult Function(_PushMedicineMessage value) pushMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MedicineDeleteEvent value)? deleteItem,
    TResult? Function(_MedicineEvent value)? saveMedicine,
    TResult? Function(_PushMedicine value)? pushMedicine,
    TResult? Function(_PushMedicineMessage value)? pushMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MedicineDeleteEvent value)? deleteItem,
    TResult Function(_MedicineEvent value)? saveMedicine,
    TResult Function(_PushMedicine value)? pushMedicine,
    TResult Function(_PushMedicineMessage value)? pushMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicineEventCopyWith<$Res> {
  factory $MedicineEventCopyWith(
          MedicineEvent value, $Res Function(MedicineEvent) then) =
      _$MedicineEventCopyWithImpl<$Res, MedicineEvent>;
}

/// @nodoc
class _$MedicineEventCopyWithImpl<$Res, $Val extends MedicineEvent>
    implements $MedicineEventCopyWith<$Res> {
  _$MedicineEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_MedicineDeleteEventCopyWith<$Res> {
  factory _$$_MedicineDeleteEventCopyWith(_$_MedicineDeleteEvent value,
          $Res Function(_$_MedicineDeleteEvent) then) =
      __$$_MedicineDeleteEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_MedicineDeleteEventCopyWithImpl<$Res>
    extends _$MedicineEventCopyWithImpl<$Res, _$_MedicineDeleteEvent>
    implements _$$_MedicineDeleteEventCopyWith<$Res> {
  __$$_MedicineDeleteEventCopyWithImpl(_$_MedicineDeleteEvent _value,
      $Res Function(_$_MedicineDeleteEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_MedicineDeleteEvent(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MedicineDeleteEvent implements _MedicineDeleteEvent {
  const _$_MedicineDeleteEvent(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'MedicineEvent.deleteItem(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MedicineDeleteEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MedicineDeleteEventCopyWith<_$_MedicineDeleteEvent> get copyWith =>
      __$$_MedicineDeleteEventCopyWithImpl<_$_MedicineDeleteEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) deleteItem,
    required TResult Function(MedicamentModel model) saveMedicine,
    required TResult Function(String message) pushMedicine,
    required TResult Function(String message) pushMessage,
  }) {
    return deleteItem(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? deleteItem,
    TResult? Function(MedicamentModel model)? saveMedicine,
    TResult? Function(String message)? pushMedicine,
    TResult? Function(String message)? pushMessage,
  }) {
    return deleteItem?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? deleteItem,
    TResult Function(MedicamentModel model)? saveMedicine,
    TResult Function(String message)? pushMedicine,
    TResult Function(String message)? pushMessage,
    required TResult orElse(),
  }) {
    if (deleteItem != null) {
      return deleteItem(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MedicineDeleteEvent value) deleteItem,
    required TResult Function(_MedicineEvent value) saveMedicine,
    required TResult Function(_PushMedicine value) pushMedicine,
    required TResult Function(_PushMedicineMessage value) pushMessage,
  }) {
    return deleteItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MedicineDeleteEvent value)? deleteItem,
    TResult? Function(_MedicineEvent value)? saveMedicine,
    TResult? Function(_PushMedicine value)? pushMedicine,
    TResult? Function(_PushMedicineMessage value)? pushMessage,
  }) {
    return deleteItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MedicineDeleteEvent value)? deleteItem,
    TResult Function(_MedicineEvent value)? saveMedicine,
    TResult Function(_PushMedicine value)? pushMedicine,
    TResult Function(_PushMedicineMessage value)? pushMessage,
    required TResult orElse(),
  }) {
    if (deleteItem != null) {
      return deleteItem(this);
    }
    return orElse();
  }
}

abstract class _MedicineDeleteEvent implements MedicineEvent {
  const factory _MedicineDeleteEvent(final String id) = _$_MedicineDeleteEvent;

  String get id;
  @JsonKey(ignore: true)
  _$$_MedicineDeleteEventCopyWith<_$_MedicineDeleteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MedicineEventCopyWith<$Res> {
  factory _$$_MedicineEventCopyWith(
          _$_MedicineEvent value, $Res Function(_$_MedicineEvent) then) =
      __$$_MedicineEventCopyWithImpl<$Res>;
  @useResult
  $Res call({MedicamentModel model});
}

/// @nodoc
class __$$_MedicineEventCopyWithImpl<$Res>
    extends _$MedicineEventCopyWithImpl<$Res, _$_MedicineEvent>
    implements _$$_MedicineEventCopyWith<$Res> {
  __$$_MedicineEventCopyWithImpl(
      _$_MedicineEvent _value, $Res Function(_$_MedicineEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$_MedicineEvent(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as MedicamentModel,
    ));
  }
}

/// @nodoc

class _$_MedicineEvent implements _MedicineEvent {
  const _$_MedicineEvent(this.model);

  @override
  final MedicamentModel model;

  @override
  String toString() {
    return 'MedicineEvent.saveMedicine(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MedicineEvent &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MedicineEventCopyWith<_$_MedicineEvent> get copyWith =>
      __$$_MedicineEventCopyWithImpl<_$_MedicineEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) deleteItem,
    required TResult Function(MedicamentModel model) saveMedicine,
    required TResult Function(String message) pushMedicine,
    required TResult Function(String message) pushMessage,
  }) {
    return saveMedicine(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? deleteItem,
    TResult? Function(MedicamentModel model)? saveMedicine,
    TResult? Function(String message)? pushMedicine,
    TResult? Function(String message)? pushMessage,
  }) {
    return saveMedicine?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? deleteItem,
    TResult Function(MedicamentModel model)? saveMedicine,
    TResult Function(String message)? pushMedicine,
    TResult Function(String message)? pushMessage,
    required TResult orElse(),
  }) {
    if (saveMedicine != null) {
      return saveMedicine(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MedicineDeleteEvent value) deleteItem,
    required TResult Function(_MedicineEvent value) saveMedicine,
    required TResult Function(_PushMedicine value) pushMedicine,
    required TResult Function(_PushMedicineMessage value) pushMessage,
  }) {
    return saveMedicine(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MedicineDeleteEvent value)? deleteItem,
    TResult? Function(_MedicineEvent value)? saveMedicine,
    TResult? Function(_PushMedicine value)? pushMedicine,
    TResult? Function(_PushMedicineMessage value)? pushMessage,
  }) {
    return saveMedicine?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MedicineDeleteEvent value)? deleteItem,
    TResult Function(_MedicineEvent value)? saveMedicine,
    TResult Function(_PushMedicine value)? pushMedicine,
    TResult Function(_PushMedicineMessage value)? pushMessage,
    required TResult orElse(),
  }) {
    if (saveMedicine != null) {
      return saveMedicine(this);
    }
    return orElse();
  }
}

abstract class _MedicineEvent implements MedicineEvent {
  const factory _MedicineEvent(final MedicamentModel model) = _$_MedicineEvent;

  MedicamentModel get model;
  @JsonKey(ignore: true)
  _$$_MedicineEventCopyWith<_$_MedicineEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PushMedicineCopyWith<$Res> {
  factory _$$_PushMedicineCopyWith(
          _$_PushMedicine value, $Res Function(_$_PushMedicine) then) =
      __$$_PushMedicineCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_PushMedicineCopyWithImpl<$Res>
    extends _$MedicineEventCopyWithImpl<$Res, _$_PushMedicine>
    implements _$$_PushMedicineCopyWith<$Res> {
  __$$_PushMedicineCopyWithImpl(
      _$_PushMedicine _value, $Res Function(_$_PushMedicine) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_PushMedicine(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PushMedicine implements _PushMedicine {
  const _$_PushMedicine({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'MedicineEvent.pushMedicine(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PushMedicine &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PushMedicineCopyWith<_$_PushMedicine> get copyWith =>
      __$$_PushMedicineCopyWithImpl<_$_PushMedicine>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) deleteItem,
    required TResult Function(MedicamentModel model) saveMedicine,
    required TResult Function(String message) pushMedicine,
    required TResult Function(String message) pushMessage,
  }) {
    return pushMedicine(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? deleteItem,
    TResult? Function(MedicamentModel model)? saveMedicine,
    TResult? Function(String message)? pushMedicine,
    TResult? Function(String message)? pushMessage,
  }) {
    return pushMedicine?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? deleteItem,
    TResult Function(MedicamentModel model)? saveMedicine,
    TResult Function(String message)? pushMedicine,
    TResult Function(String message)? pushMessage,
    required TResult orElse(),
  }) {
    if (pushMedicine != null) {
      return pushMedicine(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MedicineDeleteEvent value) deleteItem,
    required TResult Function(_MedicineEvent value) saveMedicine,
    required TResult Function(_PushMedicine value) pushMedicine,
    required TResult Function(_PushMedicineMessage value) pushMessage,
  }) {
    return pushMedicine(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MedicineDeleteEvent value)? deleteItem,
    TResult? Function(_MedicineEvent value)? saveMedicine,
    TResult? Function(_PushMedicine value)? pushMedicine,
    TResult? Function(_PushMedicineMessage value)? pushMessage,
  }) {
    return pushMedicine?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MedicineDeleteEvent value)? deleteItem,
    TResult Function(_MedicineEvent value)? saveMedicine,
    TResult Function(_PushMedicine value)? pushMedicine,
    TResult Function(_PushMedicineMessage value)? pushMessage,
    required TResult orElse(),
  }) {
    if (pushMedicine != null) {
      return pushMedicine(this);
    }
    return orElse();
  }
}

abstract class _PushMedicine implements MedicineEvent {
  const factory _PushMedicine({required final String message}) =
      _$_PushMedicine;

  String get message;
  @JsonKey(ignore: true)
  _$$_PushMedicineCopyWith<_$_PushMedicine> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PushMedicineMessageCopyWith<$Res> {
  factory _$$_PushMedicineMessageCopyWith(_$_PushMedicineMessage value,
          $Res Function(_$_PushMedicineMessage) then) =
      __$$_PushMedicineMessageCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_PushMedicineMessageCopyWithImpl<$Res>
    extends _$MedicineEventCopyWithImpl<$Res, _$_PushMedicineMessage>
    implements _$$_PushMedicineMessageCopyWith<$Res> {
  __$$_PushMedicineMessageCopyWithImpl(_$_PushMedicineMessage _value,
      $Res Function(_$_PushMedicineMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_PushMedicineMessage(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PushMedicineMessage implements _PushMedicineMessage {
  const _$_PushMedicineMessage({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'MedicineEvent.pushMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PushMedicineMessage &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PushMedicineMessageCopyWith<_$_PushMedicineMessage> get copyWith =>
      __$$_PushMedicineMessageCopyWithImpl<_$_PushMedicineMessage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) deleteItem,
    required TResult Function(MedicamentModel model) saveMedicine,
    required TResult Function(String message) pushMedicine,
    required TResult Function(String message) pushMessage,
  }) {
    return pushMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? deleteItem,
    TResult? Function(MedicamentModel model)? saveMedicine,
    TResult? Function(String message)? pushMedicine,
    TResult? Function(String message)? pushMessage,
  }) {
    return pushMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? deleteItem,
    TResult Function(MedicamentModel model)? saveMedicine,
    TResult Function(String message)? pushMedicine,
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
    required TResult Function(_MedicineDeleteEvent value) deleteItem,
    required TResult Function(_MedicineEvent value) saveMedicine,
    required TResult Function(_PushMedicine value) pushMedicine,
    required TResult Function(_PushMedicineMessage value) pushMessage,
  }) {
    return pushMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MedicineDeleteEvent value)? deleteItem,
    TResult? Function(_MedicineEvent value)? saveMedicine,
    TResult? Function(_PushMedicine value)? pushMedicine,
    TResult? Function(_PushMedicineMessage value)? pushMessage,
  }) {
    return pushMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MedicineDeleteEvent value)? deleteItem,
    TResult Function(_MedicineEvent value)? saveMedicine,
    TResult Function(_PushMedicine value)? pushMedicine,
    TResult Function(_PushMedicineMessage value)? pushMessage,
    required TResult orElse(),
  }) {
    if (pushMessage != null) {
      return pushMessage(this);
    }
    return orElse();
  }
}

abstract class _PushMedicineMessage implements MedicineEvent {
  const factory _PushMedicineMessage({required final String message}) =
      _$_PushMedicineMessage;

  String get message;
  @JsonKey(ignore: true)
  _$$_PushMedicineMessageCopyWith<_$_PushMedicineMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
