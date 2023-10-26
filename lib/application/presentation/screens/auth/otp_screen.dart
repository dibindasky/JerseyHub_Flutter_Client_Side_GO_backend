import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jerseyhub/application/business_logic/Auth/auth_bloc.dart';
import 'package:jerseyhub/application/presentation/routes/routes.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';
import 'package:jerseyhub/application/presentation/utils/loading_indicator/loading_indicator.dart';
import 'package:jerseyhub/application/presentation/utils/snack_show/show_snack.dart';
import 'package:jerseyhub/domain/models/auth/verify_otp_model/verify_otp_model.dart';

import 'widgets/otp_number_tile.dart';

class ScreenOTPVerification extends StatelessWidget {
  const ScreenOTPVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBlack,
        foregroundColor: kWhite,
      ),
      backgroundColor: kBlack,
      body: SafeArea(
        child: Row(
          children: [
            SizedBox(
              width: sWidth * 0.10,
            ),
            SizedBox(
              width: sWidth * 0.80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Verify otp',
                    style: kronOne(color: kWhite, fontSize: 0.06),
                  ),
                  kHeight10,
                  Text(
                    'phone number provided',
                    style:
                        kronOne(color: kWhite.withOpacity(0.8), fontSize: 0.03),
                  ),
                  Text(
                    context.read<AuthBloc>().poneController.text.trim(),
                    style: kronOne(color: kBlue, fontSize: 0.03),
                  ),
                  kHeight50,
                  Stack(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OTPNumberTIle(),
                          OTPNumberTIle(),
                          OTPNumberTIle(),
                          OTPNumberTIle(),
                          OTPNumberTIle(),
                          OTPNumberTIle(),
                        ],
                      ),
                      TextFormField(
                        controller: context.read<AuthBloc>().otpController,
                        maxLength: 6,
                        onChanged: (value) {
                          if (value.length == 6) {
                            FocusScope.of(context).unfocus();
                          }
                        },
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.kronaOne(
                            letterSpacing: sWidth * 0.062,
                            fontSize: 0.1 * sWidth,
                            fontWeight: FontWeight.w600,
                            color: kWhite),
                      ),
                    ],
                  ),
                  kHeight10,
                  BlocConsumer<AuthBloc, AuthState>(
                    listener: (context, state) {
                      if (state.verifyOtpHasError) {
                        showSnack(context: context, message: state.message!);
                      } else if (state.verifyOtpResponseModel != null) {
                        Navigator.pushNamedAndRemoveUntil(
                            context, Routes.bottomBar, (route) => false);
                      }
                    },
                    builder: (context, state) {
                      if (state.verifyOtpIsLoading) {
                        return const LoadingAnimation(width: 0.30);
                      } else {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Resend',
                                style: kronOne(color: kWhite),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                context.read<AuthBloc>().add(
                                    AuthEvent.verifyOtp(
                                        verifyOtpModel: VerifyOtpModel(
                                            code: context
                                                .read<AuthBloc>()
                                                .otpController
                                                .text,
                                            phone: context
                                                .read<AuthBloc>()
                                                .poneController
                                                .text
                                                .trim())));
                              },
                              child: Text(
                                'Submit',
                                style: kronOne(color: kBlue),
                              ),
                            )
                          ],
                        );
                      }
                    },
                  ),
                  kHeight50
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
