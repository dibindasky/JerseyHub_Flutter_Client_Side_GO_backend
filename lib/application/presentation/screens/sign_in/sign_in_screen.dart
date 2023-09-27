import 'package:flutter/material.dart';
import 'package:jerseyhub/application/presentation/routes/routes.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';

import '../../utils/loading_indicator/loading_indicator.dart';
import '../../widgets/coustom_text_filed.dart';

class ScreenSignIn extends StatelessWidget {
  const ScreenSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlack,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 100),
              Text(
                'JerseyHub',
                style: kronOne(color: kWhite, fontSize: 0.07),
              ),
              const SizedBox(height: 100),
              CoustomTextField(
                label: 'email',
                keyboardType: TextInputType.emailAddress,
              ),
              kHeight20,
              CoustomTextField(
                label: 'password',
                isPassword: true,
              ),
              kHeight20,
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () {},
                  style: elevatedButtonStyle,
                  child: const Text('Sign-in'),
                ),
              ),
              Center(
                  child: Text(
                'or',
                style: kronOne(color: kWhite),
              )),
              kHeight10,
              Text(
                'login using otp',
                style: TextStyle(color: kWhite.withOpacity(0.8)),
              ),
              kHeight10,
              CoustomTextField(
                label: 'phone number',
                keyboardType: TextInputType.phone,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.otpVerification);
                  },
                  child: Text(
                    'Verify',
                    style: kronOne(color: kWhite),
                  ),
                ),
              ),
              const Divider(),
              Row(
                children: [
                  const Text(
                    'you dont have an accound ',
                    style: TextStyle(color: kWhite),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, Routes.signUpPage);
                    },
                    child: const Text('Sign - up'),
                  ),
                ],
              ),
              const LoadingAnimation(width : 0.30),
            ],
          ),
        ),
      ),
    );
  }
}