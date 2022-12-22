// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserDetail {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get website => throw _privateConstructorUsedError;
  String get company => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  LatLng? get location => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDetailCopyWith<UserDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailCopyWith<$Res> {
  factory $UserDetailCopyWith(
          UserDetail value, $Res Function(UserDetail) then) =
      _$UserDetailCopyWithImpl<$Res, UserDetail>;
  @useResult
  $Res call(
      {int id,
      String name,
      String username,
      String avatar,
      String email,
      String phone,
      String website,
      String company,
      String address,
      LatLng? location});
}

/// @nodoc
class _$UserDetailCopyWithImpl<$Res, $Val extends UserDetail>
    implements $UserDetailCopyWith<$Res> {
  _$UserDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? username = null,
    Object? avatar = null,
    Object? email = null,
    Object? phone = null,
    Object? website = null,
    Object? company = null,
    Object? address = null,
    Object? location = freezed,
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
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      website: null == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserDetailCopyWith<$Res>
    implements $UserDetailCopyWith<$Res> {
  factory _$$_UserDetailCopyWith(
          _$_UserDetail value, $Res Function(_$_UserDetail) then) =
      __$$_UserDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String username,
      String avatar,
      String email,
      String phone,
      String website,
      String company,
      String address,
      LatLng? location});
}

/// @nodoc
class __$$_UserDetailCopyWithImpl<$Res>
    extends _$UserDetailCopyWithImpl<$Res, _$_UserDetail>
    implements _$$_UserDetailCopyWith<$Res> {
  __$$_UserDetailCopyWithImpl(
      _$_UserDetail _value, $Res Function(_$_UserDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? username = null,
    Object? avatar = null,
    Object? email = null,
    Object? phone = null,
    Object? website = null,
    Object? company = null,
    Object? address = null,
    Object? location = freezed,
  }) {
    return _then(_$_UserDetail(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      website: null == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng?,
    ));
  }
}

/// @nodoc

class _$_UserDetail implements _UserDetail {
  const _$_UserDetail(
      {required this.id,
      required this.name,
      required this.username,
      required this.avatar,
      required this.email,
      required this.phone,
      required this.website,
      required this.company,
      required this.address,
      this.location});

  @override
  final int id;
  @override
  final String name;
  @override
  final String username;
  @override
  final String avatar;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String website;
  @override
  final String company;
  @override
  final String address;
  @override
  final LatLng? location;

  @override
  String toString() {
    return 'UserDetail(id: $id, name: $name, username: $username, avatar: $avatar, email: $email, phone: $phone, website: $website, company: $company, address: $address, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDetail &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, username, avatar,
      email, phone, website, company, address, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDetailCopyWith<_$_UserDetail> get copyWith =>
      __$$_UserDetailCopyWithImpl<_$_UserDetail>(this, _$identity);
}

abstract class _UserDetail implements UserDetail {
  const factory _UserDetail(
      {required final int id,
      required final String name,
      required final String username,
      required final String avatar,
      required final String email,
      required final String phone,
      required final String website,
      required final String company,
      required final String address,
      final LatLng? location}) = _$_UserDetail;

  @override
  int get id;
  @override
  String get name;
  @override
  String get username;
  @override
  String get avatar;
  @override
  String get email;
  @override
  String get phone;
  @override
  String get website;
  @override
  String get company;
  @override
  String get address;
  @override
  LatLng? get location;
  @override
  @JsonKey(ignore: true)
  _$$_UserDetailCopyWith<_$_UserDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
