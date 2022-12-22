// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'posts_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostsSummary {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get userAvatar => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostsSummaryCopyWith<PostsSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsSummaryCopyWith<$Res> {
  factory $PostsSummaryCopyWith(
          PostsSummary value, $Res Function(PostsSummary) then) =
      _$PostsSummaryCopyWithImpl<$Res, PostsSummary>;
  @useResult
  $Res call(
      {int id,
      String title,
      String body,
      String userId,
      String userName,
      String userAvatar});
}

/// @nodoc
class _$PostsSummaryCopyWithImpl<$Res, $Val extends PostsSummary>
    implements $PostsSummaryCopyWith<$Res> {
  _$PostsSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? body = null,
    Object? userId = null,
    Object? userName = null,
    Object? userAvatar = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userAvatar: null == userAvatar
          ? _value.userAvatar
          : userAvatar // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostsSummaryCopyWith<$Res>
    implements $PostsSummaryCopyWith<$Res> {
  factory _$$_PostsSummaryCopyWith(
          _$_PostsSummary value, $Res Function(_$_PostsSummary) then) =
      __$$_PostsSummaryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String body,
      String userId,
      String userName,
      String userAvatar});
}

/// @nodoc
class __$$_PostsSummaryCopyWithImpl<$Res>
    extends _$PostsSummaryCopyWithImpl<$Res, _$_PostsSummary>
    implements _$$_PostsSummaryCopyWith<$Res> {
  __$$_PostsSummaryCopyWithImpl(
      _$_PostsSummary _value, $Res Function(_$_PostsSummary) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? body = null,
    Object? userId = null,
    Object? userName = null,
    Object? userAvatar = null,
  }) {
    return _then(_$_PostsSummary(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userAvatar: null == userAvatar
          ? _value.userAvatar
          : userAvatar // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PostsSummary implements _PostsSummary {
  const _$_PostsSummary(
      {required this.id,
      required this.title,
      required this.body,
      required this.userId,
      required this.userName,
      required this.userAvatar});

  @override
  final int id;
  @override
  final String title;
  @override
  final String body;
  @override
  final String userId;
  @override
  final String userName;
  @override
  final String userAvatar;

  @override
  String toString() {
    return 'PostsSummary(id: $id, title: $title, body: $body, userId: $userId, userName: $userName, userAvatar: $userAvatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostsSummary &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userAvatar, userAvatar) ||
                other.userAvatar == userAvatar));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, body, userId, userName, userAvatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostsSummaryCopyWith<_$_PostsSummary> get copyWith =>
      __$$_PostsSummaryCopyWithImpl<_$_PostsSummary>(this, _$identity);
}

abstract class _PostsSummary implements PostsSummary {
  const factory _PostsSummary(
      {required final int id,
      required final String title,
      required final String body,
      required final String userId,
      required final String userName,
      required final String userAvatar}) = _$_PostsSummary;

  @override
  int get id;
  @override
  String get title;
  @override
  String get body;
  @override
  String get userId;
  @override
  String get userName;
  @override
  String get userAvatar;
  @override
  @JsonKey(ignore: true)
  _$$_PostsSummaryCopyWith<_$_PostsSummary> get copyWith =>
      throw _privateConstructorUsedError;
}
