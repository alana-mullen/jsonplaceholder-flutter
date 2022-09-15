import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:jsonplaceholder/bloc/user_detail_bloc.dart';
import 'package:jsonplaceholder/data/api_response.dart';
import 'package:jsonplaceholder/model/app/user_detail.dart';
import 'package:jsonplaceholder/ui/widget/circle_image.dart';
import 'package:jsonplaceholder/ui/widget/error_screen.dart';
import 'package:jsonplaceholder/ui/widget/loading.dart';
import 'package:jsonplaceholder/ui/theme/styles.dart';
import 'package:jsonplaceholder/ui/widget/text_with_icon.dart';
import 'package:latlong2/latlong.dart';

class UserBottomSheet extends StatefulWidget {
  final String userId;
  const UserBottomSheet({Key? key, required this.userId}) : super(key: key);

  @override
  State<UserBottomSheet> createState() => _UserBottomSheetState();
}

class _UserBottomSheetState extends State<UserBottomSheet> {
  late UserDetailBloc _bloc;

  @override
  void initState() {
    _bloc = UserDetailBloc();
    _bloc.fetchUser(widget.userId);
    super.initState();
  }

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ApiResponse<UserDetail>>(
      stream: _bloc.stream,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          switch (snapshot.data?.status) {
            case Status.LOADING:
              return const Loading(loadingMessage: "Loading user");
            case Status.COMPLETED:
              final UserDetail? userDetail = snapshot.data?.data;
              return _userDetail(context, userDetail!);
            case Status.ERROR:
              return ErrorScreen();
            default:
              return Container();
          }
        }
        return Container();
      },
    );
  }

  _userDetail(BuildContext context, UserDetail userDetail) {
    double lat = userDetail.location?.latitude ?? 0.0;
    double lng = userDetail.location?.longitude ?? 0.0;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleImage(
                imageUrl: userDetail.avatar,
                imageSize: 50,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userDetail.username,
                      style: const TextStyle(fontSize: 24),
                    ),
                    Text(userDetail.name, style: Styles.headline1),
                    Text(userDetail.company, style: Styles.bodyText1),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextWithIcon(
                        text: userDetail.email,
                        icon: Icons.email,
                        style: Styles.bodyText1),
                    TextWithIcon(
                        text: userDetail.website,
                        icon: Icons.web,
                        style: Styles.bodyText1),
                  ],
                ),
                TextWithIcon(
                    text: userDetail.phone,
                    icon: Icons.phone,
                    style: Styles.bodyText1),
                Text(userDetail.address, style: Styles.bodyText1),
              ],
            ),
          ),
          Visibility(
            visible: userDetail.location != null,
            child: SizedBox(
              height: 300,
              width: 300,
              child: FlutterMap(
                options: MapOptions(
                  center: LatLng(lat, lng),
                  zoom: 9.2,
                ),
                children: [
                  TileLayer(
                    urlTemplate:
                        'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                    userAgentPackageName:
                        'co.uk.thewirelessguy.jsonplaceholder',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
