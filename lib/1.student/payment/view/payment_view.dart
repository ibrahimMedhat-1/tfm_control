import 'package:flutter/material.dart';
import 'package:tfm_control/3.admin/Students/view/widgets/custom_textfield.dart';
import 'package:tfm_control/utils/styles/colors.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
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
            const Text("Total Amount : 12000LE",style: TextStyle(color: ColorsAsset.kPrimary,fontWeight: FontWeight.bold),),
            Center(
              child: Image.asset(
                'assets/images/compngwingyobdm-fotor-bg-remover-202312293115.png',
                height: 100,
              ),
            ),
            const SizedBox(height: 20),

            MyTextField(
              labeltext: 'Card Number',
            ),
            const SizedBox(height: 15,),
            MyTextField(
              labeltext: 'Expiry Date (MM/YY)',
            ),

            const SizedBox(height: 15,),
            MyTextField(
              labeltext: 'Card Holder Name',
            ),
            const SizedBox(height: 15,),
            MyTextField(
              labeltext: "CVV",
            ),
            const SizedBox(height: 15,),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorsAsset.kPrimary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0), // Border radius
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 16),
                  child: Text(
                    'Submit Payment',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
