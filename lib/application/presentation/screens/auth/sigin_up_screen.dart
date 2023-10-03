import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub/application/business_logic/Auth/auth_bloc.dart';
import 'package:jerseyhub/application/presentation/routes/routes.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';
import 'package:jerseyhub/application/presentation/utils/loading_indicator/loading_indicator.dart';
import 'package:jerseyhub/application/presentation/utils/snack_show/show_snack.dart';
import 'package:jerseyhub/domain/models/auth/sign_up_model/sign_up_model.dart';

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
          child: Form(
            key: context.read<AuthBloc>().signUpKey,
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
                  controller: context.read<AuthBloc>().userNameController,
                  label: 'user name',
                ),
                kHeight20,
                CoustomTextField(
                  controller: context.read<AuthBloc>().emailController,
                  label: 'email',
                  keyboardType: TextInputType.emailAddress,
                ),
                kHeight20,
                CoustomTextField(
                    label: 'phone',
                    controller: context.read<AuthBloc>().poneController,
                    keyboardType: TextInputType.number),
                kHeight20,
                CoustomTextField(
                  label: 'password',
                  controller: context.read<AuthBloc>().passwordController,
                  isPassword: true,
                ),
                kHeight20,
                CoustomTextField(
                  label: 'confirm password',
                  controller:
                      context.read<AuthBloc>().confirmPasswordController,
                  isPassword: true,
                ),
                kHeight20,
                BlocConsumer<AuthBloc, AuthState>(
                  listener: (context, state) {
                    if (state.signIUPHasError) {
                      showSnack(
                          context: context,
                          message: state.message!,
                          color: Colors.red);
                    } else if (state.signUpResponseModel != null) {
                      Navigator.pushNamed(context, Routes.signInPage);
                    }
                  },
                  builder: (context, state) {
                    if (state.signUpIsLoading) {
                      return const LoadingAnimation(width: 0.30);
                    } else {
                      return Align(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(
                          onPressed: () {
                            if (context
                                .read<AuthBloc>()
                                .signUpKey
                                .currentState!
                                .validate()) {
                              FocusScope.of(context).unfocus();
                              context.read<AuthBloc>().add(
                                    AuthEvent.signUP(
                                      signUpModel: SignUpModel(
                                        email: context
                                            .read<AuthBloc>()
                                            .emailController
                                            .text
                                            .trim(),
                                        name: context
                                            .read<AuthBloc>()
                                            .userNameController
                                            .text
                                            .trim(),
                                        phone: context
                                            .read<AuthBloc>()
                                            .poneController
                                            .text
                                            .trim(),
                                        password: context
                                            .read<AuthBloc>()
                                            .passwordController
                                            .text
                                            .trim(),
                                        confirmpassword: context
                                            .read<AuthBloc>()
                                            .confirmPasswordController
                                            .text
                                            .trim(),
                                      ),
                                    ),
                                  );
                            }
                          },
                          style: elevatedButtonStyle,
                          child: const Text('Sign-up'),
                        ),
                      );
                    }
                  },
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
                          context.read<AuthBloc>().passwordController.clear();
                          context
                              .read<AuthBloc>()
                              .confirmPasswordController
                              .clear();
                          context.read<AuthBloc>().userNameController.clear();
                          context.read<AuthBloc>().poneController.clear();
                          context.read<AuthBloc>().emailController.clear();
                          Navigator.popAndPushNamed(context, Routes.signInPage);
                        },
                        child: const Text('Sign - in'))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
