import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub/application/business_logic/order/order_bloc.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';
import 'package:jerseyhub/application/presentation/utils/loading_indicator/loading_indicator.dart';

class ChoosePaymentMethod extends StatelessWidget {
  const ChoosePaymentMethod({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        const Text(
          'Payment method',
          style: headStyle,
        ),
        BlocBuilder<OrderBloc, OrderState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const LoadingAnimation(width: 0.20);
            }
            if (state.getCheckoutResponseModel == null ||
                state.getCheckoutResponseModel!.data == null ||
                state.getCheckoutResponseModel!.data!.paymentMethods == null ||
                state.getCheckoutResponseModel!.data!.paymentMethods!.isEmpty) {
              return const Text('network error');
            }
            final methods =
                state.getCheckoutResponseModel!.data!.paymentMethods;
            return Wrap(
              children: List.generate(
                methods!.length,
                (int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: ChoiceChip(
                      padding: const EdgeInsets.all(8),
                      label: Text(methods[index].paymentName!),
                      selectedColor: kGreen,
                      selected: methods[index].id != null &&
                          state.selectedPaymentmethod == methods[index].id,
                      onSelected: (bool selected) {
                        context.read<OrderBloc>().add(
                            OrderEvent.setPaymnetMethod(
                                paymentMethodId: methods[index].id!));
                      },
                    ),
                  );
                },
              ).toList(),
            );
          },
        ),
      ],
    );
  }
}

