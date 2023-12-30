import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tfm_control/shared/widgets/My_button.dart';
import 'package:tfm_control/utils/styles/colors.dart';

import '../../../3.admin/Students/view/widgets/custom_textfield.dart';
import '../manager/payment_cubit.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PaymentCubit(),
      child: BlocConsumer<PaymentCubit, PaymentState>(
        listener: (context, state) {},
        builder: (context, state) {
          PaymentCubit cubit = PaymentCubit.get(context);

          return Scaffold(
            appBar: AppBar(
              title: const Text(
                'Electronic Payment',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: ColorsAsset.kPrimary,
            ),
            body: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    "Total Amount : 12000LE",
                    style: TextStyle(
                        color: ColorsAsset.kPrimary,
                        fontWeight: FontWeight.bold),
                  ),
                  Center(
                    child: Image.asset(
                      'assets/images/compngwingyobdm-fotor-bg-remover-202312293115.png',
                      height: 100,
                    ),
                  ),
                  const SizedBox(height: 20),
                  MyTextField(
                    controller: cubit.cardNumberController,
                    labeltext: 'Card Number',
                  ),
                  const SizedBox(height: 15,),
                  MyTextField(
                    controller: cubit.expiryDateController,
                    labeltext: 'Expiry Date (MM/YY)',
                  ),

                  const SizedBox(height: 15,),
                  MyTextField(
                    controller: cubit.cardHolderNameController,
                    labeltext: 'Card Holder Name',
                  ),
                  const SizedBox(height: 15,),
                  MyTextField(
                    controller: cubit.cvvController,
                    labeltext: "CVV",
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: MyButton(
                      text: 'Submit Payment',
                      onPressed: () {
                        cubit.submitPayment(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
