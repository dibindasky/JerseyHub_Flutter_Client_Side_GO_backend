import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:jerseyhub/application/business_logic/Auth/auth_bloc.dart';
import 'package:jerseyhub/application/presentation/routes/routes.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';
import 'package:jerseyhub/application/presentation/utils/show_dialoge/show_dialoge.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsList extends StatelessWidget {
  const SettingsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            title: const Text('Orders'),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 15,
            ),
            onTap: () {
              Navigator.pushNamed(context, Routes.orderScreen);
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Security'),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 15,
            ),
            onTap: () {
              Navigator.pushNamed(context, Routes.userDetailScreen);
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Share'),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 15,
            ),
            onTap: () async {
              await _onShare(context);
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('About'),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 15,
            ),
            onTap: () {
              Navigator.pushNamed(context, Routes.aboouAndPolicyScreen);
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Privacy Policy'),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 15,
            ),
            onTap: () async {
              final Uri url = Uri.parse(
                  'https://www.freeprivacypolicy.com/live/7513d31f-21ec-4122-9bd3-02265eeeab61');
              if (!await launchUrl(url)) {
                Fluttertoast.showToast(msg: 'cannot open url');
              }
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Logout'),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 15,
            ),
            onTap: () {
              logout() {
                context.read<AuthBloc>().add(const AuthEvent.signOut());
                Navigator.pushNamedAndRemoveUntil(
                    context, Routes.signInPage, (route) => false);
              }

              customShowDialoge(context: context, onPress: logout);
            },
          ),
          const Divider(),
          kHeight10,
          const Text('Version : 1.0.0')
        ],
      ),
    );
  }

  _onShare(context) async {
    // final box = context.findRenderObject() as RenderBox?;
    // await Share.share(
    //     'https://play.google.com/store/apps/details?id=com.dibin.jerseyhub',
    //     subject: '',
    //     sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size);
  }
}
