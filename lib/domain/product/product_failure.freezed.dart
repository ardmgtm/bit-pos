// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductFailureTearOff {
  const _$ProductFailureTearOff();

  _ProductFailure call({String? message}) {
    return _ProductFailure(
      message: message,
    );
  }

  _LocalDbFailure localDbFailure() {
    return const _LocalDbFailure();
  }

  _Unexpected unexpected() {
    return const _Unexpected();
  }
}

/// @nodoc
const $ProductFailure = _$ProductFailureTearOff();

/// @nodoc
mixin _$ProductFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function() localDbFailure,
    required TResult Function() unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? localDbFailure,
    TResult Function()? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? localDbFailure,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ProductFailure value) $default, {
    required TResult Function(_LocalDbFailure value) localDbFailure,
    required TResult Function(_Unexpected value) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_ProductFailure value)? $default, {
    TResult Function(_LocalDbFailure value)? localDbFailure,
    TResult Function(_Unexpected value)? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ProductFailure value)? $default, {
    TResult Function(_LocalDbFailure value)? localDbFailure,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductFailureCopyWith<$Res> {
  factory $ProductFailureCopyWith(
          ProductFailure value, $Res Function(ProductFailure) then) =
      _$ProductFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductFailureCopyWithImpl<$Res>
    implements $ProductFailureCopyWith<$Res> {
  _$ProductFailureCopyWithImpl(this._value, this._then);

  final ProductFailure _value;
  // ignore: unused_field
  final $Res Function(ProductFailure) _then;
}

/// @nodoc
abstract class _$ProductFailureCopyWith<$Res> {
  factory _$ProductFailureCopyWith(
          _ProductFailure value, $Res Function(_ProductFailure) then) =
      __$ProductFailureCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$ProductFailureCopyWithImpl<$Res>
    extends _$ProductFailureCopyWithImpl<$Res>
    implements _$ProductFailureCopyWith<$Res> {
  __$ProductFailureCopyWithImpl(
      _ProductFailure _value, $Res Function(_ProductFailure) _then)
      : super(_value, (v) => _then(v as _ProductFailure));

  @override
  _ProductFailure get _value => super._value as _ProductFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_ProductFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ProductFailure implements _ProductFailure {
  const _$_ProductFailure({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'ProductFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$ProductFailureCopyWith<_ProductFailure> get copyWith =>
      __$ProductFailureCopyWithImpl<_ProductFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function() localDbFailure,
    required TResult Function() unexpected,
  }) {
    return $default(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? localDbFailure,
    TResult Function()? unexpected,
  }) {
    return $default?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? localDbFailure,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ProductFailure value) $default, {
    required TResult Function(_LocalDbFailure value) localDbFailure,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_ProductFailure value)? $default, {
    TResult Function(_LocalDbFailure value)? localDbFailure,
    TResult Function(_Unexpected value)? unexpected,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ProductFailure value)? $default, {
    TResult Function(_LocalDbFailure value)? localDbFailure,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _ProductFailure implements ProductFailure {
  const factory _ProductFailure({String? message}) = _$_ProductFailure;

  String? get message;
  @JsonKey(ignore: true)
  _$ProductFailureCopyWith<_ProductFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LocalDbFailureCopyWith<$Res> {
  factory _$LocalDbFailureCopyWith(
          _LocalDbFailure value, $Res Function(_LocalDbFailure) then) =
      __$LocalDbFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$LocalDbFailureCopyWithImpl<$Res>
    extends _$ProductFailureCopyWithImpl<$Res>
    implements _$LocalDbFailureCopyWith<$Res> {
  __$LocalDbFailureCopyWithImpl(
      _LocalDbFailure _value, $Res Function(_LocalDbFailure) _then)
      : super(_value, (v) => _then(v as _LocalDbFailure));

  @override
  _LocalDbFailure get _value => super._value as _LocalDbFailure;
}

/// @nodoc

class _$_LocalDbFailure implements _LocalDbFailure {
  const _$_LocalDbFailure();

  @override
  String toString() {
    return 'ProductFailure.localDbFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LocalDbFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function() localDbFailure,
    required TResult Function() unexpected,
  }) {
    return localDbFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? localDbFailure,
    TResult Function()? unexpected,
  }) {
    return localDbFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? localDbFailure,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (localDbFailure != null) {
      return localDbFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ProductFailure value) $default, {
    required TResult Function(_LocalDbFailure value) localDbFailure,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return localDbFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_ProductFailure value)? $default, {
    TResult Function(_LocalDbFailure value)? localDbFailure,
    TResult Function(_Unexpected value)? unexpected,
  }) {
    return localDbFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ProductFailure value)? $default, {
    TResult Function(_LocalDbFailure value)? localDbFailure,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (localDbFailure != null) {
      return localDbFailure(this);
    }
    return orElse();
  }
}

abstract class _LocalDbFailure implements ProductFailure {
  const factory _LocalDbFailure() = _$_LocalDbFailure;
}

/// @nodoc
abstract class _$UnexpectedCopyWith<$Res> {
  factory _$UnexpectedCopyWith(
          _Unexpected value, $Res Function(_Unexpected) then) =
      __$UnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnexpectedCopyWithImpl<$Res> extends _$ProductFailureCopyWithImpl<$Res>
    implements _$UnexpectedCopyWith<$Res> {
  __$UnexpectedCopyWithImpl(
      _Unexpected _value, $Res Function(_Unexpected) _then)
      : super(_value, (v) => _then(v as _Unexpected));

  @override
  _Unexpected get _value => super._value as _Unexpected;
}

/// @nodoc

class _$_Unexpected implements _Unexpected {
  const _$_Unexpected();

  @override
  String toString() {
    return 'ProductFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function() localDbFailure,
    required TResult Function() unexpected,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? localDbFailure,
    TResult Function()? unexpected,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function()? localDbFailure,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ProductFailure value) $default, {
    required TResult Function(_LocalDbFailure value) localDbFailure,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_ProductFailure value)? $default, {
    TResult Function(_LocalDbFailure value)? localDbFailure,
    TResult Function(_Unexpected value)? unexpected,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ProductFailure value)? $default, {
    TResult Function(_LocalDbFailure value)? localDbFailure,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements ProductFailure {
  const factory _Unexpected() = _$_Unexpected;
}
