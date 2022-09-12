// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'users_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UsersResponse _$UsersResponseFromJson(Map<String, dynamic> json) {
  return _UsersResponse.fromJson(json);
}

/// @nodoc
mixin _$UsersResponse {
  int? get id => throw _privateConstructorUsedError; //String? name,
  String? get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsersResponseCopyWith<UsersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersResponseCopyWith<$Res> {
  factory $UsersResponseCopyWith(
          UsersResponse value, $Res Function(UsersResponse) then) =
      _$UsersResponseCopyWithImpl<$Res>;
  $Res call({int? id, String? username});
}

/// @nodoc
class _$UsersResponseCopyWithImpl<$Res>
    implements $UsersResponseCopyWith<$Res> {
  _$UsersResponseCopyWithImpl(this._value, this._then);

  final UsersResponse _value;
  // ignore: unused_field
  final $Res Function(UsersResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_UsersResponseCopyWith<$Res>
    implements $UsersResponseCopyWith<$Res> {
  factory _$$_UsersResponseCopyWith(
          _$_UsersResponse value, $Res Function(_$_UsersResponse) then) =
      __$$_UsersResponseCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? username});
}

/// @nodoc
class __$$_UsersResponseCopyWithImpl<$Res>
    extends _$UsersResponseCopyWithImpl<$Res>
    implements _$$_UsersResponseCopyWith<$Res> {
  __$$_UsersResponseCopyWithImpl(
      _$_UsersResponse _value, $Res Function(_$_UsersResponse) _then)
      : super(_value, (v) => _then(v as _$_UsersResponse));

  @override
  _$_UsersResponse get _value => super._value as _$_UsersResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
  }) {
    return _then(_$_UsersResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UsersResponse implements _UsersResponse {
  const _$_UsersResponse({this.id, this.username});

  factory _$_UsersResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UsersResponseFromJson(json);

  @override
  final int? id;
//String? name,
  @override
  final String? username;

  @override
  String toString() {
    return 'UsersResponse(id: $id, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsersResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  _$$_UsersResponseCopyWith<_$_UsersResponse> get copyWith =>
      __$$_UsersResponseCopyWithImpl<_$_UsersResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UsersResponseToJson(
      this,
    );
  }
}

abstract class _UsersResponse implements UsersResponse {
  const factory _UsersResponse({final int? id, final String? username}) =
      _$_UsersResponse;

  factory _UsersResponse.fromJson(Map<String, dynamic> json) =
      _$_UsersResponse.fromJson;

  @override
  int? get id;
  @override //String? name,
  String? get username;
  @override
  @JsonKey(ignore: true)
  _$$_UsersResponseCopyWith<_$_UsersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
