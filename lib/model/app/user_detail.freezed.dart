// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
  String get email => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  LatLng? get location => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  String? get company => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDetailCopyWith<UserDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailCopyWith<$Res> {
  factory $UserDetailCopyWith(
          UserDetail value, $Res Function(UserDetail) then) =
      _$UserDetailCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String username,
      String email,
      String address,
      LatLng? location,
      String? phone,
      String? website,
      String? company});
}

/// @nodoc
class _$UserDetailCopyWithImpl<$Res> implements $UserDetailCopyWith<$Res> {
  _$UserDetailCopyWithImpl(this._value, this._then);

  final UserDetail _value;
  // ignore: unused_field
  final $Res Function(UserDetail) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? location = freezed,
    Object? phone = freezed,
    Object? website = freezed,
    Object? company = freezed,
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
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      website: website == freezed
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_UserDetailCopyWith<$Res>
    implements $UserDetailCopyWith<$Res> {
  factory _$$_UserDetailCopyWith(
          _$_UserDetail value, $Res Function(_$_UserDetail) then) =
      __$$_UserDetailCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String username,
      String email,
      String address,
      LatLng? location,
      String? phone,
      String? website,
      String? company});
}

/// @nodoc
class __$$_UserDetailCopyWithImpl<$Res> extends _$UserDetailCopyWithImpl<$Res>
    implements _$$_UserDetailCopyWith<$Res> {
  __$$_UserDetailCopyWithImpl(
      _$_UserDetail _value, $Res Function(_$_UserDetail) _then)
      : super(_value, (v) => _then(v as _$_UserDetail));

  @override
  _$_UserDetail get _value => super._value as _$_UserDetail;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? location = freezed,
    Object? phone = freezed,
    Object? website = freezed,
    Object? company = freezed,
  }) {
    return _then(_$_UserDetail(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      website: website == freezed
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_UserDetail implements _UserDetail {
  const _$_UserDetail(
      {required this.id,
      required this.name,
      required this.username,
      required this.email,
      required this.address,
      this.location,
      this.phone,
      this.website,
      this.company});

  @override
  final int id;
  @override
  final String name;
  @override
  final String username;
  @override
  final String email;
  @override
  final String address;
  @override
  final LatLng? location;
  @override
  final String? phone;
  @override
  final String? website;
  @override
  final String? company;

  @override
  String toString() {
    return 'UserDetail(id: $id, name: $name, username: $username, email: $email, address: $address, location: $location, phone: $phone, website: $website, company: $company)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDetail &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.website, website) &&
            const DeepCollectionEquality().equals(other.company, company));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(website),
      const DeepCollectionEquality().hash(company));

  @JsonKey(ignore: true)
  @override
  _$$_UserDetailCopyWith<_$_UserDetail> get copyWith =>
      __$$_UserDetailCopyWithImpl<_$_UserDetail>(this, _$identity);
}

abstract class _UserDetail implements UserDetail {
  const factory _UserDetail(
      {required final int id,
      required final String name,
      required final String username,
      required final String email,
      required final String address,
      final LatLng? location,
      final String? phone,
      final String? website,
      final String? company}) = _$_UserDetail;

  @override
  int get id;
  @override
  String get name;
  @override
  String get username;
  @override
  String get email;
  @override
  String get address;
  @override
  LatLng? get location;
  @override
  String? get phone;
  @override
  String? get website;
  @override
  String? get company;
  @override
  @JsonKey(ignore: true)
  _$$_UserDetailCopyWith<_$_UserDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
