import 'package:flutter/material.dart';
import 'package:jerseyhub/application/presentation/screens/profile/widgets/settings_tiles.dart';
import 'package:jerseyhub/application/presentation/screens/profile/widgets/user_details.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';

class ScreenProfile extends StatelessWidget {
  const ScreenProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        kHeight30,
        UserDetailsHolder(),
        kHeight10,
        SettingsList(),
      ],
    );
  }
}
