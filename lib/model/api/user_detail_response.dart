import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_detail_response.freezed.dart';
part 'user_detail_response.g.dart';

@freezed
abstract class UserDetailResponse with _$UserDetailResponse {
  const factory UserDetailResponse({
    int? id,
    String? name,
    String? username,
    String? email,
    Address? address,
    String? phone,
    String? website,
    Company? company,
  }) = _UserDetailResponse;

  factory UserDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$UserDetailResponseFromJson(json);
}

@freezed
abstract class Address with _$Address {
  const factory Address({
    String? street,
    String? suite,
    String? city,
    String? zipcode,
    Geo? geo,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}

@freezed
abstract class Geo with _$Geo {
  const factory Geo({
    String? lat,
    String? lng,
  }) = _Geo;

  factory Geo.fromJson(Map<String, dynamic> json) => _$GeoFromJson(json);
}

@freezed
abstract class Company with _$Company {
  const factory Company({
    String? name,
    String? catchPhrase,
    String? bs,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);
}
