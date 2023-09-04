// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'treatament_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TreatamentState {
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
    required TResult Function(InitialTreatment value) initial,
    required TResult Function(LoadSuccessTreatment value) loadSuccess,
    required TResult Function(LoadMessageTreatment value) loadMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialTreatment value)? initial,
    TResult? Function(LoadSuccessTreatment value)? loadSuccess,
    TResult? Function(LoadMessageTreatment value)? loadMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialTreatment value)? initial,
    TResult Function(LoadSuccessTreatment value)? loadSuccess,
    TResult Function(LoadMessageTreatment value)? loadMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreatamentStateCopyWith<$Res> {
  factory $TreatamentStateCopyWith(
          TreatamentState value, $Res Function(TreatamentState) then) =
      _$TreatamentStateCopyWithImpl<$Res, TreatamentState>;
}

/// @nodoc
class _$TreatamentStateCopyWithImpl<$Res, $Val extends TreatamentState>
    implements $TreatamentStateCopyWith<$Res> {
  _$TreatamentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialTreatmentCopyWith<$Res> {
  factory _$$InitialTreatmentCopyWith(
          _$InitialTreatment value, $Res Function(_$InitialTreatment) then) =
      __$$InitialTreatmentCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialTreatmentCopyWithImpl<$Res>
    extends _$TreatamentStateCopyWithImpl<$Res, _$InitialTreatment>
    implements _$$InitialTreatmentCopyWith<$Res> {
  __$$InitialTreatmentCopyWithImpl(
      _$InitialTreatment _value, $Res Function(_$InitialTreatment) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialTreatment implements InitialTreatment {
  const _$InitialTreatment();

  @override
  String toString() {
    return 'TreatamentState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialTreatment);
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
    required TResult Function(InitialTreatment value) initial,
    required TResult Function(LoadSuccessTreatment value) loadSuccess,
    required TResult Function(LoadMessageTreatment value) loadMessage,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialTreatment value)? initial,
    TResult? Function(LoadSuccessTreatment value)? loadSuccess,
    TResult? Function(LoadMessageTreatment value)? loadMessage,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialTreatment value)? initial,
    TResult Function(LoadSuccessTreatment value)? loadSuccess,
    TResult Function(LoadMessageTreatment value)? loadMessage,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialTreatment implements TreatamentState {
  const factory InitialTreatment() = _$InitialTreatment;
}

/// @nodoc
abstract class _$$LoadSuccessTreatmentCopyWith<$Res> {
  factory _$$LoadSuccessTreatmentCopyWith(_$LoadSuccessTreatment value,
          $Res Function(_$LoadSuccessTreatment) then) =
      __$$LoadSuccessTreatmentCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LoadSuccessTreatmentCopyWithImpl<$Res>
    extends _$TreatamentStateCopyWithImpl<$Res, _$LoadSuccessTreatment>
    implements _$$LoadSuccessTreatmentCopyWith<$Res> {
  __$$LoadSuccessTreatmentCopyWithImpl(_$LoadSuccessTreatment _value,
      $Res Function(_$LoadSuccessTreatment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LoadSuccessTreatment(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadSuccessTreatment implements LoadSuccessTreatment {
  const _$LoadSuccessTreatment({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'TreatamentState.loadSuccess(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSuccessTreatment &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadSuccessTreatmentCopyWith<_$LoadSuccessTreatment> get copyWith =>
      __$$LoadSuccessTreatmentCopyWithImpl<_$LoadSuccessTreatment>(
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
    required TResult Function(InitialTreatment value) initial,
    required TResult Function(LoadSuccessTreatment value) loadSuccess,
    required TResult Function(LoadMessageTreatment value) loadMessage,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialTreatment value)? initial,
    TResult? Function(LoadSuccessTreatment value)? loadSuccess,
    TResult? Function(LoadMessageTreatment value)? loadMessage,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialTreatment value)? initial,
    TResult Function(LoadSuccessTreatment value)? loadSuccess,
    TResult Function(LoadMessageTreatment value)? loadMessage,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadSuccessTreatment implements TreatamentState {
  const factory LoadSuccessTreatment({required final String message}) =
      _$LoadSuccessTreatment;

  String get message;
  @JsonKey(ignore: true)
  _$$LoadSuccessTreatmentCopyWith<_$LoadSuccessTreatment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMessageTreatmentCopyWith<$Res> {
  factory _$$LoadMessageTreatmentCopyWith(_$LoadMessageTreatment value,
          $Res Function(_$LoadMessageTreatment) then) =
      __$$LoadMessageTreatmentCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LoadMessageTreatmentCopyWithImpl<$Res>
    extends _$TreatamentStateCopyWithImpl<$Res, _$LoadMessageTreatment>
    implements _$$LoadMessageTreatmentCopyWith<$Res> {
  __$$LoadMessageTreatmentCopyWithImpl(_$LoadMessageTreatment _value,
      $Res Function(_$LoadMessageTreatment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LoadMessageTreatment(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadMessageTreatment implements LoadMessageTreatment {
  const _$LoadMessageTreatment({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'TreatamentState.loadMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMessageTreatment &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadMessageTreatmentCopyWith<_$LoadMessageTreatment> get copyWith =>
      __$$LoadMessageTreatmentCopyWithImpl<_$LoadMessageTreatment>(
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
    required TResult Function(InitialTreatment value) initial,
    required TResult Function(LoadSuccessTreatment value) loadSuccess,
    required TResult Function(LoadMessageTreatment value) loadMessage,
  }) {
    return loadMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialTreatment value)? initial,
    TResult? Function(LoadSuccessTreatment value)? loadSuccess,
    TResult? Function(LoadMessageTreatment value)? loadMessage,
  }) {
    return loadMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialTreatment value)? initial,
    TResult Function(LoadSuccessTreatment value)? loadSuccess,
    TResult Function(LoadMessageTreatment value)? loadMessage,
    required TResult orElse(),
  }) {
    if (loadMessage != null) {
      return loadMessage(this);
    }
    return orElse();
  }
}

abstract class LoadMessageTreatment implements TreatamentState {
  const factory LoadMessageTreatment({required final String message}) =
      _$LoadMessageTreatment;

  String get message;
  @JsonKey(ignore: true)
  _$$LoadMessageTreatmentCopyWith<_$LoadMessageTreatment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TreatamentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RecipeDetailModels model) saveRecipeDetail,
    required TResult Function(RecipeModel model) saveRecipe,
    required TResult Function(String message) pushTreatment,
    required TResult Function(String message) pushMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RecipeDetailModels model)? saveRecipeDetail,
    TResult? Function(RecipeModel model)? saveRecipe,
    TResult? Function(String message)? pushTreatment,
    TResult? Function(String message)? pushMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RecipeDetailModels model)? saveRecipeDetail,
    TResult Function(RecipeModel model)? saveRecipe,
    TResult Function(String message)? pushTreatment,
    TResult Function(String message)? pushMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecipeDetailEvent value) saveRecipeDetail,
    required TResult Function(_RecipeEvent value) saveRecipe,
    required TResult Function(_PushMedicine value) pushTreatment,
    required TResult Function(_PushMedicineMessage value) pushMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecipeDetailEvent value)? saveRecipeDetail,
    TResult? Function(_RecipeEvent value)? saveRecipe,
    TResult? Function(_PushMedicine value)? pushTreatment,
    TResult? Function(_PushMedicineMessage value)? pushMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecipeDetailEvent value)? saveRecipeDetail,
    TResult Function(_RecipeEvent value)? saveRecipe,
    TResult Function(_PushMedicine value)? pushTreatment,
    TResult Function(_PushMedicineMessage value)? pushMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreatamentEventCopyWith<$Res> {
  factory $TreatamentEventCopyWith(
          TreatamentEvent value, $Res Function(TreatamentEvent) then) =
      _$TreatamentEventCopyWithImpl<$Res, TreatamentEvent>;
}

/// @nodoc
class _$TreatamentEventCopyWithImpl<$Res, $Val extends TreatamentEvent>
    implements $TreatamentEventCopyWith<$Res> {
  _$TreatamentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_RecipeDetailEventCopyWith<$Res> {
  factory _$$_RecipeDetailEventCopyWith(_$_RecipeDetailEvent value,
          $Res Function(_$_RecipeDetailEvent) then) =
      __$$_RecipeDetailEventCopyWithImpl<$Res>;
  @useResult
  $Res call({RecipeDetailModels model});
}

/// @nodoc
class __$$_RecipeDetailEventCopyWithImpl<$Res>
    extends _$TreatamentEventCopyWithImpl<$Res, _$_RecipeDetailEvent>
    implements _$$_RecipeDetailEventCopyWith<$Res> {
  __$$_RecipeDetailEventCopyWithImpl(
      _$_RecipeDetailEvent _value, $Res Function(_$_RecipeDetailEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$_RecipeDetailEvent(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as RecipeDetailModels,
    ));
  }
}

/// @nodoc

class _$_RecipeDetailEvent implements _RecipeDetailEvent {
  const _$_RecipeDetailEvent(this.model);

  @override
  final RecipeDetailModels model;

  @override
  String toString() {
    return 'TreatamentEvent.saveRecipeDetail(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeDetailEvent &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipeDetailEventCopyWith<_$_RecipeDetailEvent> get copyWith =>
      __$$_RecipeDetailEventCopyWithImpl<_$_RecipeDetailEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RecipeDetailModels model) saveRecipeDetail,
    required TResult Function(RecipeModel model) saveRecipe,
    required TResult Function(String message) pushTreatment,
    required TResult Function(String message) pushMessage,
  }) {
    return saveRecipeDetail(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RecipeDetailModels model)? saveRecipeDetail,
    TResult? Function(RecipeModel model)? saveRecipe,
    TResult? Function(String message)? pushTreatment,
    TResult? Function(String message)? pushMessage,
  }) {
    return saveRecipeDetail?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RecipeDetailModels model)? saveRecipeDetail,
    TResult Function(RecipeModel model)? saveRecipe,
    TResult Function(String message)? pushTreatment,
    TResult Function(String message)? pushMessage,
    required TResult orElse(),
  }) {
    if (saveRecipeDetail != null) {
      return saveRecipeDetail(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecipeDetailEvent value) saveRecipeDetail,
    required TResult Function(_RecipeEvent value) saveRecipe,
    required TResult Function(_PushMedicine value) pushTreatment,
    required TResult Function(_PushMedicineMessage value) pushMessage,
  }) {
    return saveRecipeDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecipeDetailEvent value)? saveRecipeDetail,
    TResult? Function(_RecipeEvent value)? saveRecipe,
    TResult? Function(_PushMedicine value)? pushTreatment,
    TResult? Function(_PushMedicineMessage value)? pushMessage,
  }) {
    return saveRecipeDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecipeDetailEvent value)? saveRecipeDetail,
    TResult Function(_RecipeEvent value)? saveRecipe,
    TResult Function(_PushMedicine value)? pushTreatment,
    TResult Function(_PushMedicineMessage value)? pushMessage,
    required TResult orElse(),
  }) {
    if (saveRecipeDetail != null) {
      return saveRecipeDetail(this);
    }
    return orElse();
  }
}

abstract class _RecipeDetailEvent implements TreatamentEvent {
  const factory _RecipeDetailEvent(final RecipeDetailModels model) =
      _$_RecipeDetailEvent;

  RecipeDetailModels get model;
  @JsonKey(ignore: true)
  _$$_RecipeDetailEventCopyWith<_$_RecipeDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RecipeEventCopyWith<$Res> {
  factory _$$_RecipeEventCopyWith(
          _$_RecipeEvent value, $Res Function(_$_RecipeEvent) then) =
      __$$_RecipeEventCopyWithImpl<$Res>;
  @useResult
  $Res call({RecipeModel model});
}

/// @nodoc
class __$$_RecipeEventCopyWithImpl<$Res>
    extends _$TreatamentEventCopyWithImpl<$Res, _$_RecipeEvent>
    implements _$$_RecipeEventCopyWith<$Res> {
  __$$_RecipeEventCopyWithImpl(
      _$_RecipeEvent _value, $Res Function(_$_RecipeEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$_RecipeEvent(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as RecipeModel,
    ));
  }
}

/// @nodoc

class _$_RecipeEvent implements _RecipeEvent {
  const _$_RecipeEvent(this.model);

  @override
  final RecipeModel model;

  @override
  String toString() {
    return 'TreatamentEvent.saveRecipe(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeEvent &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipeEventCopyWith<_$_RecipeEvent> get copyWith =>
      __$$_RecipeEventCopyWithImpl<_$_RecipeEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RecipeDetailModels model) saveRecipeDetail,
    required TResult Function(RecipeModel model) saveRecipe,
    required TResult Function(String message) pushTreatment,
    required TResult Function(String message) pushMessage,
  }) {
    return saveRecipe(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RecipeDetailModels model)? saveRecipeDetail,
    TResult? Function(RecipeModel model)? saveRecipe,
    TResult? Function(String message)? pushTreatment,
    TResult? Function(String message)? pushMessage,
  }) {
    return saveRecipe?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RecipeDetailModels model)? saveRecipeDetail,
    TResult Function(RecipeModel model)? saveRecipe,
    TResult Function(String message)? pushTreatment,
    TResult Function(String message)? pushMessage,
    required TResult orElse(),
  }) {
    if (saveRecipe != null) {
      return saveRecipe(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecipeDetailEvent value) saveRecipeDetail,
    required TResult Function(_RecipeEvent value) saveRecipe,
    required TResult Function(_PushMedicine value) pushTreatment,
    required TResult Function(_PushMedicineMessage value) pushMessage,
  }) {
    return saveRecipe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecipeDetailEvent value)? saveRecipeDetail,
    TResult? Function(_RecipeEvent value)? saveRecipe,
    TResult? Function(_PushMedicine value)? pushTreatment,
    TResult? Function(_PushMedicineMessage value)? pushMessage,
  }) {
    return saveRecipe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecipeDetailEvent value)? saveRecipeDetail,
    TResult Function(_RecipeEvent value)? saveRecipe,
    TResult Function(_PushMedicine value)? pushTreatment,
    TResult Function(_PushMedicineMessage value)? pushMessage,
    required TResult orElse(),
  }) {
    if (saveRecipe != null) {
      return saveRecipe(this);
    }
    return orElse();
  }
}

abstract class _RecipeEvent implements TreatamentEvent {
  const factory _RecipeEvent(final RecipeModel model) = _$_RecipeEvent;

  RecipeModel get model;
  @JsonKey(ignore: true)
  _$$_RecipeEventCopyWith<_$_RecipeEvent> get copyWith =>
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
    extends _$TreatamentEventCopyWithImpl<$Res, _$_PushMedicine>
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
    return 'TreatamentEvent.pushTreatment(message: $message)';
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
    required TResult Function(RecipeDetailModels model) saveRecipeDetail,
    required TResult Function(RecipeModel model) saveRecipe,
    required TResult Function(String message) pushTreatment,
    required TResult Function(String message) pushMessage,
  }) {
    return pushTreatment(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RecipeDetailModels model)? saveRecipeDetail,
    TResult? Function(RecipeModel model)? saveRecipe,
    TResult? Function(String message)? pushTreatment,
    TResult? Function(String message)? pushMessage,
  }) {
    return pushTreatment?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RecipeDetailModels model)? saveRecipeDetail,
    TResult Function(RecipeModel model)? saveRecipe,
    TResult Function(String message)? pushTreatment,
    TResult Function(String message)? pushMessage,
    required TResult orElse(),
  }) {
    if (pushTreatment != null) {
      return pushTreatment(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecipeDetailEvent value) saveRecipeDetail,
    required TResult Function(_RecipeEvent value) saveRecipe,
    required TResult Function(_PushMedicine value) pushTreatment,
    required TResult Function(_PushMedicineMessage value) pushMessage,
  }) {
    return pushTreatment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecipeDetailEvent value)? saveRecipeDetail,
    TResult? Function(_RecipeEvent value)? saveRecipe,
    TResult? Function(_PushMedicine value)? pushTreatment,
    TResult? Function(_PushMedicineMessage value)? pushMessage,
  }) {
    return pushTreatment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecipeDetailEvent value)? saveRecipeDetail,
    TResult Function(_RecipeEvent value)? saveRecipe,
    TResult Function(_PushMedicine value)? pushTreatment,
    TResult Function(_PushMedicineMessage value)? pushMessage,
    required TResult orElse(),
  }) {
    if (pushTreatment != null) {
      return pushTreatment(this);
    }
    return orElse();
  }
}

abstract class _PushMedicine implements TreatamentEvent {
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
    extends _$TreatamentEventCopyWithImpl<$Res, _$_PushMedicineMessage>
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
    return 'TreatamentEvent.pushMessage(message: $message)';
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
    required TResult Function(RecipeDetailModels model) saveRecipeDetail,
    required TResult Function(RecipeModel model) saveRecipe,
    required TResult Function(String message) pushTreatment,
    required TResult Function(String message) pushMessage,
  }) {
    return pushMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RecipeDetailModels model)? saveRecipeDetail,
    TResult? Function(RecipeModel model)? saveRecipe,
    TResult? Function(String message)? pushTreatment,
    TResult? Function(String message)? pushMessage,
  }) {
    return pushMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RecipeDetailModels model)? saveRecipeDetail,
    TResult Function(RecipeModel model)? saveRecipe,
    TResult Function(String message)? pushTreatment,
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
    required TResult Function(_RecipeDetailEvent value) saveRecipeDetail,
    required TResult Function(_RecipeEvent value) saveRecipe,
    required TResult Function(_PushMedicine value) pushTreatment,
    required TResult Function(_PushMedicineMessage value) pushMessage,
  }) {
    return pushMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecipeDetailEvent value)? saveRecipeDetail,
    TResult? Function(_RecipeEvent value)? saveRecipe,
    TResult? Function(_PushMedicine value)? pushTreatment,
    TResult? Function(_PushMedicineMessage value)? pushMessage,
  }) {
    return pushMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecipeDetailEvent value)? saveRecipeDetail,
    TResult Function(_RecipeEvent value)? saveRecipe,
    TResult Function(_PushMedicine value)? pushTreatment,
    TResult Function(_PushMedicineMessage value)? pushMessage,
    required TResult orElse(),
  }) {
    if (pushMessage != null) {
      return pushMessage(this);
    }
    return orElse();
  }
}

abstract class _PushMedicineMessage implements TreatamentEvent {
  const factory _PushMedicineMessage({required final String message}) =
      _$_PushMedicineMessage;

  String get message;
  @JsonKey(ignore: true)
  _$$_PushMedicineMessageCopyWith<_$_PushMedicineMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
