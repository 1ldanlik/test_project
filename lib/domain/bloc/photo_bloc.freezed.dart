// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PhotoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPhotos,
    required TResult Function() fetchPhotos,
    required TResult Function() addToFavorites,
    required TResult Function() removeFromFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPhotos,
    TResult? Function()? fetchPhotos,
    TResult? Function()? addToFavorites,
    TResult? Function()? removeFromFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPhotos,
    TResult Function()? fetchPhotos,
    TResult Function()? addToFavorites,
    TResult Function()? removeFromFavorites,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPhotos value) getPhotos,
    required TResult Function(_FetchPhotos value) fetchPhotos,
    required TResult Function(_AddToFavorites value) addToFavorites,
    required TResult Function(_RemoveFromFavorites value) removeFromFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPhotos value)? getPhotos,
    TResult? Function(_FetchPhotos value)? fetchPhotos,
    TResult? Function(_AddToFavorites value)? addToFavorites,
    TResult? Function(_RemoveFromFavorites value)? removeFromFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPhotos value)? getPhotos,
    TResult Function(_FetchPhotos value)? fetchPhotos,
    TResult Function(_AddToFavorites value)? addToFavorites,
    TResult Function(_RemoveFromFavorites value)? removeFromFavorites,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoEventCopyWith<$Res> {
  factory $PhotoEventCopyWith(
          PhotoEvent value, $Res Function(PhotoEvent) then) =
      _$PhotoEventCopyWithImpl<$Res, PhotoEvent>;
}

/// @nodoc
class _$PhotoEventCopyWithImpl<$Res, $Val extends PhotoEvent>
    implements $PhotoEventCopyWith<$Res> {
  _$PhotoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetPhotosCopyWith<$Res> {
  factory _$$_GetPhotosCopyWith(
          _$_GetPhotos value, $Res Function(_$_GetPhotos) then) =
      __$$_GetPhotosCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetPhotosCopyWithImpl<$Res>
    extends _$PhotoEventCopyWithImpl<$Res, _$_GetPhotos>
    implements _$$_GetPhotosCopyWith<$Res> {
  __$$_GetPhotosCopyWithImpl(
      _$_GetPhotos _value, $Res Function(_$_GetPhotos) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetPhotos implements _GetPhotos {
  const _$_GetPhotos();

  @override
  String toString() {
    return 'PhotoEvent.getPhotos()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetPhotos);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPhotos,
    required TResult Function() fetchPhotos,
    required TResult Function() addToFavorites,
    required TResult Function() removeFromFavorites,
  }) {
    return getPhotos();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPhotos,
    TResult? Function()? fetchPhotos,
    TResult? Function()? addToFavorites,
    TResult? Function()? removeFromFavorites,
  }) {
    return getPhotos?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPhotos,
    TResult Function()? fetchPhotos,
    TResult Function()? addToFavorites,
    TResult Function()? removeFromFavorites,
    required TResult orElse(),
  }) {
    if (getPhotos != null) {
      return getPhotos();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPhotos value) getPhotos,
    required TResult Function(_FetchPhotos value) fetchPhotos,
    required TResult Function(_AddToFavorites value) addToFavorites,
    required TResult Function(_RemoveFromFavorites value) removeFromFavorites,
  }) {
    return getPhotos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPhotos value)? getPhotos,
    TResult? Function(_FetchPhotos value)? fetchPhotos,
    TResult? Function(_AddToFavorites value)? addToFavorites,
    TResult? Function(_RemoveFromFavorites value)? removeFromFavorites,
  }) {
    return getPhotos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPhotos value)? getPhotos,
    TResult Function(_FetchPhotos value)? fetchPhotos,
    TResult Function(_AddToFavorites value)? addToFavorites,
    TResult Function(_RemoveFromFavorites value)? removeFromFavorites,
    required TResult orElse(),
  }) {
    if (getPhotos != null) {
      return getPhotos(this);
    }
    return orElse();
  }
}

abstract class _GetPhotos implements PhotoEvent {
  const factory _GetPhotos() = _$_GetPhotos;
}

/// @nodoc
abstract class _$$_FetchPhotosCopyWith<$Res> {
  factory _$$_FetchPhotosCopyWith(
          _$_FetchPhotos value, $Res Function(_$_FetchPhotos) then) =
      __$$_FetchPhotosCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchPhotosCopyWithImpl<$Res>
    extends _$PhotoEventCopyWithImpl<$Res, _$_FetchPhotos>
    implements _$$_FetchPhotosCopyWith<$Res> {
  __$$_FetchPhotosCopyWithImpl(
      _$_FetchPhotos _value, $Res Function(_$_FetchPhotos) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchPhotos implements _FetchPhotos {
  const _$_FetchPhotos();

  @override
  String toString() {
    return 'PhotoEvent.fetchPhotos()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchPhotos);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPhotos,
    required TResult Function() fetchPhotos,
    required TResult Function() addToFavorites,
    required TResult Function() removeFromFavorites,
  }) {
    return fetchPhotos();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPhotos,
    TResult? Function()? fetchPhotos,
    TResult? Function()? addToFavorites,
    TResult? Function()? removeFromFavorites,
  }) {
    return fetchPhotos?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPhotos,
    TResult Function()? fetchPhotos,
    TResult Function()? addToFavorites,
    TResult Function()? removeFromFavorites,
    required TResult orElse(),
  }) {
    if (fetchPhotos != null) {
      return fetchPhotos();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPhotos value) getPhotos,
    required TResult Function(_FetchPhotos value) fetchPhotos,
    required TResult Function(_AddToFavorites value) addToFavorites,
    required TResult Function(_RemoveFromFavorites value) removeFromFavorites,
  }) {
    return fetchPhotos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPhotos value)? getPhotos,
    TResult? Function(_FetchPhotos value)? fetchPhotos,
    TResult? Function(_AddToFavorites value)? addToFavorites,
    TResult? Function(_RemoveFromFavorites value)? removeFromFavorites,
  }) {
    return fetchPhotos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPhotos value)? getPhotos,
    TResult Function(_FetchPhotos value)? fetchPhotos,
    TResult Function(_AddToFavorites value)? addToFavorites,
    TResult Function(_RemoveFromFavorites value)? removeFromFavorites,
    required TResult orElse(),
  }) {
    if (fetchPhotos != null) {
      return fetchPhotos(this);
    }
    return orElse();
  }
}

abstract class _FetchPhotos implements PhotoEvent {
  const factory _FetchPhotos() = _$_FetchPhotos;
}

/// @nodoc
abstract class _$$_AddToFavoritesCopyWith<$Res> {
  factory _$$_AddToFavoritesCopyWith(
          _$_AddToFavorites value, $Res Function(_$_AddToFavorites) then) =
      __$$_AddToFavoritesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AddToFavoritesCopyWithImpl<$Res>
    extends _$PhotoEventCopyWithImpl<$Res, _$_AddToFavorites>
    implements _$$_AddToFavoritesCopyWith<$Res> {
  __$$_AddToFavoritesCopyWithImpl(
      _$_AddToFavorites _value, $Res Function(_$_AddToFavorites) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AddToFavorites implements _AddToFavorites {
  const _$_AddToFavorites();

  @override
  String toString() {
    return 'PhotoEvent.addToFavorites()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AddToFavorites);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPhotos,
    required TResult Function() fetchPhotos,
    required TResult Function() addToFavorites,
    required TResult Function() removeFromFavorites,
  }) {
    return addToFavorites();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPhotos,
    TResult? Function()? fetchPhotos,
    TResult? Function()? addToFavorites,
    TResult? Function()? removeFromFavorites,
  }) {
    return addToFavorites?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPhotos,
    TResult Function()? fetchPhotos,
    TResult Function()? addToFavorites,
    TResult Function()? removeFromFavorites,
    required TResult orElse(),
  }) {
    if (addToFavorites != null) {
      return addToFavorites();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPhotos value) getPhotos,
    required TResult Function(_FetchPhotos value) fetchPhotos,
    required TResult Function(_AddToFavorites value) addToFavorites,
    required TResult Function(_RemoveFromFavorites value) removeFromFavorites,
  }) {
    return addToFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPhotos value)? getPhotos,
    TResult? Function(_FetchPhotos value)? fetchPhotos,
    TResult? Function(_AddToFavorites value)? addToFavorites,
    TResult? Function(_RemoveFromFavorites value)? removeFromFavorites,
  }) {
    return addToFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPhotos value)? getPhotos,
    TResult Function(_FetchPhotos value)? fetchPhotos,
    TResult Function(_AddToFavorites value)? addToFavorites,
    TResult Function(_RemoveFromFavorites value)? removeFromFavorites,
    required TResult orElse(),
  }) {
    if (addToFavorites != null) {
      return addToFavorites(this);
    }
    return orElse();
  }
}

abstract class _AddToFavorites implements PhotoEvent {
  const factory _AddToFavorites() = _$_AddToFavorites;
}

/// @nodoc
abstract class _$$_RemoveFromFavoritesCopyWith<$Res> {
  factory _$$_RemoveFromFavoritesCopyWith(_$_RemoveFromFavorites value,
          $Res Function(_$_RemoveFromFavorites) then) =
      __$$_RemoveFromFavoritesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RemoveFromFavoritesCopyWithImpl<$Res>
    extends _$PhotoEventCopyWithImpl<$Res, _$_RemoveFromFavorites>
    implements _$$_RemoveFromFavoritesCopyWith<$Res> {
  __$$_RemoveFromFavoritesCopyWithImpl(_$_RemoveFromFavorites _value,
      $Res Function(_$_RemoveFromFavorites) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RemoveFromFavorites implements _RemoveFromFavorites {
  const _$_RemoveFromFavorites();

  @override
  String toString() {
    return 'PhotoEvent.removeFromFavorites()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RemoveFromFavorites);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPhotos,
    required TResult Function() fetchPhotos,
    required TResult Function() addToFavorites,
    required TResult Function() removeFromFavorites,
  }) {
    return removeFromFavorites();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPhotos,
    TResult? Function()? fetchPhotos,
    TResult? Function()? addToFavorites,
    TResult? Function()? removeFromFavorites,
  }) {
    return removeFromFavorites?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPhotos,
    TResult Function()? fetchPhotos,
    TResult Function()? addToFavorites,
    TResult Function()? removeFromFavorites,
    required TResult orElse(),
  }) {
    if (removeFromFavorites != null) {
      return removeFromFavorites();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPhotos value) getPhotos,
    required TResult Function(_FetchPhotos value) fetchPhotos,
    required TResult Function(_AddToFavorites value) addToFavorites,
    required TResult Function(_RemoveFromFavorites value) removeFromFavorites,
  }) {
    return removeFromFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPhotos value)? getPhotos,
    TResult? Function(_FetchPhotos value)? fetchPhotos,
    TResult? Function(_AddToFavorites value)? addToFavorites,
    TResult? Function(_RemoveFromFavorites value)? removeFromFavorites,
  }) {
    return removeFromFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPhotos value)? getPhotos,
    TResult Function(_FetchPhotos value)? fetchPhotos,
    TResult Function(_AddToFavorites value)? addToFavorites,
    TResult Function(_RemoveFromFavorites value)? removeFromFavorites,
    required TResult orElse(),
  }) {
    if (removeFromFavorites != null) {
      return removeFromFavorites(this);
    }
    return orElse();
  }
}

abstract class _RemoveFromFavorites implements PhotoEvent {
  const factory _RemoveFromFavorites() = _$_RemoveFromFavorites;
}

/// @nodoc
mixin _$PhotoState {
  List<PhotoModel> get elements => throw _privateConstructorUsedError;
  List<PhotoModel> get favorites => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<PhotoModel> elements, List<PhotoModel> favorites)
        base,
    required TResult Function(List<PhotoModel> elements,
            List<PhotoModel> favorites, Exception exception)
        error,
    required TResult Function(
            List<PhotoModel> elements, List<PhotoModel> favorites)
        loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PhotoModel> elements, List<PhotoModel> favorites)?
        base,
    TResult? Function(List<PhotoModel> elements, List<PhotoModel> favorites,
            Exception exception)?
        error,
    TResult? Function(List<PhotoModel> elements, List<PhotoModel> favorites)?
        loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PhotoModel> elements, List<PhotoModel> favorites)?
        base,
    TResult Function(List<PhotoModel> elements, List<PhotoModel> favorites,
            Exception exception)?
        error,
    TResult Function(List<PhotoModel> elements, List<PhotoModel> favorites)?
        loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BasePhotoState value) base,
    required TResult Function(_ErrorPhotoState value) error,
    required TResult Function(_LoadingPhotoState value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BasePhotoState value)? base,
    TResult? Function(_ErrorPhotoState value)? error,
    TResult? Function(_LoadingPhotoState value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BasePhotoState value)? base,
    TResult Function(_ErrorPhotoState value)? error,
    TResult Function(_LoadingPhotoState value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhotoStateCopyWith<PhotoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoStateCopyWith<$Res> {
  factory $PhotoStateCopyWith(
          PhotoState value, $Res Function(PhotoState) then) =
      _$PhotoStateCopyWithImpl<$Res, PhotoState>;
  @useResult
  $Res call({List<PhotoModel> elements, List<PhotoModel> favorites});
}

/// @nodoc
class _$PhotoStateCopyWithImpl<$Res, $Val extends PhotoState>
    implements $PhotoStateCopyWith<$Res> {
  _$PhotoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? elements = null,
    Object? favorites = null,
  }) {
    return _then(_value.copyWith(
      elements: null == elements
          ? _value.elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<PhotoModel>,
      favorites: null == favorites
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<PhotoModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BasePhotoStateCopyWith<$Res>
    implements $PhotoStateCopyWith<$Res> {
  factory _$$_BasePhotoStateCopyWith(
          _$_BasePhotoState value, $Res Function(_$_BasePhotoState) then) =
      __$$_BasePhotoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PhotoModel> elements, List<PhotoModel> favorites});
}

/// @nodoc
class __$$_BasePhotoStateCopyWithImpl<$Res>
    extends _$PhotoStateCopyWithImpl<$Res, _$_BasePhotoState>
    implements _$$_BasePhotoStateCopyWith<$Res> {
  __$$_BasePhotoStateCopyWithImpl(
      _$_BasePhotoState _value, $Res Function(_$_BasePhotoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? elements = null,
    Object? favorites = null,
  }) {
    return _then(_$_BasePhotoState(
      elements: null == elements
          ? _value._elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<PhotoModel>,
      favorites: null == favorites
          ? _value._favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<PhotoModel>,
    ));
  }
}

/// @nodoc

class _$_BasePhotoState implements _BasePhotoState {
  const _$_BasePhotoState(
      {required final List<PhotoModel> elements,
      required final List<PhotoModel> favorites})
      : _elements = elements,
        _favorites = favorites;

  final List<PhotoModel> _elements;
  @override
  List<PhotoModel> get elements {
    if (_elements is EqualUnmodifiableListView) return _elements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_elements);
  }

  final List<PhotoModel> _favorites;
  @override
  List<PhotoModel> get favorites {
    if (_favorites is EqualUnmodifiableListView) return _favorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorites);
  }

  @override
  String toString() {
    return 'PhotoState.base(elements: $elements, favorites: $favorites)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BasePhotoState &&
            const DeepCollectionEquality().equals(other._elements, _elements) &&
            const DeepCollectionEquality()
                .equals(other._favorites, _favorites));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_elements),
      const DeepCollectionEquality().hash(_favorites));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BasePhotoStateCopyWith<_$_BasePhotoState> get copyWith =>
      __$$_BasePhotoStateCopyWithImpl<_$_BasePhotoState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<PhotoModel> elements, List<PhotoModel> favorites)
        base,
    required TResult Function(List<PhotoModel> elements,
            List<PhotoModel> favorites, Exception exception)
        error,
    required TResult Function(
            List<PhotoModel> elements, List<PhotoModel> favorites)
        loading,
  }) {
    return base(elements, favorites);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PhotoModel> elements, List<PhotoModel> favorites)?
        base,
    TResult? Function(List<PhotoModel> elements, List<PhotoModel> favorites,
            Exception exception)?
        error,
    TResult? Function(List<PhotoModel> elements, List<PhotoModel> favorites)?
        loading,
  }) {
    return base?.call(elements, favorites);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PhotoModel> elements, List<PhotoModel> favorites)?
        base,
    TResult Function(List<PhotoModel> elements, List<PhotoModel> favorites,
            Exception exception)?
        error,
    TResult Function(List<PhotoModel> elements, List<PhotoModel> favorites)?
        loading,
    required TResult orElse(),
  }) {
    if (base != null) {
      return base(elements, favorites);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BasePhotoState value) base,
    required TResult Function(_ErrorPhotoState value) error,
    required TResult Function(_LoadingPhotoState value) loading,
  }) {
    return base(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BasePhotoState value)? base,
    TResult? Function(_ErrorPhotoState value)? error,
    TResult? Function(_LoadingPhotoState value)? loading,
  }) {
    return base?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BasePhotoState value)? base,
    TResult Function(_ErrorPhotoState value)? error,
    TResult Function(_LoadingPhotoState value)? loading,
    required TResult orElse(),
  }) {
    if (base != null) {
      return base(this);
    }
    return orElse();
  }
}

abstract class _BasePhotoState implements PhotoState {
  const factory _BasePhotoState(
      {required final List<PhotoModel> elements,
      required final List<PhotoModel> favorites}) = _$_BasePhotoState;

  @override
  List<PhotoModel> get elements;
  @override
  List<PhotoModel> get favorites;
  @override
  @JsonKey(ignore: true)
  _$$_BasePhotoStateCopyWith<_$_BasePhotoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorPhotoStateCopyWith<$Res>
    implements $PhotoStateCopyWith<$Res> {
  factory _$$_ErrorPhotoStateCopyWith(
          _$_ErrorPhotoState value, $Res Function(_$_ErrorPhotoState) then) =
      __$$_ErrorPhotoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PhotoModel> elements,
      List<PhotoModel> favorites,
      Exception exception});
}

/// @nodoc
class __$$_ErrorPhotoStateCopyWithImpl<$Res>
    extends _$PhotoStateCopyWithImpl<$Res, _$_ErrorPhotoState>
    implements _$$_ErrorPhotoStateCopyWith<$Res> {
  __$$_ErrorPhotoStateCopyWithImpl(
      _$_ErrorPhotoState _value, $Res Function(_$_ErrorPhotoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? elements = null,
    Object? favorites = null,
    Object? exception = null,
  }) {
    return _then(_$_ErrorPhotoState(
      elements: null == elements
          ? _value._elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<PhotoModel>,
      favorites: null == favorites
          ? _value._favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<PhotoModel>,
      exception: null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$_ErrorPhotoState implements _ErrorPhotoState {
  const _$_ErrorPhotoState(
      {required final List<PhotoModel> elements,
      required final List<PhotoModel> favorites,
      required this.exception})
      : _elements = elements,
        _favorites = favorites;

  final List<PhotoModel> _elements;
  @override
  List<PhotoModel> get elements {
    if (_elements is EqualUnmodifiableListView) return _elements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_elements);
  }

  final List<PhotoModel> _favorites;
  @override
  List<PhotoModel> get favorites {
    if (_favorites is EqualUnmodifiableListView) return _favorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorites);
  }

  @override
  final Exception exception;

  @override
  String toString() {
    return 'PhotoState.error(elements: $elements, favorites: $favorites, exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorPhotoState &&
            const DeepCollectionEquality().equals(other._elements, _elements) &&
            const DeepCollectionEquality()
                .equals(other._favorites, _favorites) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_elements),
      const DeepCollectionEquality().hash(_favorites),
      exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorPhotoStateCopyWith<_$_ErrorPhotoState> get copyWith =>
      __$$_ErrorPhotoStateCopyWithImpl<_$_ErrorPhotoState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<PhotoModel> elements, List<PhotoModel> favorites)
        base,
    required TResult Function(List<PhotoModel> elements,
            List<PhotoModel> favorites, Exception exception)
        error,
    required TResult Function(
            List<PhotoModel> elements, List<PhotoModel> favorites)
        loading,
  }) {
    return error(elements, favorites, exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PhotoModel> elements, List<PhotoModel> favorites)?
        base,
    TResult? Function(List<PhotoModel> elements, List<PhotoModel> favorites,
            Exception exception)?
        error,
    TResult? Function(List<PhotoModel> elements, List<PhotoModel> favorites)?
        loading,
  }) {
    return error?.call(elements, favorites, exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PhotoModel> elements, List<PhotoModel> favorites)?
        base,
    TResult Function(List<PhotoModel> elements, List<PhotoModel> favorites,
            Exception exception)?
        error,
    TResult Function(List<PhotoModel> elements, List<PhotoModel> favorites)?
        loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(elements, favorites, exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BasePhotoState value) base,
    required TResult Function(_ErrorPhotoState value) error,
    required TResult Function(_LoadingPhotoState value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BasePhotoState value)? base,
    TResult? Function(_ErrorPhotoState value)? error,
    TResult? Function(_LoadingPhotoState value)? loading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BasePhotoState value)? base,
    TResult Function(_ErrorPhotoState value)? error,
    TResult Function(_LoadingPhotoState value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorPhotoState implements PhotoState {
  const factory _ErrorPhotoState(
      {required final List<PhotoModel> elements,
      required final List<PhotoModel> favorites,
      required final Exception exception}) = _$_ErrorPhotoState;

  @override
  List<PhotoModel> get elements;
  @override
  List<PhotoModel> get favorites;
  Exception get exception;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorPhotoStateCopyWith<_$_ErrorPhotoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingPhotoStateCopyWith<$Res>
    implements $PhotoStateCopyWith<$Res> {
  factory _$$_LoadingPhotoStateCopyWith(_$_LoadingPhotoState value,
          $Res Function(_$_LoadingPhotoState) then) =
      __$$_LoadingPhotoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PhotoModel> elements, List<PhotoModel> favorites});
}

/// @nodoc
class __$$_LoadingPhotoStateCopyWithImpl<$Res>
    extends _$PhotoStateCopyWithImpl<$Res, _$_LoadingPhotoState>
    implements _$$_LoadingPhotoStateCopyWith<$Res> {
  __$$_LoadingPhotoStateCopyWithImpl(
      _$_LoadingPhotoState _value, $Res Function(_$_LoadingPhotoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? elements = null,
    Object? favorites = null,
  }) {
    return _then(_$_LoadingPhotoState(
      elements: null == elements
          ? _value._elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<PhotoModel>,
      favorites: null == favorites
          ? _value._favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<PhotoModel>,
    ));
  }
}

/// @nodoc

class _$_LoadingPhotoState implements _LoadingPhotoState {
  const _$_LoadingPhotoState(
      {required final List<PhotoModel> elements,
      required final List<PhotoModel> favorites})
      : _elements = elements,
        _favorites = favorites;

  final List<PhotoModel> _elements;
  @override
  List<PhotoModel> get elements {
    if (_elements is EqualUnmodifiableListView) return _elements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_elements);
  }

  final List<PhotoModel> _favorites;
  @override
  List<PhotoModel> get favorites {
    if (_favorites is EqualUnmodifiableListView) return _favorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorites);
  }

  @override
  String toString() {
    return 'PhotoState.loading(elements: $elements, favorites: $favorites)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadingPhotoState &&
            const DeepCollectionEquality().equals(other._elements, _elements) &&
            const DeepCollectionEquality()
                .equals(other._favorites, _favorites));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_elements),
      const DeepCollectionEquality().hash(_favorites));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingPhotoStateCopyWith<_$_LoadingPhotoState> get copyWith =>
      __$$_LoadingPhotoStateCopyWithImpl<_$_LoadingPhotoState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<PhotoModel> elements, List<PhotoModel> favorites)
        base,
    required TResult Function(List<PhotoModel> elements,
            List<PhotoModel> favorites, Exception exception)
        error,
    required TResult Function(
            List<PhotoModel> elements, List<PhotoModel> favorites)
        loading,
  }) {
    return loading(elements, favorites);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PhotoModel> elements, List<PhotoModel> favorites)?
        base,
    TResult? Function(List<PhotoModel> elements, List<PhotoModel> favorites,
            Exception exception)?
        error,
    TResult? Function(List<PhotoModel> elements, List<PhotoModel> favorites)?
        loading,
  }) {
    return loading?.call(elements, favorites);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PhotoModel> elements, List<PhotoModel> favorites)?
        base,
    TResult Function(List<PhotoModel> elements, List<PhotoModel> favorites,
            Exception exception)?
        error,
    TResult Function(List<PhotoModel> elements, List<PhotoModel> favorites)?
        loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(elements, favorites);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BasePhotoState value) base,
    required TResult Function(_ErrorPhotoState value) error,
    required TResult Function(_LoadingPhotoState value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BasePhotoState value)? base,
    TResult? Function(_ErrorPhotoState value)? error,
    TResult? Function(_LoadingPhotoState value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BasePhotoState value)? base,
    TResult Function(_ErrorPhotoState value)? error,
    TResult Function(_LoadingPhotoState value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingPhotoState implements PhotoState {
  const factory _LoadingPhotoState(
      {required final List<PhotoModel> elements,
      required final List<PhotoModel> favorites}) = _$_LoadingPhotoState;

  @override
  List<PhotoModel> get elements;
  @override
  List<PhotoModel> get favorites;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingPhotoStateCopyWith<_$_LoadingPhotoState> get copyWith =>
      throw _privateConstructorUsedError;
}
