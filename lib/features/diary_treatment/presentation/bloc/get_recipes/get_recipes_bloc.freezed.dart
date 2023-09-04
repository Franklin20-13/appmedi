// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_recipes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetRecipesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<RecipeModel> recipes) loadSuccess,
    required TResult Function(String message) loadMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<RecipeModel> recipes)? loadSuccess,
    TResult? Function(String message)? loadMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<RecipeModel> recipes)? loadSuccess,
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
abstract class $GetRecipesStateCopyWith<$Res> {
  factory $GetRecipesStateCopyWith(
          GetRecipesState value, $Res Function(GetRecipesState) then) =
      _$GetRecipesStateCopyWithImpl<$Res, GetRecipesState>;
}

/// @nodoc
class _$GetRecipesStateCopyWithImpl<$Res, $Val extends GetRecipesState>
    implements $GetRecipesStateCopyWith<$Res> {
  _$GetRecipesStateCopyWithImpl(this._value, this._then);

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
    extends _$GetRecipesStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'GetRecipesState.initial()';
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
    required TResult Function(List<RecipeModel> recipes) loadSuccess,
    required TResult Function(String message) loadMessage,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<RecipeModel> recipes)? loadSuccess,
    TResult? Function(String message)? loadMessage,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<RecipeModel> recipes)? loadSuccess,
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

abstract class _Initial implements GetRecipesState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RecipeModel> recipes});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$GetRecipesStateCopyWithImpl<$Res, _$_LoadSuccess>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
  }) {
    return _then(_$_LoadSuccess(
      recipes: null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeModel>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess({required final List<RecipeModel> recipes})
      : _recipes = recipes;

  final List<RecipeModel> _recipes;
  @override
  List<RecipeModel> get recipes {
    if (_recipes is EqualUnmodifiableListView) return _recipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  @override
  String toString() {
    return 'GetRecipesState.loadSuccess(recipes: $recipes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            const DeepCollectionEquality().equals(other._recipes, _recipes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_recipes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<RecipeModel> recipes) loadSuccess,
    required TResult Function(String message) loadMessage,
  }) {
    return loadSuccess(recipes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<RecipeModel> recipes)? loadSuccess,
    TResult? Function(String message)? loadMessage,
  }) {
    return loadSuccess?.call(recipes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<RecipeModel> recipes)? loadSuccess,
    TResult Function(String message)? loadMessage,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(recipes);
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

abstract class _LoadSuccess implements GetRecipesState {
  const factory _LoadSuccess({required final List<RecipeModel> recipes}) =
      _$_LoadSuccess;

  List<RecipeModel> get recipes;
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
    extends _$GetRecipesStateCopyWithImpl<$Res, _$_LoadMessage>
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
    return 'GetRecipesState.loadMessage(message: $message)';
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
    required TResult Function(List<RecipeModel> recipes) loadSuccess,
    required TResult Function(String message) loadMessage,
  }) {
    return loadMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<RecipeModel> recipes)? loadSuccess,
    TResult? Function(String message)? loadMessage,
  }) {
    return loadMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<RecipeModel> recipes)? loadSuccess,
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

abstract class _LoadMessage implements GetRecipesState {
  const factory _LoadMessage({required final String message}) = _$_LoadMessage;

  String get message;
  @JsonKey(ignore: true)
  _$$_LoadMessageCopyWith<_$_LoadMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetRecipesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRecipes,
    required TResult Function(List<RecipeModel> recipes) pushRecipes,
    required TResult Function(String message) pushMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRecipes,
    TResult? Function(List<RecipeModel> recipes)? pushRecipes,
    TResult? Function(String message)? pushMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRecipes,
    TResult Function(List<RecipeModel> recipes)? pushRecipes,
    TResult Function(String message)? pushMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRecipesEvent value) getRecipes,
    required TResult Function(_PushRecipe value) pushRecipes,
    required TResult Function(_PushMessage value) pushMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRecipesEvent value)? getRecipes,
    TResult? Function(_PushRecipe value)? pushRecipes,
    TResult? Function(_PushMessage value)? pushMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRecipesEvent value)? getRecipes,
    TResult Function(_PushRecipe value)? pushRecipes,
    TResult Function(_PushMessage value)? pushMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetRecipesEventCopyWith<$Res> {
  factory $GetRecipesEventCopyWith(
          GetRecipesEvent value, $Res Function(GetRecipesEvent) then) =
      _$GetRecipesEventCopyWithImpl<$Res, GetRecipesEvent>;
}

/// @nodoc
class _$GetRecipesEventCopyWithImpl<$Res, $Val extends GetRecipesEvent>
    implements $GetRecipesEventCopyWith<$Res> {
  _$GetRecipesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetRecipesEventCopyWith<$Res> {
  factory _$$_GetRecipesEventCopyWith(
          _$_GetRecipesEvent value, $Res Function(_$_GetRecipesEvent) then) =
      __$$_GetRecipesEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetRecipesEventCopyWithImpl<$Res>
    extends _$GetRecipesEventCopyWithImpl<$Res, _$_GetRecipesEvent>
    implements _$$_GetRecipesEventCopyWith<$Res> {
  __$$_GetRecipesEventCopyWithImpl(
      _$_GetRecipesEvent _value, $Res Function(_$_GetRecipesEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetRecipesEvent implements _GetRecipesEvent {
  const _$_GetRecipesEvent();

  @override
  String toString() {
    return 'GetRecipesEvent.getRecipes()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetRecipesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRecipes,
    required TResult Function(List<RecipeModel> recipes) pushRecipes,
    required TResult Function(String message) pushMessage,
  }) {
    return getRecipes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRecipes,
    TResult? Function(List<RecipeModel> recipes)? pushRecipes,
    TResult? Function(String message)? pushMessage,
  }) {
    return getRecipes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRecipes,
    TResult Function(List<RecipeModel> recipes)? pushRecipes,
    TResult Function(String message)? pushMessage,
    required TResult orElse(),
  }) {
    if (getRecipes != null) {
      return getRecipes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRecipesEvent value) getRecipes,
    required TResult Function(_PushRecipe value) pushRecipes,
    required TResult Function(_PushMessage value) pushMessage,
  }) {
    return getRecipes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRecipesEvent value)? getRecipes,
    TResult? Function(_PushRecipe value)? pushRecipes,
    TResult? Function(_PushMessage value)? pushMessage,
  }) {
    return getRecipes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRecipesEvent value)? getRecipes,
    TResult Function(_PushRecipe value)? pushRecipes,
    TResult Function(_PushMessage value)? pushMessage,
    required TResult orElse(),
  }) {
    if (getRecipes != null) {
      return getRecipes(this);
    }
    return orElse();
  }
}

abstract class _GetRecipesEvent implements GetRecipesEvent {
  const factory _GetRecipesEvent() = _$_GetRecipesEvent;
}

/// @nodoc
abstract class _$$_PushRecipeCopyWith<$Res> {
  factory _$$_PushRecipeCopyWith(
          _$_PushRecipe value, $Res Function(_$_PushRecipe) then) =
      __$$_PushRecipeCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RecipeModel> recipes});
}

/// @nodoc
class __$$_PushRecipeCopyWithImpl<$Res>
    extends _$GetRecipesEventCopyWithImpl<$Res, _$_PushRecipe>
    implements _$$_PushRecipeCopyWith<$Res> {
  __$$_PushRecipeCopyWithImpl(
      _$_PushRecipe _value, $Res Function(_$_PushRecipe) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
  }) {
    return _then(_$_PushRecipe(
      recipes: null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeModel>,
    ));
  }
}

/// @nodoc

class _$_PushRecipe implements _PushRecipe {
  const _$_PushRecipe({required final List<RecipeModel> recipes})
      : _recipes = recipes;

  final List<RecipeModel> _recipes;
  @override
  List<RecipeModel> get recipes {
    if (_recipes is EqualUnmodifiableListView) return _recipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  @override
  String toString() {
    return 'GetRecipesEvent.pushRecipes(recipes: $recipes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PushRecipe &&
            const DeepCollectionEquality().equals(other._recipes, _recipes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_recipes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PushRecipeCopyWith<_$_PushRecipe> get copyWith =>
      __$$_PushRecipeCopyWithImpl<_$_PushRecipe>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRecipes,
    required TResult Function(List<RecipeModel> recipes) pushRecipes,
    required TResult Function(String message) pushMessage,
  }) {
    return pushRecipes(recipes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRecipes,
    TResult? Function(List<RecipeModel> recipes)? pushRecipes,
    TResult? Function(String message)? pushMessage,
  }) {
    return pushRecipes?.call(recipes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRecipes,
    TResult Function(List<RecipeModel> recipes)? pushRecipes,
    TResult Function(String message)? pushMessage,
    required TResult orElse(),
  }) {
    if (pushRecipes != null) {
      return pushRecipes(recipes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRecipesEvent value) getRecipes,
    required TResult Function(_PushRecipe value) pushRecipes,
    required TResult Function(_PushMessage value) pushMessage,
  }) {
    return pushRecipes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRecipesEvent value)? getRecipes,
    TResult? Function(_PushRecipe value)? pushRecipes,
    TResult? Function(_PushMessage value)? pushMessage,
  }) {
    return pushRecipes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRecipesEvent value)? getRecipes,
    TResult Function(_PushRecipe value)? pushRecipes,
    TResult Function(_PushMessage value)? pushMessage,
    required TResult orElse(),
  }) {
    if (pushRecipes != null) {
      return pushRecipes(this);
    }
    return orElse();
  }
}

abstract class _PushRecipe implements GetRecipesEvent {
  const factory _PushRecipe({required final List<RecipeModel> recipes}) =
      _$_PushRecipe;

  List<RecipeModel> get recipes;
  @JsonKey(ignore: true)
  _$$_PushRecipeCopyWith<_$_PushRecipe> get copyWith =>
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
    extends _$GetRecipesEventCopyWithImpl<$Res, _$_PushMessage>
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
    return 'GetRecipesEvent.pushMessage(message: $message)';
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
    required TResult Function() getRecipes,
    required TResult Function(List<RecipeModel> recipes) pushRecipes,
    required TResult Function(String message) pushMessage,
  }) {
    return pushMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRecipes,
    TResult? Function(List<RecipeModel> recipes)? pushRecipes,
    TResult? Function(String message)? pushMessage,
  }) {
    return pushMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRecipes,
    TResult Function(List<RecipeModel> recipes)? pushRecipes,
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
    required TResult Function(_GetRecipesEvent value) getRecipes,
    required TResult Function(_PushRecipe value) pushRecipes,
    required TResult Function(_PushMessage value) pushMessage,
  }) {
    return pushMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRecipesEvent value)? getRecipes,
    TResult? Function(_PushRecipe value)? pushRecipes,
    TResult? Function(_PushMessage value)? pushMessage,
  }) {
    return pushMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRecipesEvent value)? getRecipes,
    TResult Function(_PushRecipe value)? pushRecipes,
    TResult Function(_PushMessage value)? pushMessage,
    required TResult orElse(),
  }) {
    if (pushMessage != null) {
      return pushMessage(this);
    }
    return orElse();
  }
}

abstract class _PushMessage implements GetRecipesEvent {
  const factory _PushMessage({required final String message}) = _$_PushMessage;

  String get message;
  @JsonKey(ignore: true)
  _$$_PushMessageCopyWith<_$_PushMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
