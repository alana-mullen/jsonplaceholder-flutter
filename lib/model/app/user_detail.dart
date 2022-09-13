import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jsonplaceholder/model/api/user_detail_response.dart';
import 'package:latlong2/latlong.dart';

part 'user_detail.freezed.dart';

@freezed
class UserDetail with _$UserDetail {
  const factory UserDetail({
    required int id,
    required String name,
    required String username,
    required String email,
    required String address,
    LatLng? location,
    String? phone,
    String? website,
    String? company,
  }) = _UserDetail;

  static UserDetail? mapper(UserDetailResponse user) {
    String address = [
      user.address?.street,
      user.address?.suite,
      user.address?.city,
      user.address?.zipcode
    ].whereType<String>().toList().join(', ');
    double lat = double.parse(user.address?.geo?.lat ?? '');
    double lng = double.parse(user.address?.geo?.lng ?? '');
    return UserDetail(
        id: user.id ?? 0,
        name: user.name ?? '',
        username: user.username ?? '',
        email: user.email ?? '',
        phone: user.phone ?? '',
        website: user.website ?? '',
        address: address,
        location: LatLng(lat, lng),
        company: user.company?.name);
  }
}
