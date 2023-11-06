import 'package:flutter/material.dart';
import 'package:jerseyhub/application/presentation/screens/security/widget/change_detail_body.dart';
import 'package:jerseyhub/application/presentation/widgets/appbar.dart';

class ScreenEditProfile extends StatelessWidget {
  const ScreenEditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarMaker(title: 'Security'),
      body: const ChangeDetailBody(),
    );
  }
}
