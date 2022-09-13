// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDetailResponse _$UserDetailResponseFromJson(Map<String, dynamic> json) {
  return _UserDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$UserDetailResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  Address? get address => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  Company? get company => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDetailResponseCopyWith<UserDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailResponseCopyWith<$Res> {
  factory $UserDetailResponseCopyWith(
          UserDetailResponse value, $Res Function(UserDetailResponse) then) =
      _$UserDetailResponseCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? username,
      String? email,
      Address? address,
      String? phone,
      String? website,
      Company? company});

  $AddressCopyWith<$Res>? get address;
  $CompanyCopyWith<$Res>? get company;
}

/// @nodoc
class _$UserDetailResponseCopyWithImpl<$Res>
    implements $UserDetailResponseCopyWith<$Res> {
  _$UserDetailResponseCopyWithImpl(this._value, this._then);

  final UserDetailResponse _value;
  // ignore: unused_field
  final $Res Function(UserDetailResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? website = freezed,
    Object? company = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
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
              as Company?,
    ));
  }

  @override
  $AddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value));
    });
  }

  @override
  $CompanyCopyWith<$Res>? get company {
    if (_value.company == null) {
      return null;
    }

    return $CompanyCopyWith<$Res>(_value.company!, (value) {
      return _then(_value.copyWith(company: value));
    });
  }
}

/// @nodoc
abstract class _$$_UserDetailResponseCopyWith<$Res>
    implements $UserDetailResponseCopyWith<$Res> {
  factory _$$_UserDetailResponseCopyWith(_$_UserDetailResponse value,
          $Res Function(_$_UserDetailResponse) then) =
      __$$_UserDetailResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? username,
      String? email,
      Address? address,
      String? phone,
      String? website,
      Company? company});

  @override
  $AddressCopyWith<$Res>? get address;
  @override
  $CompanyCopyWith<$Res>? get company;
}

/// @nodoc
class __$$_UserDetailResponseCopyWithImpl<$Res>
    extends _$UserDetailResponseCopyWithImpl<$Res>
    implements _$$_UserDetailResponseCopyWith<$Res> {
  __$$_UserDetailResponseCopyWithImpl(
      _$_UserDetailResponse _value, $Res Function(_$_UserDetailResponse) _then)
      : super(_value, (v) => _then(v as _$_UserDetailResponse));

  @override
  _$_UserDetailResponse get _value => super._value as _$_UserDetailResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? website = freezed,
    Object? company = freezed,
  }) {
    return _then(_$_UserDetailResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
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
              as Company?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDetailResponse implements _UserDetailResponse {
  const _$_UserDetailResponse(
      {this.id,
      this.name,
      this.username,
      this.email,
      this.address,
      this.phone,
      this.website,
      this.company});

  factory _$_UserDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UserDetailResponseFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? username;
  @override
  final String? email;
  @override
  final Address? address;
  @override
  final String? phone;
  @override
  final String? website;
  @override
  final Company? company;

  @override
  String toString() {
    return 'UserDetailResponse(id: $id, name: $name, username: $username, email: $email, address: $address, phone: $phone, website: $website, company: $company)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDetailResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.website, website) &&
            const DeepCollectionEquality().equals(other.company, company));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(website),
      const DeepCollectionEquality().hash(company));

  @JsonKey(ignore: true)
  @override
  _$$_UserDetailResponseCopyWith<_$_UserDetailResponse> get copyWith =>
      __$$_UserDetailResponseCopyWithImpl<_$_UserDetailResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDetailResponseToJson(
      this,
    );
  }
}

abstract class _UserDetailResponse implements UserDetailResponse {
  const factory _UserDetailResponse(
      {final int? id,
      final String? name,
      final String? username,
      final String? email,
      final Address? address,
      final String? phone,
      final String? website,
      final Company? company}) = _$_UserDetailResponse;

  factory _UserDetailResponse.fromJson(Map<String, dynamic> json) =
      _$_UserDetailResponse.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get username;
  @override
  String? get email;
  @override
  Address? get address;
  @override
  String? get phone;
  @override
  String? get website;
  @override
  Company? get company;
  @override
  @JsonKey(ignore: true)
  _$$_UserDetailResponseCopyWith<_$_UserDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  String? get street => throw _privateConstructorUsedError;
  String? get suite => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get zipcode => throw _privateConstructorUsedError;
  Geo? get geo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res>;
  $Res call(
      {String? street, String? suite, String? city, String? zipcode, Geo? geo});

  $GeoCopyWith<$Res>? get geo;
}

/// @nodoc
class _$AddressCopyWithImpl<$Res> implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  final Address _value;
  // ignore: unused_field
  final $Res Function(Address) _then;

  @override
  $Res call({
    Object? street = freezed,
    Object? suite = freezed,
    Object? city = freezed,
    Object? zipcode = freezed,
    Object? geo = freezed,
  }) {
    return _then(_value.copyWith(
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      suite: suite == freezed
          ? _value.suite
          : suite // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      zipcode: zipcode == freezed
          ? _value.zipcode
          : zipcode // ignore: cast_nullable_to_non_nullable
              as String?,
      geo: geo == freezed
          ? _value.geo
          : geo // ignore: cast_nullable_to_non_nullable
              as Geo?,
    ));
  }

  @override
  $GeoCopyWith<$Res>? get geo {
    if (_value.geo == null) {
      return null;
    }

    return $GeoCopyWith<$Res>(_value.geo!, (value) {
      return _then(_value.copyWith(geo: value));
    });
  }
}

/// @nodoc
abstract class _$$_AddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$_AddressCopyWith(
          _$_Address value, $Res Function(_$_Address) then) =
      __$$_AddressCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? street, String? suite, String? city, String? zipcode, Geo? geo});

  @override
  $GeoCopyWith<$Res>? get geo;
}

/// @nodoc
class __$$_AddressCopyWithImpl<$Res> extends _$AddressCopyWithImpl<$Res>
    implements _$$_AddressCopyWith<$Res> {
  __$$_AddressCopyWithImpl(_$_Address _value, $Res Function(_$_Address) _then)
      : super(_value, (v) => _then(v as _$_Address));

  @override
  _$_Address get _value => super._value as _$_Address;

  @override
  $Res call({
    Object? street = freezed,
    Object? suite = freezed,
    Object? city = freezed,
    Object? zipcode = freezed,
    Object? geo = freezed,
  }) {
    return _then(_$_Address(
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      suite: suite == freezed
          ? _value.suite
          : suite // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      zipcode: zipcode == freezed
          ? _value.zipcode
          : zipcode // ignore: cast_nullable_to_non_nullable
              as String?,
      geo: geo == freezed
          ? _value.geo
          : geo // ignore: cast_nullable_to_non_nullable
              as Geo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Address implements _Address {
  const _$_Address(
      {this.street, this.suite, this.city, this.zipcode, this.geo});

  factory _$_Address.fromJson(Map<String, dynamic> json) =>
      _$$_AddressFromJson(json);

  @override
  final String? street;
  @override
  final String? suite;
  @override
  final String? city;
  @override
  final String? zipcode;
  @override
  final Geo? geo;

  @override
  String toString() {
    return 'Address(street: $street, suite: $suite, city: $city, zipcode: $zipcode, geo: $geo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Address &&
            const DeepCollectionEquality().equals(other.street, street) &&
            const DeepCollectionEquality().equals(other.suite, suite) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.zipcode, zipcode) &&
            const DeepCollectionEquality().equals(other.geo, geo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(street),
      const DeepCollectionEquality().hash(suite),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(zipcode),
      const DeepCollectionEquality().hash(geo));

  @JsonKey(ignore: true)
  @override
  _$$_AddressCopyWith<_$_Address> get copyWith =>
      __$$_AddressCopyWithImpl<_$_Address>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressToJson(
      this,
    );
  }
}

abstract class _Address implements Address {
  const factory _Address(
      {final String? street,
      final String? suite,
      final String? city,
      final String? zipcode,
      final Geo? geo}) = _$_Address;

  factory _Address.fromJson(Map<String, dynamic> json) = _$_Address.fromJson;

  @override
  String? get street;
  @override
  String? get suite;
  @override
  String? get city;
  @override
  String? get zipcode;
  @override
  Geo? get geo;
  @override
  @JsonKey(ignore: true)
  _$$_AddressCopyWith<_$_Address> get copyWith =>
      throw _privateConstructorUsedError;
}

Geo _$GeoFromJson(Map<String, dynamic> json) {
  return _Geo.fromJson(json);
}

/// @nodoc
mixin _$Geo {
  String? get lat => throw _privateConstructorUsedError;
  String? get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeoCopyWith<Geo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoCopyWith<$Res> {
  factory $GeoCopyWith(Geo value, $Res Function(Geo) then) =
      _$GeoCopyWithImpl<$Res>;
  $Res call({String? lat, String? lng});
}

/// @nodoc
class _$GeoCopyWithImpl<$Res> implements $GeoCopyWith<$Res> {
  _$GeoCopyWithImpl(this._value, this._then);

  final Geo _value;
  // ignore: unused_field
  final $Res Function(Geo) _then;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_value.copyWith(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_GeoCopyWith<$Res> implements $GeoCopyWith<$Res> {
  factory _$$_GeoCopyWith(_$_Geo value, $Res Function(_$_Geo) then) =
      __$$_GeoCopyWithImpl<$Res>;
  @override
  $Res call({String? lat, String? lng});
}

/// @nodoc
class __$$_GeoCopyWithImpl<$Res> extends _$GeoCopyWithImpl<$Res>
    implements _$$_GeoCopyWith<$Res> {
  __$$_GeoCopyWithImpl(_$_Geo _value, $Res Function(_$_Geo) _then)
      : super(_value, (v) => _then(v as _$_Geo));

  @override
  _$_Geo get _value => super._value as _$_Geo;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_$_Geo(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Geo implements _Geo {
  const _$_Geo({this.lat, this.lng});

  factory _$_Geo.fromJson(Map<String, dynamic> json) => _$$_GeoFromJson(json);

  @override
  final String? lat;
  @override
  final String? lng;

  @override
  String toString() {
    return 'Geo(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Geo &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.lng, lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(lng));

  @JsonKey(ignore: true)
  @override
  _$$_GeoCopyWith<_$_Geo> get copyWith =>
      __$$_GeoCopyWithImpl<_$_Geo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeoToJson(
      this,
    );
  }
}

abstract class _Geo implements Geo {
  const factory _Geo({final String? lat, final String? lng}) = _$_Geo;

  factory _Geo.fromJson(Map<String, dynamic> json) = _$_Geo.fromJson;

  @override
  String? get lat;
  @override
  String? get lng;
  @override
  @JsonKey(ignore: true)
  _$$_GeoCopyWith<_$_Geo> get copyWith => throw _privateConstructorUsedError;
}

Company _$CompanyFromJson(Map<String, dynamic> json) {
  return _Company.fromJson(json);
}

/// @nodoc
mixin _$Company {
  String? get name => throw _privateConstructorUsedError;
  String? get catchPhrase => throw _privateConstructorUsedError;
  String? get bs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyCopyWith<Company> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyCopyWith<$Res> {
  factory $CompanyCopyWith(Company value, $Res Function(Company) then) =
      _$CompanyCopyWithImpl<$Res>;
  $Res call({String? name, String? catchPhrase, String? bs});
}

/// @nodoc
class _$CompanyCopyWithImpl<$Res> implements $CompanyCopyWith<$Res> {
  _$CompanyCopyWithImpl(this._value, this._then);

  final Company _value;
  // ignore: unused_field
  final $Res Function(Company) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? catchPhrase = freezed,
    Object? bs = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      catchPhrase: catchPhrase == freezed
          ? _value.catchPhrase
          : catchPhrase // ignore: cast_nullable_to_non_nullable
              as String?,
      bs: bs == freezed
          ? _value.bs
          : bs // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_CompanyCopyWith<$Res> implements $CompanyCopyWith<$Res> {
  factory _$$_CompanyCopyWith(
          _$_Company value, $Res Function(_$_Company) then) =
      __$$_CompanyCopyWithImpl<$Res>;
  @override
  $Res call({String? name, String? catchPhrase, String? bs});
}

/// @nodoc
class __$$_CompanyCopyWithImpl<$Res> extends _$CompanyCopyWithImpl<$Res>
    implements _$$_CompanyCopyWith<$Res> {
  __$$_CompanyCopyWithImpl(_$_Company _value, $Res Function(_$_Company) _then)
      : super(_value, (v) => _then(v as _$_Company));

  @override
  _$_Company get _value => super._value as _$_Company;

  @override
  $Res call({
    Object? name = freezed,
    Object? catchPhrase = freezed,
    Object? bs = freezed,
  }) {
    return _then(_$_Company(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      catchPhrase: catchPhrase == freezed
          ? _value.catchPhrase
          : catchPhrase // ignore: cast_nullable_to_non_nullable
              as String?,
      bs: bs == freezed
          ? _value.bs
          : bs // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Company implements _Company {
  const _$_Company({this.name, this.catchPhrase, this.bs});

  factory _$_Company.fromJson(Map<String, dynamic> json) =>
      _$$_CompanyFromJson(json);

  @override
  final String? name;
  @override
  final String? catchPhrase;
  @override
  final String? bs;

  @override
  String toString() {
    return 'Company(name: $name, catchPhrase: $catchPhrase, bs: $bs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Company &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.catchPhrase, catchPhrase) &&
            const DeepCollectionEquality().equals(other.bs, bs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(catchPhrase),
      const DeepCollectionEquality().hash(bs));

  @JsonKey(ignore: true)
  @override
  _$$_CompanyCopyWith<_$_Company> get copyWith =>
      __$$_CompanyCopyWithImpl<_$_Company>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompanyToJson(
      this,
    );
  }
}

abstract class _Company implements Company {
  const factory _Company(
      {final String? name,
      final String? catchPhrase,
      final String? bs}) = _$_Company;

  factory _Company.fromJson(Map<String, dynamic> json) = _$_Company.fromJson;

  @override
  String? get name;
  @override
  String? get catchPhrase;
  @override
  String? get bs;
  @override
  @JsonKey(ignore: true)
  _$$_CompanyCopyWith<_$_Company> get copyWith =>
      throw _privateConstructorUsedError;
}
