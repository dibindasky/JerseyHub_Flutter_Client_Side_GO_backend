import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub/application/business_logic/Auth/auth_bloc.dart';
import 'package:jerseyhub/application/presentation/routes/routes.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';
import 'package:jerseyhub/application/presentation/utils/snack_show/show_snack.dart';
import 'package:jerseyhub/domain/models/auth/phone_number_model/phone_number_model.dart';
import 'package:jerseyhub/domain/models/auth/sign_in_model/sign_in_model.dart';

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
              BlocConsumer<AuthBloc, AuthState>(
                listener: (context, state) {
                  print('in listner');
                  if (state.otpHasError) {
                    showSnack(context: context, message: 'cannot send otp');
                  } else if (state.signInHasError) {
                    showSnack(context: context, message: state.message!);
                  }else if(state.isLoggedIn){
                    print('inside navigation');
                    Navigator.pushNamedAndRemoveUntil(context, Routes.bottomBar, (route) => false);
                  }else if(state.phoneNumberOtpResponseModel != null){
                    Navigator.pushNamed(context, Routes.otpVerification);
                  }
                },
                builder: (context, state) {
                  return Form(
                    key: context.read<AuthBloc>().signInKey,
                    child: Column(
                      children: [
                        const SizedBox(height: 100),
                        Text(
                          'JerseyHub',
                          style: kronOne(color: kWhite, fontSize: 0.07),
                        ),
                        const SizedBox(height: 100),
                        CoustomTextField(
                          controller: context.read<AuthBloc>().emailController,
                          label: 'email',
                          keyboardType: TextInputType.emailAddress,
                        ),
                        kHeight20,
                        CoustomTextField(
                          label: 'password',
                          controller:
                              context.read<AuthBloc>().passwordSignInController,
                          isPassword: true,
                        ),
                        kHeight20,
                        BlocBuilder<AuthBloc, AuthState>(
                          builder: (context, state) {
                            if (state.signInIsLoading) {
                              return const LoadingAnimation(width: 0.30);
                            } else {
                              return Align(
                                alignment: Alignment.centerRight,
                                child: ElevatedButton(
                                  onPressed: () {
                                    FocusScope.of(context).unfocus();
                                    if (context
                                        .read<AuthBloc>()
                                        .signInKey
                                        .currentState!
                                        .validate()) {
                                      context
                                          .read<AuthBloc>()
                                          .add(AuthEvent.signIn(
                                              signInModel: SignInModel(
                                            email: context
                                                .read<AuthBloc>()
                                                .emailController
                                                .text
                                                .trim(),
                                            password: context
                                                .read<AuthBloc>()
                                                .passwordSignInController
                                                .text
                                                .trim(),
                                          )));
                                    }
                                  },
                                  style: elevatedButtonStyle,
                                  child: const Text('Sign-in'),
                                ),
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  );
                },
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
              Form(
                key: context.read<AuthBloc>().phoneKey,
                child: CoustomTextField(
                  controller: context.read<AuthBloc>().poneController,
                  label: 'phone number',
                  keyboardType: TextInputType.phone,
                ),
              ),
              BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  if (state.otpIsLoading) {
                    return const LoadingAnimation(width: 0.30);
                  } else {
                    return Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          if (context
                              .read<AuthBloc>()
                              .phoneKey
                              .currentState!
                              .validate()) {FocusScope.of(context).unfocus();
                            context.read<AuthBloc>().add(AuthEvent.otpLogin(
                                    phoneNumberModel: PhoneNumberModel(
                                  phone: context
                                      .read<AuthBloc>()
                                      .poneController
                                      .text
                                      .trim(),
                                )));
                          }
                        },
                        child: Text(
                          'Verify',
                          style: kronOne(color: kWhite),
                        ),
                      ),
                    );
                  }
                },
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
                      context.read<AuthBloc>().emailController.clear();
                      context.read<AuthBloc>().passwordController.clear();
                      context.read<AuthBloc>().poneController.clear();
                      Navigator.pushReplacementNamed(
                          context, Routes.signUpPage);
                    },
                    child: const Text('Sign - up'),
                  ),
                ],
              ),
              //const LoadingAnimation(width: 0.30),
            ],
          ),
        ),
      ),
    );
  }
}
