import 'package:flutter/material.dart';
import 'package:jerseyhub/application/presentation/routes/routes.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';

import '../../widgets/coustom_text_filed.dart';

class ScreenSignUP extends StatelessWidget {
  const ScreenSignUP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlack,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kHeight50,
              Text(
                'JerseyHub',
                style: kronOne(color: kWhite, fontSize: 0.07),
              ),
              kHeight50,
              CoustomTextField(
                label: 'user name',
              ),
              kHeight20,
              CoustomTextField(
                label: 'email',
                keyboardType: TextInputType.emailAddress,
              ),
              kHeight20,
              CoustomTextField(
                label: 'phone',
                keyboardType: TextInputType.phone,
              ),
              kHeight20,
              CoustomTextField(
                label: 'password',
                isPassword: true,
              ),
              kHeight20,
              CoustomTextField(
                label: 'confirm password',
                isPassword: true,
              ),
              kHeight20,
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () {},
                  style: elevatedButtonStyle,
                  child: const Text('Sign-up'),
                ),
              ),
              const Divider(),
              Row(
                children: [
                  const Text(
                    'you alredy have an accound ',
                    style: TextStyle(color: kWhite),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.popAndPushNamed(context, Routes.signInPage);
                      },
                      child: Text('Sign - in'))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
