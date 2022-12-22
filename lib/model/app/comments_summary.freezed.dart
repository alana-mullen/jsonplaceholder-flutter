// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$CommentsSummaryCopyWithImpl<$Res, CommentsSummary>;
  @useResult
  $Res call({int id, String name, String email, String body});
}

/// @nodoc
class _$CommentsSummaryCopyWithImpl<$Res, $Val extends CommentsSummary>
    implements $CommentsSummaryCopyWith<$Res> {
  _$CommentsSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommentsSummaryCopyWith<$Res>
    implements $CommentsSummaryCopyWith<$Res> {
  factory _$$_CommentsSummaryCopyWith(
          _$_CommentsSummary value, $Res Function(_$_CommentsSummary) then) =
      __$$_CommentsSummaryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String email, String body});
}

/// @nodoc
class __$$_CommentsSummaryCopyWithImpl<$Res>
    extends _$CommentsSummaryCopyWithImpl<$Res, _$_CommentsSummary>
    implements _$$_CommentsSummaryCopyWith<$Res> {
  __$$_CommentsSummaryCopyWithImpl(
      _$_CommentsSummary _value, $Res Function(_$_CommentsSummary) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? body = null,
  }) {
    return _then(_$_CommentsSummary(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
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
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, email, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
