import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_response.freezed.dart';
part 'users_response.g.dart';

@freezed
abstract class UsersResponse with _$UsersResponse {
  const factory UsersResponse({
    int? id,
    //String? name,
    String? username,
    //String? email,
    //Address? address,
    //String? phone,
    //String? website,
    //Company? company,
  }) = _UsersResponse;

  factory UsersResponse.fromJson(Map<String, dynamic> json) =>
      _$UsersResponseFromJson(json);
}

/* @freezed
abstract class Address with _$Address {
  const factory Address({
    String? street,
    String? suite,
    String? city,
    String? zipcode,
    Geo? geo,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
} */

/* @freezed
abstract class Geo with _$Geo {
  const factory Geo({
    String? lat,
    String? lng,
  }) = _Geo;

  factory Geo.fromJson(Map<String, dynamic> json) => _$GeoFromJson(json);
} */

/* @freezed
abstract class Company with _$Company {
  const factory Company({
    String? name,
    String? catchPhrase,
    String? bs,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) => _$CompanyFromJson(json);
} */
