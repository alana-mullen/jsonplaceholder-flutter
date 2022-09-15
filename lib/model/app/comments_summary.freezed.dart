// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comments_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CommentsSummary {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentsSummaryCopyWith<CommentsSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsSummaryCopyWith<$Res> {
  factory $CommentsSummaryCopyWith(
          CommentsSummary value, $Res Function(CommentsSummary) then) =
      _$CommentsSummaryCopyWithImpl<$Res>;
  $Res call({int id, String name, String email, String body});
}

/// @nodoc
class _$CommentsSummaryCopyWithImpl<$Res>
    implements $CommentsSummaryCopyWith<$Res> {
  _$CommentsSummaryCopyWithImpl(this._value, this._then);

  final CommentsSummary _value;
  // ignore: unused_field
  final $Res Function(CommentsSummary) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CommentsSummaryCopyWith<$Res>
    implements $CommentsSummaryCopyWith<$Res> {
  factory _$$_CommentsSummaryCopyWith(
          _$_CommentsSummary value, $Res Function(_$_CommentsSummary) then) =
      __$$_CommentsSummaryCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String email, String body});
}

/// @nodoc
class __$$_CommentsSummaryCopyWithImpl<$Res>
    extends _$CommentsSummaryCopyWithImpl<$Res>
    implements _$$_CommentsSummaryCopyWith<$Res> {
  __$$_CommentsSummaryCopyWithImpl(
      _$_CommentsSummary _value, $Res Function(_$_CommentsSummary) _then)
      : super(_value, (v) => _then(v as _$_CommentsSummary));

  @override
  _$_CommentsSummary get _value => super._value as _$_CommentsSummary;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? body = freezed,
  }) {
    return _then(_$_CommentsSummary(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CommentsSummary implements _CommentsSummary {
  const _$_CommentsSummary(
      {required this.id,
      required this.name,
      required this.email,
      required this.body});

  @override
  final int id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String body;

  @override
  String toString() {
    return 'CommentsSummary(id: $id, name: $name, email: $email, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommentsSummary &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.body, body));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(body));

  @JsonKey(ignore: true)
  @override
  _$$_CommentsSummaryCopyWith<_$_CommentsSummary> get copyWith =>
      __$$_CommentsSummaryCopyWithImpl<_$_CommentsSummary>(this, _$identity);
}

abstract class _CommentsSummary implements CommentsSummary {
  const factory _CommentsSummary(
      {required final int id,
      required final String name,
      required final String email,
      required final String body}) = _$_CommentsSummary;

  @override
  int get id;
  @override
  String get name;
  @override
  String get email;
  @override
  String get body;
  @override
  @JsonKey(ignore: true)
  _$$_CommentsSummaryCopyWith<_$_CommentsSummary> get copyWith =>
      throw _privateConstructorUsedError;
}
