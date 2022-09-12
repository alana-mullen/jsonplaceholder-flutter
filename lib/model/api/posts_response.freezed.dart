// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'posts_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostsResponse _$PostsResponseFromJson(Map<String, dynamic> json) {
  return _PostsResponse.fromJson(json);
}

/// @nodoc
mixin _$PostsResponse {
  int? get userId => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostsResponseCopyWith<PostsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsResponseCopyWith<$Res> {
  factory $PostsResponseCopyWith(
          PostsResponse value, $Res Function(PostsResponse) then) =
      _$PostsResponseCopyWithImpl<$Res>;
  $Res call({int? userId, int? id, String? title, String? body});
}

/// @nodoc
class _$PostsResponseCopyWithImpl<$Res>
    implements $PostsResponseCopyWith<$Res> {
  _$PostsResponseCopyWithImpl(this._value, this._then);

  final PostsResponse _value;
  // ignore: unused_field
  final $Res Function(PostsResponse) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PostsResponseCopyWith<$Res>
    implements $PostsResponseCopyWith<$Res> {
  factory _$$_PostsResponseCopyWith(
          _$_PostsResponse value, $Res Function(_$_PostsResponse) then) =
      __$$_PostsResponseCopyWithImpl<$Res>;
  @override
  $Res call({int? userId, int? id, String? title, String? body});
}

/// @nodoc
class __$$_PostsResponseCopyWithImpl<$Res>
    extends _$PostsResponseCopyWithImpl<$Res>
    implements _$$_PostsResponseCopyWith<$Res> {
  __$$_PostsResponseCopyWithImpl(
      _$_PostsResponse _value, $Res Function(_$_PostsResponse) _then)
      : super(_value, (v) => _then(v as _$_PostsResponse));

  @override
  _$_PostsResponse get _value => super._value as _$_PostsResponse;

  @override
  $Res call({
    Object? userId = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_$_PostsResponse(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostsResponse implements _PostsResponse {
  const _$_PostsResponse({this.userId, this.id, this.title, this.body});

  factory _$_PostsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PostsResponseFromJson(json);

  @override
  final int? userId;
  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? body;

  @override
  String toString() {
    return 'PostsResponse(userId: $userId, id: $id, title: $title, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostsResponse &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.body, body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(body));

  @JsonKey(ignore: true)
  @override
  _$$_PostsResponseCopyWith<_$_PostsResponse> get copyWith =>
      __$$_PostsResponseCopyWithImpl<_$_PostsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostsResponseToJson(
      this,
    );
  }
}

abstract class _PostsResponse implements PostsResponse {
  const factory _PostsResponse(
      {final int? userId,
      final int? id,
      final String? title,
      final String? body}) = _$_PostsResponse;

  factory _PostsResponse.fromJson(Map<String, dynamic> json) =
      _$_PostsResponse.fromJson;

  @override
  int? get userId;
  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get body;
  @override
  @JsonKey(ignore: true)
  _$$_PostsResponseCopyWith<_$_PostsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
