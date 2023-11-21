import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub/application/business_logic/user/user_bloc.dart';
import 'package:jerseyhub/application/presentation/routes/routes.dart';
import 'package:jerseyhub/application/presentation/screens/address/widget/address_list.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';

class CheckOutAddressTile extends StatelessWidget {
  const CheckOutAddressTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        final defaultAddress = context.read<UserBloc>().defaultAddress;
        return Column(
          children: [
            SizedBox(
              width: sWidth,
              child: Card(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      defaultAddress == null
                          ? kHeight50
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Address',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                                kHeight5,
                                Text(
                                    '${defaultAddress.name}\n${defaultAddress.houseName},\n${defaultAddress.street},\n${defaultAddress.city},\n${defaultAddress.state} \npin: ${defaultAddress.pin}'),
                              ],
                            ),
                      const Spacer(),
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, Routes.addressScreen);
                              },
                              icon: const Icon(Icons.add)),
                          IconButton(
                              onPressed: () {
                                context
                                    .read<UserBloc>()
                                    .add(const UserEvent.showList());
                              },
                              icon: const Icon(
                                  Icons.arrow_drop_down_circle_sharp)),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Visibility(
              visible: state.showList,
              child: const AddressList(fromCheckout: true),
            )
          ],
        );
      },
    );
  }
}
